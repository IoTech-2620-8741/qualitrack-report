## 4.1. Strategic-Level Domain-Driven Design. 
En esta sección se aborda el enfoque de Strategic-Level Domain-Driven Design, 
el cual permite definir una vision clara del dominio de la plataforma QualiTrack, identificar los contextos delimitados y establecer las relaciones entre ellos. Se incluyen los siguientes subtemas:
### 4.1.1. Design-Level EventStorming.

El EventStorming es una técnica de modelado colaborativa que permite descubrir y comprender el dominio de la plataforma QualiTrack, identificar los eventos del dominio, 
los comandos, actores, politicas, modelo de lectura, sistemas externos y agregados. Este enfo permite definir los contextos delimitados y establecer las relaciones entre ellos. Se incluyen los siguientes pasos:

**Paso 1: Domain Events**

En este paso, se presentan los eventos de dominio ya identificados en la sección Big Picture Event Storming. Los eventos de dominio son las acciones o sucesos que suceden en el sistema/negocio actual.

<div align="center">
  <img src="../assets/img/chapter-iv/es-domain-events.png" alt ="Big Picture" width=700>
</div>

Dichos eventos de dominio se separaron en flujos, donde representan el conjunto de eventos de dominio que están enlazados con sus continuaciones en una linea de tiempo cronológica. Por otra parte, también se agregaron actores, quienes serán los que responden o ejecutan los eventos de dominio.

Se identificaron 8 flujos principales:
- Environmental Monitoring and Control.
- Raw Material Management.
- Environmental Deviation Management.
- Quality Records and Audits.
- Product Development and Production.
- Incoming Inspection and Acceptance. 
- Product Development and Viability.
- Distribution and Supply Monitoring.

<div align="center">
  <img src="../assets/img/chapter-iv/es-domain-events-flow-1.png" alt ="Big Picture" width=700>
</div>

<div align="center">
  <img src="../assets/img/chapter-iv/es-domain-events-flow-2.png" alt ="Big Picture" width=700>
</div>

<div align="center">
  <img src="../assets/img/chapter-iv/es-domain-events-flow-3.png" alt ="Big Picture" width=700>
</div>

<div align="center">
  <img src="../assets/img/chapter-iv/es-domain-events-flow-4.png" alt ="Big Picture" width=700>
</div>

**Paso 2: Commands**

En este paso, se incluyen los comandos, los cuales indican las acciones que se realizarán en el sistema. Dichas acciones son ejecutadas por un actor o por una política (las cuales se incluiran en el siguiente paso).

|Actor|Comandos|
|-|-|
|**Lab Technician**|Identify area, define environmental requirements, record measurements, measure environmental information, identify raw material, check raw material availability, evaluate formulation approval, approve formulation, rework formulation.|
|**Quality Staff**|Review measurement records, check raw material information, evaluate raw material information, check environmental conditions, notify environmental deviation, check environmental conditions records, look up environmental conditions, record environmental deviation, write quality record, review quality records, review historial records, review deviation records, summarize quality information, perform quality control, evaluate batch, analize sample, start environmental monitoring.|
|**Production Staff**|Identify batch, select raw materials, complete production|
|**R&D Formulator**|Create product proposal, start final quality control|
|**Warehouse Staff**|Update raw material inventory, record batch updates, allocate product stock|
|**Logistics Staff**|Monitor cold chain|

![Step 2 - Commands](../assets/img/chapter-iv/es-commands-1.png)
![Step 2 - Commands](../assets/img/chapter-iv/es-commands-2.png)
![Step 2 - Commands](../assets/img/chapter-iv/es-commands-3.png)
![Step 2 - Commands](../assets/img/chapter-iv/es-commands-4.png)
![Step 2 - Commands](../assets/img/chapter-iv/es-commands-5.png)
![Step 2 - Commands](../assets/img/chapter-iv/es-commands-6.png)
![Step 2 - Commands](../assets/img/chapter-iv/es-commands-7.png)
![Step 2 - Commands](../assets/img/chapter-iv/es-commands-8.png)

**Paso 3: Policies and Actors**

En este paso se incluyen las políticas del negocio (Reglas *Whenever* sucede un evento de dominio, *Then* acciona un comando). Se utilizan los actores ya identificados en Big Picture Event Storming.

**Actores identificados**
- Lab Technician
- Quality Staff
- Production Staff
- R&D Formulator
- Warehouse Staff
- Logistics Staff

**Politicas identificadas**
- Whenever the environmental information is measured, then the measurements are recorded.
- Whenever the raw material lot is stored, then its information is evaluated.
- Whenever the environmental conditions are checked, then the environmental deviation is recorded.
- Whenever an environmental deviation is notified, then the environmental conditions records are checked.
- Whenever the quality record is written, then the quality records are reviewed.
- Whenever the production is completed, then a quality control is performed.
- Whenever the raw material inventory is updated, then a sample is analyzed.
- Whenever the product proposal is created, then the raw material availability is checked.
- Whenever the formulation is approved, then the final quality control is started.
- Whenever a certain amount of product stock is allocated, then the raw material inventory is updated.

![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-1.png)
![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-2.png)
![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-3.png)
![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-4.png)
![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-5.png)
![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-6.png)
![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-7.png)
![Step 3 - Policies and Actors](../assets/img/chapter-iv/es-policies-8.png)

**Paso 4: Read Models**

Los read models representan todo lo que se va a ver en la interfaz de usuario. Estos permitiran visualizar las futuras vistas dentro del Design-Level Event Storming.

**Modelos de lectura identificados**
- Laboratory area selection
- Telemetry dashboard
- Historical telemetry analysis
- Raw material catalog
- Tracking and telemetry dashboard
- Report & Document generator
- Product lot catalog
- New product registration
- Pharmaceutical product catalog
- Production Batches
- Telemetry dashboard

![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-1.png)
![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-2.png)
![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-3.png)
![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-4.png)
![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-5.png)
![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-6.png)
![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-7.png)
![Step 4 - Read Models](../assets/img/chapter-iv/es-read-models-8.png)

#### 4.1.1.1 Candidate Context Discovery.
#### 4.1.1.2 Domain Message Flows Modeling. 
 
Una vez descubiertos los Bounded Contexts candidatos, el equipo necesitaba validar que dichos límites permitieran resolver los casos reales del negocio. Para ello se aplicó la técnica de visualización *Domain Storytelling*, con la cual se narran escenarios completos del dominio mostrando quién inicia la historia, qué sistemas participan, qué Bounded Contexts colaboran y qué mensaje viaja entre ellos en cada paso.

El proceso seguido fue el siguiente:
 
1. *Selección de escenarios.* A partir de los pivotal points, políticas y líneas de tiempo del Design-Level EventStorming se eligieron seis escenarios representativos que atraviesan el sistema de extremo a extremo y que, en conjunto, involucran a los nueve Bounded Contexts de QualiTrack.
2. *Identificación de participantes.* Para cada escenario se determinaron los actores (Lab Technician, Quality Supervisor, Production Staff, Warehouse Staff, Auditor, Maintenance, Country Manager, IoT Device), los sistemas (la aplicación web y móvil de QualiTrack, Stripe) y los Bounded Contexts involucrados.
3. *Definición de los mensajes.* Cada interacción se expresó como un mensaje explícito tomado del Ubiquitous Language ya declarado en los Bounded Context Canvases y en el EventStorming: commands (una intención dirigida a un contexto), events (un hecho que ya ocurrió dentro de un contexto) y queries (una solicitud de información que no modifica el estado).
4. *Ordenamiento y numeración.* Los mensajes se numeraron secuencialmente para reflejar el orden temporal de la historia, indicando además los datos que transporta cada mensaje.
5. *Diagramación en Miro.* Cada escenario se modeló en el tablero del equipo utilizando la notación de Domain Message Flow Modelling, incluyendo en cada diagrama su propia leyenda de notación.
6. *Validación de los límites.* Se revisó que ningún mensaje obligara a un contexto a conocer conceptos internos de otro. Los casos en los que esto ocurría se resolvieron sustituyendo el acceso directo por una query de referencia hacia el contexto propietario del dato, lo que confirmó las relaciones Customer/Supplier y ACL definidas en el Context Mapping.

La notación empleada en los diagramas es la siguiente:
 
| Elemento | Representación | Significado |
|---|---|---|
| Actor / User | Ícono de persona | Persona o dispositivo que inicia o recibe una interacción. |
| System | Ícono de engranaje | Sistema que participa en el flujo (aplicación web y móvil de QualiTrack, Stripe). |
| Bounded Context | Nube morada | Contexto delimitado que recibe o emite el mensaje. |
| Command | Tarjeta azul numerada | Intención: se solicita a un Bounded Context que realice algo. |
| Event | Tarjeta naranja numerada | Hecho: algo que ya ocurrió dentro de un Bounded Context. |
| Query | Tarjeta verde numerada | Solicitud de información que no modifica el estado. |
| Direction of message | Flecha punteada | Sentido del mensaje, del emisor al receptor. |

A continuación se presentan los seis escenarios modelados.
 
---
 
##### Scenario 1: Environmental deviation detected and alert reviewed
 
Este escenario evidencia cómo una lectura ambiental fuera de rango se propaga desde los dispositivos IoT hasta la gestión del ciclo de vida de la alerta y su posterior consolidación analítica.
 
| # | Mensaje | Tipo | Emisor | Receptor |
|---|---|---|---|---|
| 1 | Record Measurement | Command | IoT Device | Tracking & Telemetry |
| 2 | Telemetry Anomaly Detected | Event | Tracking & Telemetry | Compliance & Alerting |
| 3 | Get Device Reference | Query | Compliance & Alerting | Equipment Management |
| 4 | Get Environment Reference | Query | Compliance & Alerting | Laboratory Management |
| 5 | Alert Created | Event | Compliance & Alerting | QualiTrack web and mobile application |
| 6 | Acknowledge Alert | Command | Quality Supervisor | QualiTrack web and mobile application |
| 7 | Acknowledge Alert | Command | QualiTrack web and mobile application | Compliance & Alerting |
| 8 | Resolve Alert | Command | QualiTrack web and mobile application | Compliance & Alerting |
| 9 | Get Alert Lifecycle Data | Query | Reporting & Audit | Compliance & Alerting |
 
Compliance & Alerting no almacena ni interpreta datos de equipos ni de ambientes: los obtiene mediante queries de referencia hacia Equipment Management y Laboratory Management, conservando la autoridad de cada contexto sobre su propio modelo.
 
![Domain Message Flow - Environmental deviation detected and alert reviewed](../assets/img/chapter-iv/domain-message-flow-1.png)
 
---

##### Scenario 2: Manufacturing a product batch with raw-material traceability
 
Este escenario muestra la fabricación de un lote de producto y el registro del consumo de materias primas necesario para sostener la trazabilidad exigida por el negocio.
 
| # | Mensaje | Tipo | Emisor | Receptor |
|---|---|---|---|---|
| 1 | Create Product Batch | Command | Production Staff | QualiTrack web and mobile application |
| 2 | Create Product Batch | Command | QualiTrack web and mobile application | Product Batch Management |
| 3 | Get Laboratory and Personnel Reference | Query | Product Batch Management | Laboratory Management |
| 4 | Get Equipment Availability | Query | Product Batch Management | Equipment Management |
| 5 | Get RawMaterialBatch Availability | Query | Product Batch Management | Inventory Management |
| 6 | Register Material Consumption | Command | Product Batch Management | Inventory Management |
| 7 | Raw Material Consumed | Event | Inventory Management | Product Batch Management |
| 8 | Close Product Batch | Command | QualiTrack web and mobile application | Product Batch Management |
| 9 | Get Product Batch Traceability | Query | Reporting & Audit | Product Batch Management |
 
Product Batch Management se mantiene como fuente de verdad de la trazabilidad del lote fabricado, mientras que la disponibilidad y el descuento de materias primas permanecen bajo la autoridad de Inventory Management.
 
![Domain Message Flow - Manufacturing a product batch with raw-material traceability](../assets/img/chapter-iv/domain-message-flow-2.png)
 
---

##### Scenario 3: Onboarding, subscription payment and laboratory registration
 
Este escenario describe la incorporación de una nueva organización a la plataforma, desde el registro del usuario hasta la activación de la suscripción y el alta del laboratorio.
 
| # | Mensaje | Tipo | Emisor | Receptor |
|---|---|---|---|---|
| 1 | Register User | Command | Visitant | QualiTrack web and mobile application |
| 2 | Register User | Command | QualiTrack web and mobile application | Identity & Access Management |
| 3 | Create Subscription | Command | QualiTrack web and mobile application | Payments & Subscriptions |
| 4 | Create Checkout Session | Command | Payments & Subscriptions | Stripe |
| 5 | Payment Received | Event | Stripe | Payments & Subscriptions |
| 6 | Subscription Activated | Event | Payments & Subscriptions | QualiTrack web and mobile application |
| 7 | Register Laboratory | Command | Country Manager | QualiTrack web and mobile application |
| 8 | Register Laboratory | Command | QualiTrack web and mobile application | Laboratory Management |
| 9 | Assign Laboratory Membership | Command | QualiTrack web and mobile application | Laboratory Management |
 
Stripe se modela como sistema externo y la confirmación del pago ingresa al dominio como un evento, evitando que Payments & Subscriptions dependa de la disponibilidad síncrona del proveedor.
 
![Domain Message Flow - Onboarding, subscription payment and laboratory registration](../assets/img/chapter-iv/domain-message-flow-3.png)
 
---

#### 4.1.1.3 Bounded Context Canvases.  
### 4.1.2. Context Mapping.

En esta sección se presenta el proceso de elaboración del Context Map de QualiTrack, mediante el cual se representan las relaciones existentes entre los distintos Bounded Contexts identificados en el dominio. Asimismo, se establecen las direcciones de comunicación y los patrones de relación de Domain-Driven Design (DDD) que corresponden a cada interacción, considerando las responsabilidades y límites definidos para cada contexto.

A continuación, se describen las principales relaciones de integración identificadas entre los Bounded Contexts del sistema.

#### Análisis de Bounded Contexts

A partir de los Bounded Contexts definidos para QualiTrack, se identificaron las principales relaciones de dependencia e integración existentes entre los distintos dominios del sistema. Para cada interacción se determina la dirección Upstream/Downstream y el patrón de Context Mapping más adecuado, procurando mantener la autonomía de cada contexto y evitar el acoplamiento directo entre sus modelos internos.

##### **Identity & Access Management (IAM) ↔ Payments & Subscriptions**

- **Relación**: Upstream (Identity & Access Management) / Downstream (Payments & Subscriptions)
- **Patrón**: Anti-Corruption Layer (ACL) — Payments & Subscriptions requiere conocer la identidad del usuario autenticado para consultar y administrar su suscripción. Sin embargo, el contexto de pagos no necesita conocer el modelo interno de autenticación de IAM. Por ello, consume únicamente la información necesaria, como el identificador del usuario o de la cuenta, mediante un contrato que permite mantener separado el modelo comercial del modelo de identidad.

##### **Identity & Access Management (IAM) ↔ Laboratory Management**

- **Relación**: Upstream (Identity & Access Management) / Downstream (Laboratory Management)
- **Patrón**: Anti-Corruption Layer (ACL) — Laboratory Management utiliza la identidad proporcionada por IAM para establecer la relación del usuario con un laboratorio mediante Laboratory Membership. El ACL evita que el contexto organizacional dependa directamente de las entidades internas de autenticación, utilizando únicamente referencias como UserId y la información necesaria para determinar la pertenencia y responsabilidad del usuario.

##### **Identity & Access Management (IAM) ↔ Reporting & Audit**

- **Relación**: Upstream (Identity & Access Management) / Downstream (Reporting & Audit)
- **Patrón**: Customer/Supplier — IAM actúa como proveedor de la identidad del usuario que ejecuta una operación y Reporting & Audit la utiliza para mantener evidencia de quién realizó una acción auditable. Reporting & Audit funciona como consumidor de esta información sin asumir responsabilidades relacionadas con autenticación o autorización.

##### **Payments & Subscriptions ↔ Laboratory Management**

- **Relación**: Upstream (Payments & Subscriptions) / Downstream (Laboratory Management)
- **Patrón**: Customer/Supplier — Payments & Subscriptions proporciona el estado real de la suscripción del usuario u organización. Laboratory Management consume esta información para determinar si el usuario puede continuar con la creación o validación de su laboratorio. Una suscripción ACTIVE habilita el onboarding operativo, manteniendo la gestión comercial separada de la administración del laboratorio.

##### **Payments & Subscriptions ↔ Reporting & Audit**

- **Relación**: Upstream (Payments & Subscriptions) / Downstream (Reporting & Audit)
- **Patrón**: Customer/Supplier — Payments & Subscriptions proporciona los eventos y cambios relevantes asociados con planes y suscripciones, mientras que Reporting & Audit los consume para mantener evidencia histórica y trazabilidad de las operaciones comerciales que requieren ser auditadas.

##### **Laboratory Management ↔ Equipment Management**

- **Relación**: Upstream (Laboratory Management) / Downstream (Equipment Management)
- **Patrón**: Customer/Supplier — Laboratory Management proporciona los ambientes físicos válidos de la organización, mientras que Equipment Management los consume para registrar y ubicar equipos, instrumentos y dispositivos IoT. De esta manera, Laboratory Management mantiene la autoridad sobre la estructura física y Equipment Management conserva la responsabilidad sobre los equipos.

##### **Laboratory Management ↔ Tracking & Telemetry**

- **Relación**: Upstream (Laboratory Management) / Downstream (Tracking & Telemetry)
- **Patrón**: Customer/Supplier — Laboratory Management proporciona la información del ambiente al que pertenecen las mediciones y configuraciones ambientales. Tracking & Telemetry utiliza esta referencia para contextualizar la telemetría sin asumir la administración de la estructura física del laboratorio.

##### **Laboratory Management ↔ Inventory Management**

- **Relación**: Upstream (Laboratory Management) / Downstream (Inventory Management)
- **Patrón**: Customer/Supplier — Laboratory Management define el laboratorio y los ambientes dentro de los cuales se encuentra el inventario. Inventory Management consume esta información para contextualizar materias primas y lotes sin duplicar la administración de la organización o de sus espacios físicos.

##### **Laboratory Management ↔ Product Batch Management**

- **Relación**: Upstream (Laboratory Management) / Downstream (Product Batch Management)
- **Patrón**: Customer/Supplier — Laboratory Management proporciona el contexto organizacional y las referencias básicas del personal participante en los procesos de producción. Product Batch Management consume esta información para asociar correctamente cada lote fabricado con el laboratorio y las personas involucradas.

##### **Inventory Management ↔ Product Batch Management**

- **Relación**: Upstream (Inventory Management) / Downstream (Product Batch Management)
- **Patrón**: Customer/Supplier — Inventory Management actúa como fuente de verdad de las materias primas, RawMaterialBatch, cantidades disponibles y estados de los lotes. Product Batch Management consulta esta información para seleccionar los lotes utilizados durante una fabricación y registrar la cantidad consumida. Posteriormente, Inventory Management actualiza el availableAmount del RawMaterialBatch correspondiente, manteniendo separadas las responsabilidades de inventario y producción.

##### **Inventory Management ↔ Compliance & Alerting**

- **Relación**: Upstream (Inventory Management) / Downstream (Compliance & Alerting)
- **Patrón**: Customer/Supplier — Inventory Management comunica cambios relevantes en el estado de un RawMaterialBatch, como su observación o rechazo. Compliance & Alerting consume estos eventos para determinar si existe un impacto sobre productos fabricados y si es necesario iniciar un proceso de evaluación o seguimiento.

##### **Inventory Management ↔ Reporting & Audit**

- **Relación**: Upstream (Inventory Management) / Downstream (Reporting & Audit)
- **Patrón**: Anti-Corruption Layer (ACL) — Reporting & Audit consume información relacionada con materias primas, RawMaterialBatch, stock y cambios de estado, pero la transforma a su propio modelo de reportes, auditoría y trazabilidad. El ACL evita que Reporting dependa directamente de las entidades internas utilizadas por Inventory Management.

##### **Equipment Management ↔ Tracking & Telemetry**

- **Relación**: Upstream (Equipment Management) / Downstream (Tracking & Telemetry)
- **Patrón**: Anti-Corruption Layer (ACL) — Equipment Management mantiene la identidad y el estado del dispositivo físico, mientras que Tracking & Telemetry administra las mediciones, configuraciones ambientales y ActuationEvents generados por dicho dispositivo. Tracking consume únicamente la referencia necesaria del equipo y la adapta a su propio modelo, evitando mezclar el dominio de mantenimiento y gestión de equipos con el dominio de telemetría.

##### **Equipment Management ↔ Product Batch Management**

- **Relación**: Upstream (Equipment Management) / Downstream (Product Batch Management)
- **Patrón**: Customer/Supplier — Equipment Management proporciona los equipos registrados y su estado operativo. Product Batch Management consume esta información para asociar los equipos utilizados en una fabricación y evitar, cuando las reglas del dominio así lo indiquen, el uso de equipos que se encuentren en mantenimiento o fuera de servicio.

##### **Equipment Management ↔ Reporting & Audit**

- **Relación**: Upstream (Equipment Management) / Downstream (Reporting & Audit)
- **Patrón**: Anti-Corruption Layer (ACL) — Reporting & Audit consume información de mantenimiento, disponibilidad y cambios de estado de los equipos, transformándola en registros de auditoría y reportes. Esta separación permite que Equipment Management continúe siendo la fuente de verdad del equipo físico.

##### **Tracking & Telemetry ↔ Compliance & Alerting**

- **Relación**: Upstream (Tracking & Telemetry) / Downstream (Compliance & Alerting)
- **Patrón**: Anti-Corruption Layer (ACL) — Tracking & Telemetry detecta desviaciones a partir de las mediciones ambientales y registra estados como NORMAL, WARNING o CRITICAL, así como los ActuationEvents ejecutados. Compliance & Alerting recibe esta información y la transforma en conceptos propios de su dominio, como Alert, Severity, Acknowledgement, Resolution e Impact Assessment. El ACL mantiene diferenciados el estado físico del ambiente y el ciclo de vida de una alerta.

##### **Tracking & Telemetry ↔ Reporting & Audit**

- **Relación**: Upstream (Tracking & Telemetry) / Downstream (Reporting & Audit)
- **Patrón**: Anti-Corruption Layer (ACL) — Tracking & Telemetry proporciona mediciones ambientales, estados y actuaciones reales. Reporting & Audit consume estos datos y los transforma en KPI, Environmental Metrics, reportes y vistas históricas, evitando que su modelo quede acoplado directamente a Measurement, Environmental Profile o ActuationEvent.

##### **Product Batch Management ↔ Compliance & Alerting**

- **Relación**: Upstream (Product Batch Management) / Downstream (Compliance & Alerting)
- **Patrón**: Anti-Corruption Layer (ACL) — Product Batch Management mantiene la trazabilidad de los lotes fabricados, incluyendo las materias primas, equipos y personal involucrados. Compliance & Alerting consulta esta información cuando necesita evaluar qué ProductBatch pueden encontrarse afectados por un RawMaterialBatch observado o rechazado. El ACL permite traducir dicha trazabilidad al modelo de Impact Assessment utilizado por Compliance.

##### **Product Batch Management ↔ Reporting & Audit**

- **Relación**: Upstream (Product Batch Management) / Downstream (Reporting & Audit)
- **Patrón**: Anti-Corruption Layer (ACL) — Product Batch Management es responsable de la información de los productos y lotes fabricados. Reporting & Audit consume estos datos para construir vistas de trazabilidad y evidencia histórica, adaptándolos a su modelo de Report y Traceability View sin convertirse en una segunda fuente de verdad.

##### **Compliance & Alerting ↔ Reporting & Audit**

- **Relación**: Upstream (Compliance & Alerting) / Downstream (Reporting & Audit)
- **Patrón**: Anti-Corruption Layer (ACL) — Compliance & Alerting proporciona el ciclo completo de las alertas, incluyendo su creación, reconocimiento y resolución. Reporting & Audit transforma esta información en evidencia histórica, indicadores y reportes, conservando la independencia entre el dominio encargado de gestionar incidentes y el dominio encargado de analizarlos.

Con base en el análisis realizado, se establecieron los siguientes patrones de relación entre los Bounded Contexts de QualiTrack:

- **Anti-Corruption Layer (ACL)** entre Identity & Access Management → Payments & Subscriptions, Identity & Access Management → Laboratory Management, Inventory Management → Reporting & Audit, Equipment Management → Tracking & Telemetry, Equipment Management → Reporting & Audit, Tracking & Telemetry → Compliance & Alerting, Tracking & Telemetry → Reporting & Audit, Product Batch Management → Compliance & Alerting, Product Batch Management → Reporting & Audit y Compliance & Alerting → Reporting & Audit.

- **Customer/Supplier** entre Identity & Access Management → Reporting & Audit, Payments & Subscriptions → Laboratory Management, Payments & Subscriptions → Reporting & Audit, Laboratory Management → Equipment Management, Laboratory Management → Tracking & Telemetry, Laboratory Management → Inventory Management, Laboratory Management → Product Batch Management, Inventory Management → Product Batch Management, Inventory Management → Compliance & Alerting y Equipment Management → Product Batch Management.

### 4.1.3. Software Architecture. 

#### 4.1.3.1. Software Architecture System Landscape Diagram. 

#### 4.1.3.2. Software Architecture Context Level Diagrams. 

#### 4.1.3.3. Software Architecture Container Level Diagrams. 

#### 4.1.3.4. Software Architecture Deployment Diagrams. 
