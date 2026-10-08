## 4.2. Tactical-Level Domain-Driven Design.

El diseño táctico traduce las decisiones tomadas en el diseño estratégico de QualiTrack en estructuras concretas de software dentro de cada Bounded Context. En esta sección se describen las clases principales del dominio, las interfaces que exponen sus capacidades, los servicios de aplicación que coordinan los casos de uso y los elementos de infraestructura responsables de la persistencia y de la integración con otros contextos o servicios externos.

Para cada Bounded Context se presenta un diccionario de los principales elementos que participan en su implementación, indicando su propósito, atributos o responsabilidades relevantes y las relaciones que mantienen con otros elementos. También se incluyen los espacios correspondientes a los diagramas de componentes, diagramas de clases del Domain Layer y diagramas de base de datos.

---

### 4.2.1. Bounded Context: Tracking & Telemetry

Tracking & Telemetry es uno de los Bounded Contexts Core de QualiTrack. Recibe las lecturas y las acciones que los dispositivos IoT sincronizan a través del Edge, las evalúa contra el perfil ambiental vigente y conserva el historial que consultan las aplicaciones y los demás contextos. Es el punto de encuentro entre los dispositivos físicos, el servicio Edge y el backend Cloud.

El modelo se organiza alrededor del agregado `EnvironmentalProfile`, que contiene los rangos permitidos y las reglas de actuación, y de las entidades `Measurement` y `ActuationEvent`. Hay dos tipos de perfil: el de un **ambiente**, que se evalúa con las lecturas de su Dispositivo Ambiental (calidad de aire), y el de un **Monitor de Contenedor** (temperatura, humedad y luminosidad, más sus reglas de actuación). Cuando una lectura empeora el estado de una métrica, el contexto publica un evento para que Compliance & Alerting abra o escale la alerta del incidente.

#### 4.2.1.1. Domain Layer.

Esta capa contiene las reglas del monitoreo ambiental. No depende de controladores REST ni de detalles de base de datos.

**`EnvironmentalProfile` — Aggregate Root**

- **Propósito:** representa la configuración ambiental que el responsable de calidad define para un ambiente o para un Monitor de Contenedor, y que el Edge descarga para aplicarla en el dispositivo.
- **Atributos principales:** `id`, `laboratoryId`, `scope` (`ProfileScope`), `environmentId`, `deviceId`, `version`, `thresholds`, `actuationRules`, `updatedBy` y `updatedAt`.
- **Métodos principales:** `forEnvironment`, `forContainerMonitor`, `replaceThresholds`, `replaceActuationRules` y `evaluate`.
- **Reglas:** cada cambio incrementa `version`, de modo que cada lectura queda asociada a la versión del perfil con la que fue evaluada. Un perfil de ambiente solo configura la calidad de aire; uno de contenedor configura temperatura, humedad, luminosidad y reglas de actuación.

**`Measurement` — Entity**

- **Propósito:** lectura producida por un dispositivo IoT y sincronizada desde el Edge.
- **Atributos principales:** `id`, `laboratoryId`, `environmentId`, `equipmentId`, `parameterName`, `value`, `textValue`, `unit`, `measuredAt`, `state`, `thresholdValue`, `profileVersion` y `receivedAt`.
- **Método principal:** `receive`, que construye la lectura con el resultado de evaluarla contra el perfil vigente.
- **Relaciones:** registra el `EnvironmentalState` obtenido y el límite superado, si lo hubo. Las lecturas de texto (etiqueta RFID) y de detección (movimiento) se guardan sin rangos.

**`ActuationEvent` — Entity**

- **Propósito:** acción física que ejecutó un Monitor de Contenedor (ventilación, enfriamiento o servo) y su resultado.
- **Atributos principales:** `id`, `laboratoryId`, `environmentId`, `deviceId`, `action`, `triggerMetric`, `triggerState`, `result`, `occurredAt`, `profileVersion` y `receivedAt`.
- **Método principal:** `record`.

**Value Objects**

- `EnvironmentalThreshold`: límites normal y crítico de una métrica (`normalMin`, `normalMax`, `criticalMin`, `criticalMax`). Exige `criticalMin < normalMin < normalMax < criticalMax` y su método `evaluate` devuelve un `ThresholdEvaluation`.
- `ThresholdEvaluation`: estado resultante (`state`) y límite superado (`exceededLimit`).
- `ActuationRule`: relaciona una métrica y un estado con la acción automática que ejecuta el contenedor.
- `DeviceConnection`: estado de conexión de un dispositivo, calculado a partir de su última comunicación y del `ExpectedCommunicationPeriod`.
- `ExpectedCommunicationPeriod`: tiempo máximo entre dos comunicaciones antes de que el dispositivo pase a requerir revisión.
- Enumeraciones: `MonitoredMetric` (`AIR_QUALITY`, `MOTION`, `TEMPERATURE`, `HUMIDITY`, `LUMINOSITY`, `RFID_TAG`, cada una con su unidad y el tipo de dispositivo que la reporta), `EnvironmentalState` (`NORMAL`, `WARNING`, `CRITICAL`), `ActuationAction` (`VENTILATION_ON/OFF`, `COOLING_ON/OFF`, `SERVO_OPEN/CLOSE`), `ActuationResult` (`EXECUTED`, `FAILED`), `ProfileScope` (`ENVIRONMENT`, `CONTAINER_MONITOR`) y `DeviceConnectionStatus` (`CONNECTED`, `REQUIRES_REVIEW`).

**Comandos principales**

- `UpdateEnvironmentThresholdsCommand`: reemplaza los rangos del perfil de un ambiente (US56, TS42).
- `UpdateContainerMonitorThresholdsCommand`: reemplaza los rangos de temperatura, humedad y luminosidad de un Monitor de Contenedor (US57, US58, TS43, TS44).
- `UpdateActuationRulesCommand`: reemplaza las reglas de actuación de un Monitor de Contenedor (US59, TS45).
- `RecordMeasurementCommand`: registra una lectura sincronizada desde el Edge (TS54, TS55).
- `RecordActuationEventCommand`: registra una acción ejecutada por un Monitor de Contenedor (TS56).

**Queries principales**

- `GetEnvironmentProfileQuery`, `GetContainerMonitorProfileQuery` y `GetDeviceProfileQuery`: obtienen el perfil de un ambiente, de un contenedor o el que aplica un dispositivo (TS57).
- `GetMeasurementsQuery`: lecturas de un dispositivo en un periodo (TS58, TS59).
- `GetActuationEventsQuery`: acciones ejecutadas por un contenedor en un periodo (TS60).
- `GetDeviceConnectionQuery`: estado de conexión de un dispositivo (US55, TS41).

**Eventos de dominio**

- `MeasurementRecordedEvent`: se registró una lectura.
- `EnvironmentalDeviationDetectedEvent`: una lectura empeoró el estado de una métrica (de `NORMAL` a `WARNING`, o a `CRITICAL`).
- `EnvironmentalConditionNormalizedEvent`: una métrica volvió a `NORMAL` después de una desviación.
- `EnvironmentalProfileUpdatedEvent`: cambiaron los rangos o las reglas de un perfil.

**Repository Interfaces**

- `EnvironmentalProfileRepository`.
- `MeasurementRepository`.
- `ActuationEventRepository`.

#### 4.2.1.2. Interface Layer.

La Interface Layer expone Tracking & Telemetry a la Web Application, la Mobile Application y el Edge Service, y traduce las solicitudes a Commands y Queries del Application Layer.

**`EnvironmentTelemetryController`** — `/api/v1/laboratories/{laboratoryId}/environments/{environmentId}`

- `GET /environmental-profile` y `PUT /environmental-profile/thresholds`: consulta y configura el perfil del ambiente.
- `POST /telemetry-measurements` y `GET /telemetry-measurements`: registra (Edge) y consulta las lecturas del Dispositivo Ambiental.

**`ContainerMonitorTelemetryController`** — `.../environments/{environmentId}/container-monitors/{deviceId}`

- `GET /environmental-profile`, `PUT /environmental-profile/thresholds` y `PUT /environmental-profile/actuation-rules`: perfil del Monitor de Contenedor.
- `POST` y `GET /telemetry-measurements`: lecturas del contenedor.
- `POST` y `GET /actuation-events`: acciones ejecutadas por el contenedor.

**`DeviceTrackingController`** — `.../environments/{environmentId}/devices/{deviceId}`

- `GET /telemetry-status`: estado de conexión del dispositivo (TS41).
- `GET /environmental-profile`: perfil vigente que el Edge sincroniza para el dispositivo (TS57).

**Resources y assemblers**

- Resources: `EnvironmentalProfileResource`, `ThresholdResource`, `ActuationRuleResource`, `UpdateThresholdsResource`, `UpdateActuationRulesResource`, `MeasurementResource`, `RecordMeasurementResource`, `ActuationEventResource`, `RecordActuationEventResource` y `DeviceTelemetryStatusResource`.
- Assemblers: `EnvironmentalProfileCommandFromResourceAssembler`, `EnvironmentalProfileResourceFromEntityAssembler`, `RecordMeasurementCommandFromResourceAssembler`, `MeasurementResourceFromEntityAssembler`, `RecordActuationEventCommandFromResourceAssembler`, `ActuationEventResourceFromEntityAssembler` y `TelemetryResponseAssembler`. Los valores inválidos se convierten en respuestas `400` mediante `TrackingRequestValues`.

**`TrackingContextFacade` e integration events**

- La fachada expone a otros contextos las lecturas de un ambiente (`findMeasurements`) y las acciones de un dispositivo o ambiente (`findActuations`, `findEnvironmentActuations`), sin dar acceso a los repositorios.
- Los eventos de integración `MeasurementRecordedIntegrationEvent`, `EnvironmentalDeviationDetectedIntegrationEvent`, `EnvironmentalConditionNormalizedIntegrationEvent` y `EnvironmentalProfileUpdatedIntegrationEvent` son el contrato publicado hacia Compliance & Alerting y Reporting & Audit.

#### 4.2.1.3. Application Layer.

**Command Service**

- `TrackingCommandService` / `TrackingCommandServiceImpl`: actualiza perfiles y registra lecturas y acciones. Al registrar una lectura la evalúa con el perfil vigente, compara el estado con el anterior de esa métrica y publica `EnvironmentalDeviationDetectedEvent` si empeora, o `EnvironmentalConditionNormalizedEvent` si vuelve a `NORMAL`.

**Query Service**

- `TrackingQueryService` / `TrackingQueryServiceImpl`: resuelve perfiles, lecturas, acciones y el estado de conexión del dispositivo.

**Event Handlers**

- `MeasurementRecordedEventHandler`: publica las lecturas registradas para los demás contextos.
- `EnvironmentalDeviationDetectedEventHandler`: entrega la desviación a Compliance & Alerting, que abre o escala la alerta.
- `EnvironmentalConditionNormalizedEventHandler`: entrega la normalización a Compliance & Alerting para registrarla en la alerta abierta.
- `EnvironmentalProfileUpdatedEventHandler`: publica el cambio de perfil para que Reporting & Audit registre quién cambió la configuración.

**ACL**

- `TrackingExternalEquipmentService`: consulta Equipment Management para validar la identidad, el tipo y la ubicación del dispositivo IoT.
- `TrackingContextFacadeImpl`: implementa la fachada del contexto.

#### 4.2.1.4. Infrastructure Layer.

- **Persistence Entities:** `EnvironmentalProfilePersistenceEntity` (con `ThresholdEmbeddable` y `ActuationRuleEmbeddable`), `MeasurementPersistenceEntity` y `ActuationEventPersistenceEntity`.
- **Spring Data JPA Repositories:** `EnvironmentalProfilePersistenceRepository`, `MeasurementPersistenceRepository` y `ActuationEventPersistenceRepository`.
- **Repository Adapters:** `EnvironmentalProfileRepositoryImpl`, `MeasurementRepositoryImpl` y `ActuationEventRepositoryImpl`, que implementan las interfaces del dominio.
- **Persistence Assemblers:** `EnvironmentalProfilePersistenceAssembler`, `MeasurementPersistenceAssembler` y `ActuationEventPersistenceAssembler`.
- **Configuración:** `TrackingConfiguration` define el `ExpectedCommunicationPeriod` usado para decidir cuándo un dispositivo requiere revisión (5 minutos por defecto, configurable con `tracking.devices.expected-communication-period`).

#### 4.2.1.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Tracking & Telemetry** dentro del **Cloud REST API** de QualiTrack. Recibe la telemetría del Edge REST API y las consultas de la Single-Page Application y la Mobile Application, resuelve el ambiente de cada dispositivo con Equipment Management y notifica las desviaciones a Compliance & Alerting.

Se utiliza la vista de Structurizr **`Components-Tracking`**, definida sobre el container `Cloud REST API`.

![Tracking & Telemetry Component Diagram](../assets/img/chapter-iv/Components-Tracking.png)

#### 4.2.1.6. Bounded Context Software Architecture Code Level Diagrams.

Los diagramas de nivel de código presentan con mayor detalle la implementación del contexto Tracking & Telemetry: las clases del Domain Layer y el esquema relacional que persiste perfiles, lecturas y acciones.

##### 4.2.1.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama de clases muestra `EnvironmentalProfile` como Aggregate Root con sus `EnvironmentalThreshold` y `ActuationRule`, las entidades `Measurement` y `ActuationEvent`, los Value Objects y enumeraciones del contexto, y sus Commands, Queries, eventos e interfaces de repositorio.

![Tracking & Telemetry Domain Layer Class Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-report/develop/docs/diagrams/domain/tracking-domain-layer-class-diagram.puml&fmt=svg&v=4)

##### 4.2.1.6.2. Bounded Context Database Design Diagram.

El diagrama de base de datos muestra las tablas de perfiles ambientales, con sus rangos y reglas de actuación, de lecturas y de acciones ejecutadas. Los identificadores de laboratorio, ambiente y dispositivo relacionan la información con Laboratory Management y Equipment Management sin duplicar sus modelos.

![Tracking & Telemetry Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/tracking/tracking-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.2. Bounded Context: Compliance & Alerting

Compliance & Alerting es el segundo Bounded Context Core de QualiTrack. Su responsabilidad es transformar las desviaciones relevantes detectadas por otros contextos en alertas que puedan ser atendidas, reconocidas y resueltas. También mantiene eventos de cumplimiento y preferencias de notificación.

La separación entre Tracking & Telemetry y Compliance & Alerting es importante: una medición, un estado ambiental o una actuación física pertenecen a Tracking & Telemetry; el ciclo de vida de la alerta pertenece a Compliance & Alerting.

#### 4.2.2.1. Domain Layer.

**`DeviationAlert` — Aggregate Root**

- **Propósito:** representa una desviación que requiere seguimiento dentro de QualiTrack.
- **Atributos principales:** `id`, `equipmentId`, `batchId`, `parameterName`, `recordedValue`, `thresholdValue`, `unit`, `timestamp`, `severity`, `status`, `acknowledgedBy`, `resolvedBy` y `resolutionNotes`.
- **Métodos principales:** `acknowledge`, `resolve`, `isUnresolved` e `isCritical`.
- **Relaciones:** utiliza `AlertSeverity` y `AlertStatus`. Puede estar relacionada con un equipo y, cuando corresponde, con un lote de producto.

**`ComplianceEvent` — Entity**

- **Propósito:** conserva un hecho relevante relacionado con cumplimiento o calidad.
- **Atributos principales:** `id`, `relatedEntityId`, `eventType`, `description`, `timestamp` y `resolvedBy`.
- **Métodos principales:** `isResolved`, `isUnresolved` y `resolve`.
- **Relaciones:** utiliza `ComplianceEventType` para identificar el tipo de evento registrado.

**`NotificationPreference` — Entity**

- **Propósito:** mantiene las preferencias del usuario sobre los canales y severidad mínima de las notificaciones.
- **Atributos principales:** `userId`, `emailEnabled`, `smsEnabled`, `inAppEnabled` y `minimumSeverity`.
- **Método principal:** `update`.

**`AlertSeverity` — Enumeration**

- **Valores:** `LOW`, `WARNING` y `CRITICAL`.

**`AlertStatus` — Enumeration**

- **Valores:** `UNRESOLVED`, `ACKNOWLEDGED` y `RESOLVED`.
- **Propósito:** controla el ciclo de vida de la alerta. Reconocer una alerta no significa resolver la desviación que la originó.

**`ComplianceEventType` — Enumeration**

Permite clasificar eventos como creación, reconocimiento y resolución de alertas, cambios relevantes de lotes, bajo stock, vencimiento de calibración y otras situaciones que requieren trazabilidad.

**Comandos principales**

- `CreateDeviationAlertCommand`.
- `AcknowledgeAlertCommand`.
- `ResolveAlertCommand`.
- `UpdateNotificationPreferenceCommand`.

**Queries principales**

- `GetAlertsQuery`.
- `GetAlertByIdQuery`.
- `GetComplianceEventsByRelatedEntityIdQuery`.
- `GetNotificationPreferenceByUserIdQuery`.

**Eventos principales**

- `DeviationAlertCreatedEvent`.
- `DeviationAlertAcknowledgedEvent`.
- `DeviationAlertResolvedEvent`.
- `NotificationPreferenceUpdatedEvent`.

**Repository Interfaces**

- `DeviationAlertRepository`.
- `ComplianceEventRepository`.
- `NotificationPreferenceRepository`.

#### 4.2.2.2. Interface Layer.

Esta capa expone las capacidades necesarias para consultar y atender alertas, consultar eventos de cumplimiento y administrar preferencias de notificación.

**`DeviationAlertController`**

- Permite crear y consultar alertas.
- Permite registrar el reconocimiento de una alerta.
- Permite registrar la resolución y sus notas.
- Utiliza `CaCommandService` y `CaQueryService` para no colocar reglas de negocio dentro del controlador.

**`ComplianceEventController`**

- Expone la consulta de eventos de cumplimiento relacionados con una entidad.

**`NotificationPreferenceController`**

- Permite consultar y actualizar las preferencias de notificación del usuario.

**Resources y Assemblers principales**

- `CreateDeviationAlertResource` y `CreateDeviationAlertCommandFromResourceAssembler`.
- `DeviationAlertResource` y `DeviationAlertResourceFromEntityAssembler`.
- `AcknowledgeAlertResource` y `AcknowledgeAlertCommandFromResourceAssembler`.
- `ResolveAlertResource` y `ResolveAlertCommandFromResourceAssembler`.
- `ComplianceEventResource` y `ComplianceEventResourceFromEntityAssembler`.
- `NotificationPreferenceResource` y `NotificationPreferenceResourceFromEntityAssembler`.
- `UpdateNotificationPreferenceResource` y `UpdateNotificationPreferenceCommandFromResourceAssembler`.

**`ComplianceContextFacade`**

Expone operaciones controladas hacia otros contextos, por ejemplo registrar eventos de bajo stock o consultar si las condiciones de cumplimiento permiten liberar un lote.

#### 4.2.2.3. Application Layer.

**Command Service**

- `CaCommandService` define los casos de uso para crear, reconocer y resolver alertas, además de actualizar preferencias.
- `CaCommandServiceImpl` coordina repositorios, validaciones e integración con otros contextos.

**Query Service**

- `CaQueryService` define consultas de alertas, eventos y preferencias.
- `CaQueryServiceImpl` implementa las consultas utilizando los repositorios del dominio.

**Event Handlers**

- `TelemetryAnomalyDetectedComplianceEventHandler`: transforma una anomalía proveniente de Tracking & Telemetry en una alerta cuando corresponde.
- `RawMaterialLowStockComplianceEventHandler`: registra evidencia relacionada con stock bajo cuando el evento es recibido.
- `CalibrationExpiredEventHandler`: procesa eventos de calibración vencida provenientes de Equipment Management.
- `BatchRejectedComplianceEventHandler` y `BatchReleasedComplianceEventHandler`: registran cambios relevantes de lotes.
- `DeviationAlertCreatedEventHandler`, `DeviationAlertAcknowledgedEventHandler` y `DeviationAlertResolvedEventHandler`: publican las integraciones relacionadas con el ciclo de vida de una alerta.
- `NotificationPreferenceUpdatedEventHandler`: procesa la actualización de preferencias.

**ACL consumidas**

- `CaExternalEquipmentService`: valida equipos mediante Equipment Management.
- `CaExternalBatchService`: valida lotes mediante Product Batch Management.

El Application Layer mantiene separado el significado de una alerta de los modelos internos de telemetría, equipos y lotes.

#### 4.2.2.4. Infrastructure Layer.

**Persistence Entities**

- `DeviationAlertPersistenceEntity`.
- `ComplianceEventPersistenceEntity`.
- `NotificationPreferencePersistenceEntity`.

**Persistence Repositories**

- `DeviationAlertPersistenceRepository`.
- `ComplianceEventPersistenceRepository`.
- `NotificationPreferencePersistenceRepository`.

**Repository Adapters**

- `DeviationAlertRepositoryImpl`.
- `ComplianceEventRepositoryImpl`.
- `NotificationPreferenceRepositoryImpl`.

**Persistence Assemblers**

- `DeviationAlertPersistenceAssembler`.
- `ComplianceEventPersistenceAssembler`.
- `NotificationPreferencePersistenceAssembler`.

**Converters**

- `AlertSeverityPersistenceConverter`.
- `AlertStatusPersistenceConverter`.
- `ComplianceEventTypePersistenceConverter`.

Las notificaciones por correo o push se consideran integraciones técnicas del contexto. Estas integraciones deben recibir la información de la alerta desde Application Layer y no incorporar reglas de negocio propias sobre severidad o resolución.

#### 4.2.2.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Compliance & Alerting** dentro del **Cloud REST API** de QualiTrack. El contexto concentra el seguimiento de desviaciones y alertas y mantiene relaciones con los componentes que le proporcionan información de telemetría, equipos y lotes, además de Reporting & Audit para conservar evidencia de los eventos relevantes.

Para esta entrega se utiliza la vista de Structurizr **`Components-Compliance`**, definida sobre el container `Cloud REST API`. La vista corresponde al C4 actual del proyecto y posteriormente podrá ser refinada para evidenciar con mayor detalle los controladores, servicios de aplicación, modelo de dominio y adapters del contexto.

![Compliance & Alerting Component Diagram](../assets/img/chapter-iv/Components-Compliance.png)

#### 4.2.2.6. Bounded Context Software Architecture Code Level Diagrams.

Los diagramas de nivel de código muestran el ciclo completo de una alerta y las estructuras utilizadas para conservar la evidencia de cumplimiento.

##### 4.2.2.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama muestra `DeviationAlert` como Aggregate Root, además de `ComplianceEvent`, `NotificationPreference`, las enumeraciones de severidad y estado, Commands, Queries, eventos e interfaces de repositorio.

![Compliance & Alerting Domain Layer Class Diagram](../assets/img/chapter-iv/ca-domain-layer-class-diagram.png)

##### 4.2.2.6.2. Bounded Context Database Design Diagram.

El diagrama de base de datos representa la persistencia de alertas, eventos de cumplimiento y preferencias de notificación. Las referencias a equipos, lotes y usuarios se mantienen mediante identificadores para evitar duplicar las entidades que pertenecen a otros Bounded Contexts.

![Compliance & Alerting Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/ca/ca-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.3. Bounded Context: Equipment Management

Equipment Management administra los equipos físicos, instrumentos y dispositivos IoT registrados en QualiTrack. Es la fuente de verdad sobre la identidad del equipo, su estado operativo, su vínculo con un laboratorio o ambiente y sus mantenimientos. Las mediciones generadas por estos equipos no pertenecen a este contexto; son responsabilidad de Tracking & Telemetry.

#### 4.2.3.1. Domain Layer.

**`Equipment` — Aggregate Root**

- **Propósito:** representa un equipo o dispositivo físico registrado en un laboratorio.
- **Atributos principales:** `id`, `labId`, `name`, `type`, `model`, `serialNumber`, `status` y `sensorExternalId`.
- **Métodos principales:** `linkSensor` y `updateStatus`.
- **Relaciones:** utiliza `EquipmentType`, `EquipmentStatus` y `DeviceId`. La referencia `labId` se valida contra Laboratory Management.

**`MaintenanceRecord` — Aggregate Root**

- **Propósito:** registra una intervención de mantenimiento realizada sobre un equipo.
- **Atributos principales:** `id`, `equipmentId`, `maintenanceDate`, `technicianName`, `description` y `type`.
- **Relaciones:** utiliza `MaintenanceType` y se asocia al equipo mediante `equipmentId`.

**`BpmParameterConfig` — Entity**

- **Propósito:** mantiene una configuración de límites para una variable crítica asociada a un equipo.
- **Atributos principales:** `equipmentId`, `parameterName`, `minValue`, `maxValue` y `unit`.
- **Método principal:** `updateLimits`.
- **Relaciones:** utiliza `CriticalVariable`.

En la evolución IoT, los límites estrictamente ambientales y las reglas de actuación se concentran en Tracking & Telemetry. `BpmParameterConfig` se mantiene como parte del modelo actual de Equipment Management para compatibilidad con la implementación existente y para configuraciones asociadas al equipo.

**Value Objects y Enumerations**

- `EquipmentType`: identifica el tipo de equipo.
- `CriticalVariable`: identifica una variable controlada.
- `DeviceId`: representa el identificador externo del dispositivo o sensor asociado.
- `EquipmentStatus`: `OPERATIONAL`, `MAINTENANCE`, `OUT_OF_SERVICE` e `INACTIVE`.
- `MaintenanceType`: `PREVENTIVE`, `CORRECTIVE`, `CALIBRATION`, `INSPECTION` y `OTHER`.
- `DeviationSeverity`: niveles de severidad asociados a desviaciones del equipo.

**Commands principales**

- `RegisterEquipmentCommand`.
- `LinkSensorCommand`.
- `ConfigureBpmParametersCommand`.
- `RegisterMaintenanceCommand`.

**Queries principales**

- `GetEquipmentByIdQuery`.
- `GetEquipmentByLabIdQuery`.
- `GetEquipmentByDeviceIdQuery`.
- `GetCalibrationAlertsByLabIdQuery`.
- `GetBpmParameterConfigsByEquipmentIdQuery`.
- `GetMaintenanceByEquipmentIdQuery`.

**Eventos principales**

- `EquipmentRegisteredEvent`.
- `SensorLinkedEvent`.
- `BpmParameterConfiguredEvent`.
- `CalibrationExpiredEvent`.
- `MaintenanceRegisteredEvent`.

**Repository Interfaces**

- `EquipmentRepository`.
- `BpmParameterConfigRepository`.
- `MaintenanceRepository`.

#### 4.2.3.2. Interface Layer.

**`EquipmentController`**

Gestiona las operaciones relacionadas con el registro y consulta de equipos y con la vinculación del dispositivo físico.

**`EquipmentBpmConfigController`**

Expone las operaciones para consultar y mantener configuraciones de parámetros del equipo.

**`EquipmentMaintenanceController`**

Expone las operaciones de registro y consulta del historial de mantenimiento.

**Resources principales**

- `RegisterEquipmentResource`.
- `EquipmentResource`.
- `ConfigureBpmResource`.
- `BpmParameterConfigResource`.
- `RegisterMaintenanceResource`.
- `MaintenanceRecordResource`.

**Assemblers principales**

- `RegisterEquipmentCommandFromResourceAssembler`.
- `EquipmentResourceFromEntityAssembler`.
- `ConfigureBpmCommandFromResourceAssembler`.
- `BpmConfigResourceFromEntityAssembler`.
- `RegisterMaintenanceCommandFromResourceAssembler`.
- `MaintenanceResourceFromEntityAssembler`.

#### 4.2.3.3. Application Layer.

**Command Services**

- `EquipmentCommandService` / `EquipmentCommandServiceImpl`: coordina registro de equipos y vinculación del sensor o dispositivo.
- `BpmConfigCommandService` / `BpmConfigCommandServiceImpl`: coordina la configuración de parámetros.
- `MaintenanceCommandService` / `MaintenanceCommandServiceImpl`: registra las operaciones de mantenimiento.

**Query Services**

- `EquipmentQueryService` / `EquipmentQueryServiceImpl`.
- `BpmConfigQueryService` / `BpmConfigQueryServiceImpl`.
- `MaintenanceQueryService` / `MaintenanceQueryServiceImpl`.

**Event Handlers**

- `EquipmentRegisteredEventHandler`.
- `SensorLinkedEventHandler`.
- `BpmParameterConfiguredEventHandler`.
- `CalibrationExpiryEventHandler`.
- `MaintenanceRegisteredEventHandler`.

**ACL consumida**

- `ExternalLabService`: utiliza `LaboratoryContextFacade` para comprobar que el laboratorio o ambiente relacionado exista antes de registrar el equipo.

#### 4.2.3.4. Infrastructure Layer.

La persistencia se implementa mediante Spring Data JPA y adapters separados del modelo de dominio.

**Persistence Entities**

- `EquipmentPersistenceEntity`.
- `BpmParameterConfigPersistenceEntity`.
- `MaintenancePersistenceEntity`.

**Persistence Repositories**

- `EquipmentPersistenceRepository`.
- `BpmParameterConfigPersistenceRepository`.
- `MaintenancePersistenceRepository`.

**Repository Adapters**

- `EquipmentRepositoryImpl`.
- `BpmParameterConfigRepositoryImpl`.
- `MaintenanceRepositoryImpl`.

**Persistence Assemblers**

- `EquipmentPersistenceAssembler`.
- `BpmParameterConfigPersistenceAssembler`.
- `MaintenancePersistenceAssembler`.

**Converters**

- `DeviceIdPersistenceConverter`.
- `EquipmentStatusPersistenceConverter`.
- `EquipmentTypePersistenceConverter`.

#### 4.2.3.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Equipment Management** dentro del **Cloud REST API**. Este Bounded Context mantiene la información de los equipos y dispositivos registrados y se relaciona con Laboratory Management para validar su pertenencia a una organización, con Tracking & Telemetry para asociar la información generada por los dispositivos y con otros contextos que requieren conocer su estado.

Para esta entrega se utiliza la vista de Structurizr **`Components-Equipment`**, definida sobre el container `Cloud REST API`. La vista refleja el C4 disponible actualmente y será detallada posteriormente a medida que se refine la descomposición interna del contexto.

![Equipment Management Component Diagram](../assets/img/chapter-iv/Components-Equipment.png)

#### 4.2.3.6. Bounded Context Software Architecture Code Level Diagrams.

##### 4.2.3.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama de clases representa `Equipment`, `MaintenanceRecord` y `BpmParameterConfig`, junto con sus Value Objects, enumeraciones, Commands, Queries, eventos y repositorios.

![Equipment Management Domain Layer Class Diagram](../assets/img/chapter-iv/equipment-domain-layer-class-diagram.png)

##### 4.2.3.6.2. Bounded Context Database Design Diagram.

El diagrama de base de datos representa las tablas de equipos, configuraciones de parámetros y mantenimientos. Las referencias al laboratorio se conservan mediante identificadores y no mediante una copia del modelo de Laboratory Management.

![Equipment Management Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/equipment/equipment-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.4. Bounded Context: Laboratory Management

Laboratory Management administra la organización física sobre la que opera QualiTrack: el laboratorio o almacén farmacéutico, sus **ambientes** (laboratorio, producción, almacén de materia prima, almacén de producto) y su **personal**. Los demás contextos ubican sus registros en estos ambientes: los equipos y nodos IoT, el inventario, los lotes y la telemetría.

El contexto conserva además un catálogo heredado de materias primas (`RawMaterial`) de la versión inicial. Ese catálogo es de solo lectura y existe para que Inventory Management importe de forma explícita los saldos iniciales. Las altas, recepciones y consumos nuevos pertenecen a Inventory Management, y los productos farmacéuticos, a Product Batch Management.

#### 4.2.4.1. Domain Layer.

**`Laboratory` — Aggregate Root**

- **Propósito:** representa la organización registrada en QualiTrack por el responsable de calidad durante la configuración inicial.
- **Atributos principales:** `id`, `name` (`LaboratoryName`), `ruc`, `address` (`LaboratoryAddress`), `phone`, `regulations` y `status`.
- **Método principal:** `updateProfile`.

**`Environment` — Aggregate Root**

- **Propósito:** zona del laboratorio o almacén que QualiTrack supervisa, identificada por un código y con un uso principal.
- **Atributos principales:** `id`, `laboratoryId`, `code`, `name`, `description`, `usage` (`EnvironmentUsage`), `usageAssignedBy` y `usageAssignedAt`.
- **Métodos principales:** `update`, `assignUsage` y `belongsTo`.
- **Reglas:** el código se normaliza al registrarse y el ambiente empieza sin uso. El uso puede cambiar, pero no reasignarse al mismo valor. Inventory Management y Product Batch Management usan `usage` para validar dónde se guardan los lotes (almacén de materia prima o de producto).

**`StaffMember` — Aggregate Root**

- **Propósito:** persona del personal del laboratorio. Al registrarla, el responsable de calidad le crea una cuenta para iniciar sesión (US34, TS19).
- **Atributos principales:** `id`, `laboratoryId`, `fullName`, `role`, `email`, `active`, `accessRole` (`StaffAccessRole`) y `userId`.
- **Métodos principales:** `linkAccount`, `rename`, `changeEmail`, `belongsTo` y `deactivate`.

**`RawMaterial` — Aggregate Root heredado**

- **Propósito:** saldo de materia prima registrado antes de que existiera Inventory Management. Se consulta en solo lectura y se importa una única vez hacia Inventory Management.
- **Atributos principales:** `id`, `laboratoryId`, `code`, `name`, `unit`, `currentStock` y `minimumThreshold`.

**Entity y Value Objects**

- `LaboratoryAddress`: `street`, `city` y `country`.
- `LaboratoryName`, `Regulation` y `StockQuantity`.
- `EnvironmentUsage`: `LABORATORY`, `PRODUCTION`, `RAW_MATERIAL_STORAGE`, `PRODUCT_STORAGE` y `OTHER`.
- `LaboratoryStatus`: `ACTIVE` e `INACTIVE`.
- `StaffAccessRole`: `OPERATOR` y `AUDITOR`. Define lo que puede hacer en la plataforma la cuenta del personal.

**Commands principales**

- `CreateLaboratoryCommand` y `UpdateLaboratoryCommand`.
- `RegisterEnvironmentCommand`, `UpdateEnvironmentCommand` y `AssignEnvironmentUsageCommand` (US30, US31).
- `RegisterStaffCommand` y `DeactivateStaffCommand`.
- `CreateRawMaterialCommand` (catálogo heredado).

**Queries principales**

- `GetLaboratoryByIdQuery`.
- `GetEnvironmentsByLaboratoryIdQuery` y `GetEnvironmentByIdQuery`.
- `GetStaffByLabIdQuery`, `GetStaffMemberByIdQuery` y `GetStaffMemberByUserIdQuery`.
- `GetRawMaterialsByLabIdQuery` y `GetLowStockMaterialsByLabIdQuery` (catálogo heredado).

**Eventos de dominio**

- `LaboratoryRegisteredEvent`.
- `EnvironmentRegisteredEvent`, `EnvironmentUpdatedEvent` y `EnvironmentUsageAssignedEvent`.
- `StaffRegisteredEvent` y `StaffDeactivatedEvent`.
- `RawMaterialCreatedEvent` y `RawMaterialLowStockEvent`.

**Repository Interfaces**

- `LaboratoryRepository`, `EnvironmentRepository`, `StaffRepository` y `RawMaterialRepository`.

#### 4.2.4.2. Interface Layer.

**REST controllers**

- `LaboratoryController` — `/api/v1/laboratories`: registra, consulta y actualiza el laboratorio.
- `LaboratoryEnvironmentsController` — `/api/v1/laboratories/{laboratoryId}/environments`: registra, lista, consulta y actualiza los ambientes, y asigna su uso con `POST /{environmentId}/usage-assignments`.
- `LaboratoryStaffController` — `/api/v1/laboratories/{laboratoryId}/staff`: registra al personal, lo lista o consulta y lo desactiva con `POST /{staffId}/deactivations`.
- `LaboratoryRawMaterialsController` — `/api/v1/laboratories/{laboratoryId}/raw-materials`: vista de solo lectura del catálogo heredado.

**Assemblers principales**

- `CreateLaboratoryCommandFromResourceAssembler`, `UpdateLaboratoryCommandFromResourceAssembler` y `LaboratoryResourceFromEntityAssembler`.
- `RegisterEnvironmentCommandFromResourceAssembler`, `UpdateEnvironmentCommandFromResourceAssembler`, `AssignEnvironmentUsageCommandFromResourceAssembler` y `EnvironmentResourceFromEntityAssembler`.
- `RegisterStaffCommandFromResourceAssembler` y `StaffResourceFromEntityAssembler`.
- `RawMaterialResourceFromEntityAssembler`.

**Fachadas e integration events**

- `LaboratoryContextFacade`: permite que otros contextos validen el laboratorio y sus ambientes (`existsEnvironment`, `findEnvironment`, `findEnvironments`) y resuelvan al personal (`findStaffMember`, `findStaffMemberByAccount`).
- `LegacyInventoryFacade`: entrega los saldos heredados (`materials`) y los bloquea al importarlos (`lock`) hacia Inventory Management.
- `LaboratoryTenantResourceLookup`: permite verificar que un recurso pertenezca al laboratorio del usuario autenticado.
- Integration events: `LaboratoryRegisteredIntegrationEvent`, `EnvironmentRegisteredIntegrationEvent`, `EnvironmentUpdatedIntegrationEvent`, `EnvironmentUsageAssignedIntegrationEvent`, `StaffRegisteredIntegrationEvent`, `StaffDeactivatedIntegrationEvent`, `RawMaterialCreatedIntegrationEvent` y `RawMaterialLowStockIntegrationEvent`.

#### 4.2.4.3. Application Layer.

**Command Services**

- `LaboratoryCommandService` / `LaboratoryCommandServiceImpl`.
- `LaboratoryOnboardingService` / `LaboratoryOnboardingServiceImpl`: crea el laboratorio y lo asocia al responsable de calidad en una sola operación, después de verificar su suscripción vigente.
- `EnvironmentCommandService` / `EnvironmentCommandServiceImpl`.
- `StaffCommandService` / `StaffCommandServiceImpl`: registra al personal y le crea su cuenta mediante IAM.
- `RawMaterialCommandService` / `RawMaterialCommandServiceImpl` (catálogo heredado).

**Query Services**

- `LaboratoryQueryService`, `EnvironmentQueryService`, `StaffQueryService` y `RawMaterialQueryService`, con sus implementaciones.

**Event Handlers**

- `LaboratoryRegisteredEventHandler`, `EnvironmentRegisteredEventHandler`, `EnvironmentUpdatedEventHandler`, `EnvironmentUsageAssignedEventHandler`, `StaffRegisteredEventHandler`, `StaffDeactivatedEventHandler`, `RawMaterialCreatedEventHandler` y `RawMaterialLowStockEventHandler`: publican los eventos de integración correspondientes.
- `StaffAccountSynchronizationEventHandler`: mantiene alineado al personal con su cuenta y su perfil. Escucha los cambios de correo de IAM y los cambios de nombre de Profile Management (`ProfileUpdatedIntegrationEvent`).

**ACL**

- `ExternalIamService`: crea y deshabilita las cuentas del personal en IAM.
- `LaboratoryExternalComplianceService`: comunica a Compliance & Alerting los avisos de bajo stock del catálogo heredado.
- `LaboratoryContextFacadeImpl` y `LegacyInventoryFacadeImpl`: implementan las fachadas del contexto.

#### 4.2.4.4. Infrastructure Layer.

- **Persistence Entities, Spring Data JPA Repositories y Assemblers** para `Laboratory`, `Environment`, `StaffMember` y `RawMaterial`.
- **Repository Adapters:** `LaboratoryRepositoryImpl`, `EnvironmentRepositoryImpl`, `StaffRepositoryImpl` y `RawMaterialRepositoryImpl`.
- **Converters:** `EnvironmentUsagePersistenceConverter`, `LaboratoryAddressPersistenceConverter`, `LaboratoryStatusPersistenceConverter` y `RegulationPersistenceConverter`.

#### 4.2.4.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta **Laboratory Management** dentro del **Cloud REST API**. La Single-Page Application registra en este contexto la instalación, sus ambientes y su personal. El contexto verifica el plan vigente con Payments & Subscriptions, crea las cuentas del personal con IAM y sirve de referencia para Inventory, Equipment, Product Batch, Tracking y Profile.

Se utiliza la vista de Structurizr **`Components-Laboratory`**, definida sobre el container `Cloud REST API`.

![Laboratory Management Component Diagram](../assets/img/chapter-iv/Components-Laboratory.png)

#### 4.2.4.6. Bounded Context Software Architecture Code Level Diagrams.

Los diagramas de nivel de código presentan las clases del Domain Layer de Laboratory Management y el esquema relacional que persiste laboratorios, ambientes, personal y el catálogo heredado.

##### 4.2.4.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama muestra los Aggregates `Laboratory`, `Environment`, `StaffMember` y `RawMaterial`, la entidad `LaboratoryAddress`, sus Value Objects y enumeraciones, y los Commands, Queries, eventos e interfaces de repositorio del contexto.

![Laboratory Management Domain Layer Class Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-report/develop/docs/diagrams/domain/laboratory-domain-layer-class-diagram.puml&fmt=svg&v=4)

##### 4.2.4.6.2. Bounded Context Database Design Diagram.

El diagrama de base de datos muestra las tablas de laboratorios, ambientes, personal y materias primas heredadas, relacionadas mediante el identificador del laboratorio.

![Laboratory Management Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/laboratory/laboratory-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.5. Bounded Context: Inventory Management

Inventory Management administra el catálogo actual de materias primas, las recepciones por lote, sus estados, las cantidades disponibles y el historial de movimientos. Este contexto es la fuente de verdad del stock utilizable de materias primas.

El stock no se mantiene como un número independiente que pueda quedar desactualizado. Se obtiene a partir de los lotes de materia prima que se encuentran habilitados y conservan cantidad disponible.

#### 4.2.5.1. Domain Layer.

**`RawMaterial` — Aggregate Root**

- **Propósito:** representa el catálogo actual de una materia prima dentro de un laboratorio.
- **Atributos principales:** `id`, `laboratoryId`, `code`, `name`, `unit` y `minimumStock`.
- **Método principal:** `usableStock`, que calcula la cantidad utilizable a partir de los lotes recibidos.
- **Relaciones:** puede tener múltiples `RawMaterialBatch` identificados mediante `rawMaterialId`.

**`RawMaterialBatch` — Aggregate Root**

- **Propósito:** representa una recepción o lote específico de una materia prima.
- **Atributos principales:** `laboratoryId`, `rawMaterialId`, `supplier`, `batchNumber`, `unit`, `initialAmount`, `availableAmount`, `receivedOn`, `expiresOn` y `status`.
- **Métodos principales:** `receive`, `isUsableOn`, `release`, `observe`, `reject` y `consume`.
- **Reglas relevantes:** solo los lotes `RELEASED`, con cantidad positiva y dentro de su periodo válido, pueden ser consumidos. No se realiza conversión implícita entre unidades diferentes.

**`InventoryMovement` — Entity / Record de dominio**

- **Propósito:** conserva el historial de cambios que afectan al inventario.
- **Información principal:** material, lote recibido, lote de producto relacionado, tipo de movimiento, cantidad, stock anterior, stock posterior, estados, motivo, actor y momento de la operación.
- **Regla:** el historial es append-only; no se utiliza para reemplazar el estado actual del lote sino para explicar cómo cambió.

**`RawMaterialBatchStatus` — Enumeration**

- **Valores:** `QUARANTINED`, `RELEASED`, `OBSERVED` y `REJECTED`.
- **Reglas:** una recepción inicia en cuarentena; debe ser revisada antes de liberarse. Los lotes observados o rechazados no se consideran stock utilizable.

**`MaterialStockSummary` — Value Object / Read Model**

- **Propósito:** resume material, stock utilizable, stock físico y datos necesarios para mostrar el estado actual del inventario.

**`ReceiptConsumption` — Value Object**

- **Propósito:** representa el resultado de consumir una cantidad específica de un lote de materia prima para un lote de producto.

**Commands principales**

- `SaveRawMaterialCommand`.
- `ReceiveRawMaterialBatchCommand`.
- `ReviewRawMaterialBatchCommand`.
- `ConsumeRawMaterialBatchCommand`.

**Queries principales**

- `GetInventoryMaterialsQuery`.
- `GetMaterialReceiptsQuery`.
- `GetMaterialMovementsQuery`.
- `GetPendingLegacyMaterialsQuery`.

**Repository Interface**

- `InventoryRepository`: concentra las operaciones de persistencia requeridas por el dominio de materiales, recepciones y movimientos.

#### 4.2.5.2. Interface Layer.

**`InventoryController`**

Expone las capacidades principales del contexto:

- consultar el catálogo de materias primas;
- crear o actualizar una materia prima;
- consultar las recepciones de un material;
- consultar lotes utilizables;
- registrar una nueva recepción;
- revisar y cambiar el estado de un lote;
- consumir materia prima para un lote de producto;
- consultar movimientos e historial;
- consultar elementos heredados pendientes de migración;
- importar explícitamente un material de la versión anterior.

El controlador aplica el contexto del laboratorio a cada operación. Las acciones sensibles de revisión e importación deben requerir los permisos correspondientes.

**`InventoryContextFacade`**

Expone hacia Product Batch Management únicamente las operaciones necesarias para consultar lotes utilizables y realizar consumos, evitando que Batch acceda directamente al repositorio interno de Inventory.

**Integration Event**

- `ReceiptConsumedIntegrationEvent`: comunica que una cantidad de un `RawMaterialBatch` fue consumida para un lote de producto.

**Resources y Assemblers**

La capa cuenta con Resources específicos para materia prima, recepción, consumo, movimiento, material heredado e importación, junto con Assemblers que convierten las solicitudes REST a Commands y el modelo de dominio a respuestas de la API.

#### 4.2.5.3. Application Layer.

**`InventoryCommandService` / `InventoryCommandServiceImpl`**

Coordina las operaciones que modifican el inventario. Entre sus responsabilidades se encuentran registrar materiales, recibir lotes, revisar su estado y realizar consumos. Antes de consumir materia prima valida el lote de producto mediante `BatchContextFacade` y registra el movimiento dentro de la misma operación de negocio.

**`InventoryQueryService` / `InventoryQueryServiceImpl`**

Resuelve consultas de materiales, recepciones, movimientos y datos heredados pendientes de migración.

**`InventoryImportService` / `InventoryImportServiceImpl`**

Permite importar de manera explícita un material heredado desde Laboratory Management. La importación se utiliza como mecanismo de transición y no convierte la información antigua en una segunda fuente de verdad permanente.

**`InventoryMovementRecorder`**

Centraliza la creación de movimientos y registra el usuario actual y el momento de la operación.

**`InventoryContextFacadeImpl`**

Implementa la fachada consumida por Product Batch Management.

**Consistencia transaccional**

La operación de consumo mantiene coordinado el descuento de `availableAmount`, la creación de `InventoryMovement` y el registro de uso del material en Product Batch Management. El diseño busca que la operación se confirme completa o se revierta completa, evitando stock descontado sin trazabilidad o trazabilidad creada sin descuento real.

#### 4.2.5.4. Infrastructure Layer.

**Persistence Entities**

- `InventoryMaterialEntity`.
- `InventoryReceiptEntity`.
- `InventoryMovementEntity`.

**Persistence Repositories**

- `InventoryMaterialPersistenceRepository`.
- `InventoryReceiptPersistenceRepository`.
- `InventoryMovementPersistenceRepository`.

**Adapter principal**

- `InventoryRepositoryImpl`: implementa `InventoryRepository` y coordina los repositorios JPA necesarios.

**Assemblers**

- `InventoryMaterialPersistenceAssembler`.
- `InventoryReceiptPersistenceAssembler`.
- `InventoryMovementPersistenceAssembler`.

**`InventoryConfiguration`**

Proporciona configuración técnica del contexto, incluyendo el `Clock` utilizado para evaluar fechas de recepción, vencimiento y movimientos de manera consistente.

#### 4.2.5.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Inventory Management** dentro del **Cloud REST API** y las relaciones necesarias para gestionar materias primas, recepciones, cantidades disponibles y movimientos. Su integración con Product Batch Management permite relacionar el consumo real de una materia prima con un lote de producto, mientras que Laboratory Management proporciona el contexto organizacional necesario.

Para esta entrega se utiliza la vista de Structurizr **`Components-Inventory`**, definida sobre el container `Cloud REST API`. La vista corresponde al estado actual del C4 y podrá ser refinada posteriormente para detallar los componentes internos de Interface, Application, Domain e Infrastructure.

![Inventory Management Component Diagram](../assets/img/chapter-iv/Components-Inventory.png)

#### 4.2.5.6. Bounded Context Software Architecture Code Level Diagrams.

##### 4.2.5.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama presenta `RawMaterial`, `RawMaterialBatch`, `InventoryMovement`, `MaterialStockSummary`, `ReceiptConsumption`, `RawMaterialBatchStatus`, Commands, Queries y la interfaz `InventoryRepository`.

![Inventory Management Domain Layer Class Diagram](../assets/img/chapter-iv/inventory-domain-layer-class-diagram.png)

##### 4.2.5.6.2. Bounded Context Database Design Diagram.

El esquema de persistencia contiene las estructuras de materiales, recepciones y movimientos. La cantidad disponible se conserva a nivel de cada recepción, mientras los movimientos permiten reconstruir el historial de cambios del inventario.

![Inventory Management Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/inventory/inventory-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.6. Bounded Context: Product Batch Management

Product Batch Management administra los productos fabricados y sus lotes, conservando la trazabilidad de las materias primas utilizadas. El contexto no administra el stock de la materia prima; solicita a Inventory Management la validación y consumo del lote correspondiente.

#### 4.2.6.1. Domain Layer.

**`Batch` — Aggregate Root**

- **Propósito:** representa un lote específico de fabricación.
- **Atributos principales:** `id`, `labId`, `productId`, `productName`, `batchNumber`, `quantity`, `unit`, `status`, `startDate`, `endDate` y `notes`.
- **Métodos principales:** `start`, `release` y `reject`.
- **Relaciones:** utiliza `BatchStatus`; se relaciona con la organización mediante `labId` y con el producto mediante `productId`.

**`RawMaterialUsage` — Entity**

- **Propósito:** conserva la evidencia de qué lote de materia prima fue utilizado durante la fabricación y cuánto se consumió.
- **Atributos principales:** `batchId`, `rawMaterialId`, `rawMaterialName`, `inventoryReceiptId`, `stockBefore`, `stockAfter`, `quantityUsed`, `unit` y `usageDate`.
- **Relaciones:** se crea a partir del consumo confirmado por Inventory Management.

**`DigitalSignature` — Entity**

- **Propósito:** conserva evidencia de firma cuando una operación del lote requiere registrar al usuario responsable.
- **Atributos principales:** `batchId`, `signedByUserId`, `signatureHash` y `signedAt`.

**`RejectionRecord` — Entity**

- **Propósito:** conserva la razón y fecha asociadas al rechazo de un lote.

**`BatchStatus` — Enumeration**

- **Valores:** `PENDING`, `IN_PROGRESS`, `RELEASED` y `REJECTED`.

**Commands principales**

- `CreateBatchCommand`.
- `ReleaseBatchCommand`.
- `RejectBatchCommand`.
- `LinkRawMaterialCommand` se mantiene por compatibilidad; el nuevo flujo de consumo se inicia desde Inventory Management para asegurar el descuento exacto del lote de materia prima.

**Queries principales**

- `GetBatchByIdQuery`.
- `GetBatchesByLabIdQuery`.
- `GetBatchesByStatusQuery`.
- `GetRawMaterialUsageByBatchIdQuery`.

**Eventos principales**

- `BatchCreatedEvent`.
- `BatchReleasedEvent`.
- `BatchRejectedEvent`.
- `RawMaterialLinkedToBatchEvent`.

**Repository Interfaces**

- `BatchRepository`.
- `RawMaterialUsageRepository`.

#### 4.2.6.2. Interface Layer.

**`BatchController`**

Expone las operaciones para registrar, consultar, liberar o rechazar un lote de producto.

**`LaboratoryBatchesController`**

Permite consultar los lotes que pertenecen a una organización determinada.

**`BatchRawMaterialUsageController`**

Permite consultar la materia prima utilizada por un lote. La creación heredada de consumos directos queda reemplazada por el flujo coordinado con Inventory Management para que exista un `RawMaterialBatch` real y una cantidad exacta descontada.

**`BatchContextFacade`**

Expone hacia Inventory Management operaciones como verificar la existencia del lote, comprobar que pertenece al laboratorio correcto y validar si se encuentra en un estado que permite registrar consumo.

**Resources y Assemblers**

La capa utiliza `BatchResource`, `CreateBatchResource`, `ReleaseBatchResource`, `RejectBatchResource`, `RawMaterialUsageResource` y sus respectivos assemblers para mantener separado el modelo REST del dominio.

#### 4.2.6.3. Application Layer.

**`BatchCommandService` / `BatchCommandServiceImpl`**

Coordina la creación y los cambios de estado del lote. Antes de operar valida las referencias necesarias mediante servicios ACL y publica los eventos del dominio.

**`RawMaterialUsageCommandService` / `RawMaterialUsageCommandServiceImpl`**

Forma parte del diseño heredado de vinculación de materia prima. En el flujo actual, Inventory Management realiza el consumo y comunica el resultado para crear `RawMaterialUsage` con la información exacta de la recepción utilizada.

**Query Services**

- `BatchQueryService` / `BatchQueryServiceImpl`.
- `RawMaterialUsageQueryService` / `RawMaterialUsageQueryServiceImpl`.

**Event Handlers**

- `BatchCreatedEventHandler`.
- `BatchReleasedEventHandler`.
- `BatchRejectedEventHandler`.
- `RawMaterialLinkedToBatchEventHandler`.
- `ReceiptConsumedEventHandler`: recibe el evento de Inventory Management y registra la trazabilidad del consumo de forma sincronizada con la operación de stock.

**ACL**

- `ExternalLaboratoryService`: verifica la organización mediante `LaboratoryContextFacade`.
- `BatchExternalComplianceService`: consulta Compliance & Alerting antes de operaciones que requieren validar condiciones de cumplimiento.

#### 4.2.6.4. Infrastructure Layer.

**Persistence Entities**

- `BatchPersistenceEntity`.
- `RawMaterialUsagePersistenceEntity`.
- `DigitalSignaturePersistenceEntity`.
- `RejectionRecordPersistenceEntity`.

**Persistence Repositories**

- `BatchPersistenceRepository`.
- `RawMaterialUsagePersistenceRepository`.
- `DigitalSignaturePersistenceRepository`.
- `RejectionRecordPersistenceRepository`.

**Repository Adapters**

- `BatchRepositoryImpl`.
- `RawMaterialUsageRepositoryImpl`.

**Persistence Assemblers**

- `BatchPersistenceAssembler`.
- `RawMaterialUsagePersistenceAssembler`.
- `DigitalSignaturePersistenceAssembler`.
- `RejectionRecordPersistenceAssembler`.

**Converter**

- `BatchStatusPersistenceConverter`.

#### 4.2.6.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Product Batch Management** dentro del **Cloud REST API**. Este contexto administra los lotes de producto y su trazabilidad, y se relaciona especialmente con Inventory Management para utilizar materias primas existentes, con Laboratory Management para validar la organización y con Compliance & Alerting para las verificaciones relacionadas con calidad y cumplimiento.

Para esta entrega se utiliza la vista de Structurizr **`Components-ProductBatch`**, definida sobre el container `Cloud REST API`. La vista representa la arquitectura actual y posteriormente podrá ampliarse para mostrar con mayor detalle los componentes internos del contexto.

![Product Batch Management Component Diagram](../assets/img/chapter-iv/Components-ProductBatch.png)

#### 4.2.6.6. Bounded Context Software Architecture Code Level Diagrams.

##### 4.2.6.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama muestra `Batch`, `RawMaterialUsage`, `DigitalSignature`, `RejectionRecord`, `BatchStatus`, Commands, Queries, eventos y repositorios del contexto.

![Product Batch Management Domain Layer Class Diagram](../assets/img/chapter-iv/batch-domain-layer-class-diagram.png)

##### 4.2.6.6.2. Bounded Context Database Design Diagram.

El diagrama de base de datos representa los lotes de producto y su trazabilidad. La referencia al lote recibido en Inventory permite identificar exactamente qué materia prima participó en cada fabricación.

![Product Batch Management Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/batch/batch-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.7. Bounded Context: Reporting & Audit

Reporting & Audit consolida información producida por los otros Bounded Contexts para generar indicadores, reportes y evidencia histórica. Este contexto no se convierte en una segunda fuente de verdad de telemetría, alertas, equipos o lotes; utiliza ACL y eventos para construir sus propios modelos de consulta y auditoría.

#### 4.2.7.1. Domain Layer.

**`AuditReport` — Aggregate Root**

- **Propósito:** representa un reporte generado y asociado con un laboratorio, lote o equipo.
- **Atributos principales:** `laboratoryId`, `batchId`, `equipmentId`, `generatedBy`, `generatedByName`, `reportType`, rango de fechas, `filePath`, `checksum` y `generatedAt`.
- **Métodos principales:** `computeChecksum`, `isImmutable`, `isBatchReport` e `isEquipmentReport`.
- **Regla:** un reporte generado se considera evidencia y no debe modificarse como si fuera un documento editable de negocio.

**`KpiDashboard` — Aggregate Root**

- **Propósito:** representa un conjunto de indicadores calculados para un laboratorio en un momento determinado.
- **Atributos principales:** `laboratoryId`, `timestamp`, `overallHealthScore` y `metrics`.
- **Métodos principales:** `hasCriticalMetrics` y `hasAtRiskMetrics`.

**`AuditLogEntry` — Entity**

- **Propósito:** registra una acción relevante ejecutada por un usuario o por el sistema.
- **Información principal:** acción, tipo de entidad, identificador, actor, fecha y detalle.

**`DeviationTrend` — Entity**

- **Propósito:** representa una tendencia calculada sobre una variable monitoreada de un equipo.
- **Atributos:** `parameterName`, `equipmentId`, `trendDirection` y `dataPoints`.

**`KpiMetric` — Entity**

- **Propósito:** representa un indicador individual dentro de un dashboard.
- **Atributos:** nombre, valor, unidad, objetivo, estado y fecha de registro.

**`TrendDataPoint` — Entity / Value Object**

- **Propósito:** representa un punto utilizado para calcular una tendencia.
- **Método principal:** `isDeviation`.

**Enumerations**

- `AuditAction`: acciones auditables como `CREATE`, `UPDATE`, `RELEASE`, `REJECT`, `EXPORT`, `LOGIN`, entre otras.
- `KpiMetricStatus`: `ON_TRACK`, `AT_RISK`, `CRITICAL` y `UNKNOWN`.
- `ReportFormat`: `PDF` y `CSV`.
- `ReportType`: tipos de reporte como trazabilidad de lote, cumplimiento, log de equipo y resumen KPI.
- `TrendDirection`: `INCREASING`, `DECREASING` y `STABLE`.

**Commands principales**

- `CalculateKpiDashboardCommand`.
- `CalculateDeviationTrendCommand`.
- `GenerateBatchReportCommand`.
- `GenerateComplianceReportCommand`.
- `ExportEquipmentLogCommand`.
- `RecordAuditLogEntryCommand`.

**Queries principales**

Incluyen consultas por laboratorio, equipo, lote, identificador de reporte y filtros del Audit Log.

**Repository Interfaces**

- `AuditLogRepository`.
- `AuditReportRepository`.
- `DeviationTrendRepository`.
- `KpiDashboardRepository`.

#### 4.2.7.2. Interface Layer.

La Interface Layer expone las consultas de indicadores, auditoría, tendencias y generación de reportes. Los controladores y Resources deben entregar únicamente datos calculados a partir de información real persistida; cuando no existen datos suficientes, el sistema debe comunicarlo en lugar de generar cifras ficticias.

Entre los Resources definidos se encuentran los correspondientes a Audit Log, Audit Report, KPI Dashboard, KPI Metric, Deviation Trend y sus puntos de datos, además de los Resources utilizados para solicitar reportes y exportaciones.

**`RaContextFacade`**

Expone una interfaz controlada para que otros Bounded Contexts puedan registrar acciones auditables sin acceder al repositorio interno de auditoría.

#### 4.2.7.3. Application Layer.

**`RaCommandService` / `RaCommandServiceImpl`**

Coordina el cálculo de KPI, tendencias y la generación o exportación de reportes.

**`AuditLogCommandService` / `AuditLogCommandServiceImpl`**

Centraliza el registro de acciones auditables provenientes de otros contextos.

**`RaQueryService` / `RaQueryServiceImpl`**

Resuelve las consultas de dashboards, tendencias, Audit Log y reportes generados.

**ACL consumidas**

- `RaExternalBatchService`: obtiene información resumida de Product Batch Management.
- `RaExternalComplianceService`: obtiene métricas sobre alertas.
- `RaExternalEquipmentService`: obtiene información resumida sobre equipos.
- `RaExternalLaboratoryService`: valida la existencia de la organización.

**Event Handlers**

- `BatchAuditEventHandler`.
- `CaAuditEventHandler`.
- `EquipmentAuditEventHandler`.
- `LaboratoryAuditEventHandler`.
- `TrackingAuditEventHandler`.
- Handlers propios para `AuditLogEntryRecordedEvent`, `AuditReportGeneratedEvent`, `DeviationTrendCalculatedEvent` y `KpiDashboardCalculatedEvent`.

Estos handlers permiten mantener un registro transversal sin introducir reglas de auditoría dentro de cada Bounded Context productor.

#### 4.2.7.4. Infrastructure Layer.

**Persistence Entities**

- `AuditLogEntryPersistenceEntity`.
- `AuditReportPersistenceEntity`.
- `DeviationTrendPersistenceEntity`.
- `KpiDashboardPersistenceEntity`.
- `KpiMetricPersistenceEntity`.
- `TrendDataPointPersistenceEntity`.

**Persistence Repositories**

Existen repositorios JPA específicos para Audit Log, reportes, tendencias, dashboards, métricas y puntos de tendencia.

**Repository Adapters**

- `AuditLogRepositoryImpl`.
- `AuditReportRepositoryImpl`.
- `DeviationTrendRepositoryImpl`.
- `KpiDashboardRepositoryImpl`.

**Converters**

- `AuditActionPersistenceConverter`.
- `KpiMetricStatusPersistenceConverter`.
- `ReportFormatPersistenceConverter`.
- `ReportTypePersistenceConverter`.
- `TrendDirectionPersistenceConverter`.

#### 4.2.7.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Reporting & Audit** dentro del **Cloud REST API**. Este contexto recibe o consulta información producida por otros Bounded Contexts para generar indicadores, tendencias, reportes y registros de auditoría sin reemplazar las fuentes de verdad de cada dominio.

Para esta entrega se utiliza la vista de Structurizr **`Components-Reporting`**, definida sobre el container `Cloud REST API`. La vista evidencia las relaciones principales del contexto dentro del monolito modular y será refinada posteriormente para mostrar su estructura interna con mayor detalle.

![Reporting & Audit Component Diagram](../assets/img/chapter-iv/Components-Reporting.png)

#### 4.2.7.6. Bounded Context Software Architecture Code Level Diagrams.

##### 4.2.7.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama de clases muestra los aggregates `AuditReport` y `KpiDashboard`, las entidades de auditoría y tendencias, sus enumeraciones, repositorios y los servicios que construyen las vistas de análisis.

![Reporting & Audit Domain Layer Class Diagram](../assets/img/chapter-iv/ra-domain-layer-class-diagram.png)

##### 4.2.7.6.2. Bounded Context Database Design Diagram.

El diagrama de base de datos representa la persistencia de Audit Log, reportes, dashboards, métricas y tendencias. Estos registros se generan a partir de información proveniente de otros contextos y no sustituyen sus datos operativos originales.

![Reporting & Audit Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/ra/ra-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.8. Bounded Context: Identity & Access Management

Identity & Access Management es un Bounded Context transversal encargado de la identidad, autenticación y autorización de los usuarios de QualiTrack. Su función es proporcionar una identidad confiable al resto del sistema sin asumir responsabilidades relacionadas con laboratorios, inventario, telemetría o suscripciones.

#### 4.2.8.1. Domain Layer.

**`User` — Aggregate Root**

- **Propósito:** representa la cuenta de acceso de un usuario.
- **Atributos principales:** `id`, `username`, `password`, `roles`, `laboratoryId` y `status`.
- **Métodos principales:** `addRole`, `addRoles`, `deactivate`, `isActive`, `getUsernameValue` y `getPasswordValue`.
- **Relaciones:** contiene roles y utiliza `Username`, `PasswordHash` y `UserStatus`.

**`Role` — Entity**

- **Propósito:** representa un rol asignable a los usuarios.
- **Atributos principales:** `id` y `name`.
- **Métodos principales:** `getStringName`, `hasName` y `validateRoleSet`.

**`Username` — Value Object**

Encapsula el identificador utilizado para el inicio de sesión.

**`PasswordHash` — Value Object**

Representa únicamente la contraseña ya protegida. La contraseña en texto plano no forma parte del modelo persistido.

**`Roles` — Enumeration**

- `ROLE_ADMIN`.
- `ROLE_QA_MANAGER`.
- `ROLE_LAB_OPERATOR`.

**`UserStatus` — Enumeration**

- `ACTIVE`.
- `INACTIVE`.
- `SUSPENDED`.

**Commands principales**

- `SignInCommand`.
- `SignUpCommand`.
- `AssignRoleCommand`.
- `DeactivateUserCommand`.
- `SeedRolesCommand`.

**Queries principales**

- `GetUserByIdQuery`.
- `GetUserByUsernameQuery`.
- `GetAllUsersQuery`.
- `GetRoleByNameQuery`.
- `GetAllRolesQuery`.

**Repository Interfaces**

- `UserRepository`.
- `RoleRepository`.

#### 4.2.8.2. Interface Layer.

**`AuthenticationController`**

- Recibe las solicitudes de registro e inicio de sesión.
- Convierte los Resources a `SignUpCommand` o `SignInCommand`.
- Devuelve el usuario autenticado junto con el token cuando las credenciales son válidas.

**`UsersController`**

- Permite consultar usuarios, asignar roles y desactivar cuentas de acuerdo con los permisos definidos.

**`RolesController`**

- Expone la consulta de los roles disponibles.

**`IamContextFacade`**

Expone información mínima hacia otros contextos, como comprobar que un usuario exista, obtener su laboratorio asociado, consultar el nombre del usuario o verificar si tiene un rol determinado.

**Resources principales**

- `SignInResource`.
- `SignUpResource`.
- `AuthenticatedUserResource`.
- `UserResource`.
- `RoleResource`.

#### 4.2.8.3. Application Layer.

**`UserCommandService` / `UserCommandServiceImpl`**

Coordina el registro, inicio de sesión, asignación de roles y desactivación de usuarios. Utiliza `HashingService` para proteger contraseñas y `TokenService` para generar tokens de acceso.

**`RoleCommandService` / `RoleCommandServiceImpl`**

Inicializa y administra los roles base requeridos por la aplicación.

**Query Services**

- `UserQueryService` / `UserQueryServiceImpl`.
- `RoleQueryService` / `RoleQueryServiceImpl`.

**`ApplicationReadyEventHandler`**

Inicializa los roles cuando la aplicación se encuentra disponible, evitando depender de una carga manual previa.

**Outbound Service Contracts**

- `HashingService`.
- `TokenService`.

Estas interfaces se definen fuera de Infrastructure para evitar que el dominio de identidad dependa de BCrypt o JWT como tecnologías concretas.

#### 4.2.8.4. Infrastructure Layer.

**Seguridad y hashing**

- `BCryptHashingService` configura `BCryptPasswordEncoder`.
- `HashingServiceImpl` implementa el contrato de hashing.

**JWT y autorización**

- `TokenServiceImpl` implementa la generación y validación de tokens JWT.
- `BearerTokenService` extrae el token del header de autorización.
- `BearerAuthorizationRequestFilter` valida las solicitudes protegidas.
- `UserDetailsServiceImpl` integra el usuario del dominio con Spring Security.
- `UserDetailsImpl` adapta `User` al contrato `UserDetails`.
- `UnauthorizedRequestHandlerEntryPoint` gestiona accesos no autorizados.
- `WebSecurityConfiguration` define la cadena de filtros y configuración de seguridad.

**Persistencia**

- `UserPersistenceEntity` y `RolePersistenceEntity`.
- `UserPersistenceRepository` y `RolePersistenceRepository`.
- `UserRepositoryImpl` y `RoleRepositoryImpl`.
- `UserPersistenceAssembler` y `RolePersistenceAssembler`.
- `RolesPersistenceConverter` y `UserStatusPersistenceConverter`.

#### 4.2.8.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Identity & Access Management** dentro del **Cloud REST API**. Este contexto proporciona identidad, autenticación y autorización a los demás módulos de QualiTrack y mantiene relaciones con aquellos procesos que necesitan validar al usuario autenticado o su acceso a las capacidades del sistema.

Para esta entrega se utiliza la vista de Structurizr **`Components-IAM`**, definida sobre el container `Cloud REST API`. La vista corresponde al C4 actual y posteriormente podrá detallarse para evidenciar de manera interna los componentes de autenticación, autorización, repositorios y seguridad.

![Identity & Access Management Component Diagram](../assets/img/chapter-iv/Components-IAM.png)

#### 4.2.8.6. Bounded Context Software Architecture Code Level Diagrams.

##### 4.2.8.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama muestra `User`, `Role`, los Value Objects de identidad y contraseña protegida, las enumeraciones de roles y estado, Commands, Queries y repositorios.

![Identity & Access Management Domain Layer Class Diagram](../assets/img/chapter-iv/iam-domain-layer-class-diagram.png)

##### 4.2.8.6.2. Bounded Context Database Design Diagram.

El esquema de base de datos representa usuarios, roles y su relación de muchos a muchos, además de los campos necesarios para mantener el estado y la relación de acceso con la organización correspondiente.

![Identity & Access Management Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/iam/iam-database-diagram.puml&fmt=svg&v=4)

---

### 4.2.9. Bounded Context: Payments & Subscriptions

Payments & Subscriptions administra los planes comerciales, el estado de las suscripciones y los pagos asociados. Se mantiene separado de IAM porque la identidad del usuario y la contratación del servicio representan responsabilidades diferentes.

Stripe se utiliza como proveedor externo para procesar el pago. QualiTrack mantiene en su propia base de datos la información necesaria para conocer qué plan se encuentra activo y qué pagos fueron confirmados, sin almacenar directamente los datos sensibles del medio de pago.

#### 4.2.9.1. Domain Layer.

**`Subscription` — Aggregate Root**

- **Propósito:** representa la contratación de un plan por parte de un usuario y su laboratorio.
- **Atributos principales:** `id`, `userId`, `laboratoryId`, `planCode`, `billingCycle`, `status`, identificadores de Stripe, periodo vigente y datos de cancelación.
- **Métodos principales:** `activate`, `cancel` e `isActive`.
- **Relaciones:** utiliza `PlanCode`, `BillingCycle` y `SubscriptionStatus`.

**`SubscriptionPlan` — Entity**

- **Propósito:** representa un plan disponible para contratación.
- **Atributos principales:** código, nombre, descripción, precio, ciclo de facturación, `stripePriceId`, límites de usuarios/equipos y estado activo.
- **Método principal:** `isSelectable`.

**`SubscriptionPayment` — Entity**

- **Propósito:** conserva un pago asociado a una suscripción después de recibir información confirmada del proveedor.
- **Atributos principales:** `subscriptionId`, proveedor, identificador del pago externo, sesión de checkout, importe, estado y fecha de pago.
- **Métodos principales:** `stripePayment` e `isPaid`.

**`Money` — Value Object**

- **Atributos:** `amount` y `currency`.
- **Propósito:** evita representar importes únicamente con valores numéricos sin moneda.

**Enumerations**

- `PlanCode`: `FREE`, `BASIC`, `PROFESSIONAL` y `ENTERPRISE`.
- `BillingCycle`: `MONTHLY` y `YEARLY`.
- `SubscriptionStatus`: `ACTIVE`, `INACTIVE`, `PENDING_PAYMENT`, `CANCELLED` y `EXPIRED`.
- `PaymentProvider`: `STRIPE` y `MOCK`.
- `PaymentStatus`: `PENDING`, `PAID`, `FAILED`, `CANCELLED` y `REFUNDED`.

**Commands principales**

- `CreateCheckoutSessionCommand`.
- `ActivateSubscriptionCommand`.
- `CancelSubscriptionCommand`.
- `RecordStripePaymentCommand`.

**Queries principales**

- `GetSubscriptionPlansQuery`.
- `GetActiveSubscriptionByLaboratoryIdQuery`.
- `GetActiveSubscriptionByUserIdQuery`.
- `GetBillingSummaryByLaboratoryIdQuery`.
- `GetPaymentsBySubscriptionIdQuery`.
- `GetSubscriptionByStripeCheckoutSessionIdQuery`.

**Eventos principales**

- `CheckoutSessionCreatedEvent`.
- `SubscriptionActivatedEvent`.
- `SubscriptionCancelledEvent`.
- `SubscriptionPaymentRecordedEvent`.

**Repository Interfaces**

- `SubscriptionRepository`.
- `SubscriptionPlanRepository`.
- `SubscriptionPaymentRepository`.

#### 4.2.9.2. Interface Layer.

**`SubscriptionController`**

Expone las operaciones para:

- consultar planes activos;
- crear una sesión de checkout;
- consultar la suscripción activa;
- consultar el resumen de facturación;
- consultar pagos de una suscripción;
- cancelar la renovación o suscripción según las reglas definidas.

**`StripeWebhookController`**

Recibe los eventos enviados por Stripe. Su responsabilidad es verificar y traducir dichos eventos a Commands de aplicación, evitando que el payload externo modifique directamente el modelo de dominio.

**Resources principales**

- `CreateCheckoutSessionResource`.
- `CheckoutSessionResource`.
- `CancelSubscriptionResource`.
- `SubscriptionResource`.
- `SubscriptionPlanResource`.
- `SubscriptionPaymentResource`.
- `StripeWebhookResource`.

**`SubscriptionContextFacade`**

Permite a otros contextos consultar de forma controlada si existe una suscripción activa, verificar un plan o conocer el código del plan vigente.

#### 4.2.9.3. Application Layer.

**`SubscriptionCommandService` / `SubscriptionCommandServiceImpl`**

Coordina la creación de sesiones de pago, activación, cancelación y registro de pagos. La activación se realiza únicamente a partir de una confirmación válida del proveedor y no por una decisión tomada únicamente en el frontend.

**`SubscriptionQueryService` / `SubscriptionQueryServiceImpl`**

Resuelve consultas de planes, suscripciones activas, historial y pagos.

**Event Handlers**

- `CheckoutSessionCreatedEventHandler`.
- `SubscriptionActivatedEventHandler`.
- `SubscriptionCancelledEventHandler`.
- `SubscriptionPaymentRecordedEventHandler`.

**`ExternalStripeService` — ACL / Outbound Service**

- Crea sesiones de checkout en Stripe.
- Recupera información de la suscripción del proveedor.
- Solicita cancelaciones cuando corresponde.
- Traduce los identificadores y fechas de Stripe a estructuras que entiende el Application Layer.

De esta manera, el dominio no depende directamente de las clases del SDK de Stripe.

#### 4.2.9.4. Infrastructure Layer.

**Persistence Entities**

- `SubscriptionPersistenceEntity`.
- `SubscriptionPlanPersistenceEntity`.
- `SubscriptionPaymentPersistenceEntity`.

**Embeddable**

- `MoneyEmbeddable` representa importe y moneda dentro de las entidades JPA.

**Persistence Repositories**

- `SubscriptionPersistenceRepository`.
- `SubscriptionPlanPersistenceRepository`.
- `SubscriptionPaymentPersistenceRepository`.

**Repository Adapters**

- `SubscriptionRepositoryImpl`.
- `SubscriptionPlanRepositoryImpl`.
- `SubscriptionPaymentRepositoryImpl`.

**Persistence Assemblers**

- `SubscriptionPersistenceAssembler`.
- `SubscriptionPlanPersistenceAssembler`.
- `SubscriptionPaymentPersistenceAssembler`.
- `MoneyPersistenceAssembler`.

**Converters**

Se utilizan converters para `PlanCode`, `BillingCycle`, `SubscriptionStatus`, `PaymentProvider` y `PaymentStatus`.

**Integración Stripe**

La infraestructura contiene la configuración necesaria para utilizar el SDK de Stripe y validar los webhooks. Las claves del proveedor deben mantenerse en variables de entorno y no almacenarse en el repositorio.

#### 4.2.9.5. Bounded Context Software Architecture Component Level Diagrams.

El diagrama de componentes presenta la posición de **Payments & Subscriptions** dentro del **Cloud REST API**. Este contexto gestiona planes, suscripciones y pagos y mantiene una integración con Identity & Access Management para relacionar la contratación con el usuario, además de utilizar Stripe como proveedor externo para el procesamiento del pago.

Para esta entrega se utiliza la vista de Structurizr **`Components-Payments`**, definida sobre el container `Cloud REST API`. La vista representa el C4 actual del proyecto y podrá refinarse posteriormente para mostrar con mayor detalle la separación entre dominio, servicios de aplicación, persistencia e integración con Stripe.

![Payments & Subscriptions Component Diagram](../assets/img/chapter-iv/Components-Payments.png)

#### 4.2.9.6. Bounded Context Software Architecture Code Level Diagrams.

##### 4.2.9.6.1. Bounded Context Domain Layer Class Diagrams.

El diagrama de clases representa `Subscription`, `SubscriptionPlan`, `SubscriptionPayment`, `Money`, las enumeraciones comerciales, Commands, Queries, eventos y repositorios del contexto.

![Payments & Subscriptions Domain Layer Class Diagram (1/2)](../assets/img/chapter-iv/subscription-domain-layer-class-diagram-1.png)

![Payments & Subscriptions Domain Layer Class Diagram (2/2)](../assets/img/chapter-iv/subscription-domain-layer-class-diagram-2.png)

##### 4.2.9.6.2. Bounded Context Database Design Diagram.

El diagrama de base de datos muestra planes, suscripciones y pagos, incluyendo los identificadores externos necesarios para relacionar los registros internos con Stripe. Los datos sensibles de tarjetas u otros medios de pago no se almacenan dentro de QualiTrack.

![Payments & Subscriptions Database Design Diagram](https://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/IoTech-2620-8741/qualitrack-platform/main/docs/diagrams/subscription/subscription-database-diagram.puml&fmt=svg&v=4)
