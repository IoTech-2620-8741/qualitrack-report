## 4.1. Strategic-Level Domain-Driven Design. 
En esta sección se aborda el enfoque de Strategic-Level Domain-Driven Design, 
el cual permite definir una vision clara del dominio de la plataforma QualiTrack, identificar los contextos delimitados y establecer las relaciones entre ellos. Se incluyen los siguientes subtemas:
### 4.1.1. Design-Level EventStorming.

El EventStorming es una técnica de modelado colaborativa que permite descubrir y comprender el dominio de la plataforma QualiTrack, identificar los eventos del dominio, 
los comandos, actores, politicas, modelo de lectura, sistemas externos y agregados. Este enfo permite definir los contextos delimitados y establecer las relaciones entre ellos. Se incluyen los siguientes pasos:

**Paso 1: Event**

**Paso 2: Timelines**

**Paso 3: Pivotal Points**

**Paso 4: Commands**

**Paso 5: Policies and Actors**


#### 4.1.1.1 Candidate Context Discovery. 
#### 4.1.1.2 Domain Message Flows Modeling. 
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
