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

En esta sección se presenta el proceso de elaboración del **Context Map de QualiTrack**, mediante el cual se representan las relaciones estructurales existentes entre los distintos Bounded Contexts identificados en el dominio.

El análisis permite establecer las responsabilidades de cada contexto, las direcciones de dependencia **Upstream/Downstream** y los patrones de relación de **Domain-Driven Design (DDD)** utilizados para mantener la autonomía de sus respectivos modelos.

El proceso de Context Mapping se desarrolló a partir de la información obtenida durante el análisis estratégico del dominio, considerando las responsabilidades de negocio, el Ubiquitous Language, las principales decisiones del dominio y las necesidades de colaboración identificadas para cada Bounded Context.

A partir de esta información se evaluaron diferentes alternativas de organización de las capacidades del negocio. Para cada alternativa se consideró la posibilidad de combinar, separar o distribuir determinadas capabilities, utilizando como criterios principales la cohesión del dominio, el nivel de acoplamiento entre contextos, la autonomía de sus modelos y la posible duplicación de responsabilidades.

Como resultado del análisis se identificaron los siguientes Bounded Contexts:

- Identity & Access Management (IAM)
- Payments & Subscriptions
- Laboratory Management
- Equipment Management
- Tracking & Telemetry
- Inventory Management
- Product Batch Management
- Compliance & Alerting
- Reporting & Audit

---

#### Bounded Context Analysis

Antes de establecer las relaciones del Context Map, cada Bounded Context fue analizado individualmente mediante un **Bounded Context Canvas**.

Este artefacto permitió representar el propósito de cada contexto, su clasificación estratégica, sus roles dentro del dominio, las comunicaciones entrantes y salientes, su Ubiquitous Language, las principales decisiones de negocio, los supuestos considerados, las métricas de verificación y las preguntas abiertas.

El análisis individual de los contextos permitió establecer límites claros entre las diferentes responsabilidades del dominio antes de definir sus relaciones dentro del Context Map.

---
##### Identity & Access Management (IAM) Context - Canvas

Identity & Access Management administra la identidad utilizada por los diferentes contextos de QualiTrack.

Su principal responsabilidad consiste en mantener separados los conceptos relacionados con identidad y autenticación respecto de los modelos específicos utilizados por los demás dominios.

Otros Bounded Contexts utilizan únicamente referencias como `UserId` para identificar usuarios sin incorporar directamente las entidades internas de IAM.

![Bounded Context Canvas - Identity & Access Management](../assets/img/chapter-iv/bc-iam.png)

---

##### Payments & Subscriptions Context - Canvas

Payments & Subscriptions administra los planes, pagos, suscripciones y estados relacionados con la relación comercial entre los usuarios u organizaciones y QualiTrack.

Este contexto mantiene separadas las reglas comerciales de las responsabilidades operativas del laboratorio y actúa como fuente de verdad respecto al estado de las suscripciones.

![Bounded Context Canvas - Payments & Subscriptions](../assets/img/chapter-iv/bc-payments-subscriptions.png)

---

##### Laboratory Management Context - Canvas

Laboratory Management administra los laboratorios, sus ambientes físicos y la relación existente entre los usuarios y la organización mediante conceptos como `Laboratory Membership`.

Este contexto proporciona la estructura organizacional utilizada como referencia por otros dominios sin transferirles la responsabilidad de administrar laboratorios y ambientes.

![Bounded Context Canvas - Laboratory Management](../assets/img/chapter-iv/bc-laboratory-management.png)

---

##### Equipment Management Context - Canvas

Equipment Management administra los equipos, instrumentos y dispositivos IoT registrados dentro de los laboratorios, incluyendo su identidad, ubicación y estado operativo.

Otros Bounded Contexts utilizan referencias de los equipos cuando requieren relacionarlos con procesos de telemetría, fabricación o reporting, sin asumir la responsabilidad de administrar dichos activos.

![Bounded Context Canvas - Equipment Management](../assets/img/chapter-iv/bc-equipment-management.png)

---

##### Tracking & Telemetry Context - Canvas

Tracking & Telemetry administra las mediciones ambientales, configuraciones de monitoreo, estados interpretados y actuaciones asociadas a los dispositivos IoT.

Este contexto representa el estado físico observado dentro de los ambientes mediante conceptos como `Measurement`, `Environmental Profile`, estados `NORMAL`, `WARNING` o `CRITICAL` y `ActuationEvent`.

![Bounded Context Canvas - Tracking & Telemetry](../assets/img/chapter-iv/bc-tracking-telemetry.png)

---

##### Inventory Management Context - Canvas

Inventory Management administra las materias primas, `RawMaterialBatch`, cantidades disponibles, stock y estados asociados con los lotes de materia prima.

Este contexto constituye la fuente de verdad respecto a la disponibilidad y estado de los materiales utilizados durante los procesos de fabricación.

![Bounded Context Canvas - Inventory Management](../assets/img/chapter-iv/bc-inventory-management.png)

---

##### Product Batch Management Context - Canvas

Product Batch Management administra los productos y lotes fabricados, así como la información necesaria para mantener su trazabilidad.

Cada `ProductBatch` puede relacionarse con las materias primas, equipos, laboratorio y personal involucrado durante el proceso de fabricación, manteniendo separadas las responsabilidades pertenecientes a dichos dominios.

![Bounded Context Canvas - Product Batch Management](../assets/img/chapter-iv/bc-product-batch-management.png)

---

##### Compliance & Alerting Context - Canvas

Compliance & Alerting administra el ciclo de vida de las alertas e incidentes identificados dentro de QualiTrack.

El contexto transforma información proveniente de otros dominios en conceptos propios como `Alert`, `Severity`, `Acknowledgement`, `Resolution` e `Impact Assessment`.

De esta manera se mantiene separada la detección física de una condición respecto de su evaluación, seguimiento y resolución.

![Bounded Context Canvas - Compliance & Alerting](../assets/img/chapter-iv/bc-compliance-alerting.png)

---

##### Reporting & Audit Context - Canvas

Reporting & Audit administra reportes, indicadores, información histórica, evidencia de auditoría y vistas de trazabilidad.

Consume información proveniente de distintos Bounded Contexts y la transforma en conceptos propios como `Report`, `Audit Record`, `Traceability View`, `KPI` y `Environmental Metrics`, sin convertirse en una segunda fuente de verdad de los datos operativos.

![Bounded Context Canvas - Reporting & Audit](../assets/img/chapter-iv/bc-reporting-audit.png)

---

#### Context Mapping Design Alternatives

Una vez delimitadas las responsabilidades de cada Bounded Context, se evaluaron distintas alternativas de Context Mapping antes de seleccionar la organización definitiva.

El análisis consideró diferentes escenarios de reorganización de capabilities, buscando determinar si determinadas responsabilidades debían combinarse, mantenerse independientes o distribuirse entre diferentes contextos.

---

##### Candidate Context Map 1 — Integration of Tracking & Telemetry and Compliance & Alerting

**Design Question:** ¿Qué ocurriría si las capabilities relacionadas con la gestión de alertas fueran incorporadas dentro de Tracking & Telemetry?

Esta alternativa surge debido a la estrecha relación existente entre las mediciones ambientales y la generación de alertas.

Tracking & Telemetry identifica estados y desviaciones a partir de las mediciones recibidas, mientras que Compliance & Alerting utiliza esta información para iniciar y administrar el ciclo de vida de una alerta.

La alternativa plantea integrar ambas responsabilidades dentro de un único Bounded Context.

![Candidate Context Map 1 - Tracking & Telemetry and Compliance & Alerting](../assets/img/chapter-iv/candidate-context-map-1.png)

La principal ventaja de esta alternativa sería reducir las comunicaciones necesarias entre ambos contextos, debido a que la detección de una condición ambiental y la gestión de la alerta asociada podrían realizarse dentro del mismo límite.

Sin embargo, esta organización mezclaría dos responsabilidades conceptualmente diferentes.

Tracking & Telemetry representa principalmente el estado físico observado mediante mediciones, configuraciones y actuaciones, mientras que Compliance & Alerting administra el ciclo de vida de incidentes mediante conceptos como Alert, Severity, Acknowledgement, Resolution e Impact Assessment.

Combinar ambas responsabilidades reduciría la cohesión del modelo y dificultaría que ambos dominios evolucionaran independientemente.

Por esta razón, la alternativa fue **rechazada** y se decidió mantener Tracking & Telemetry y Compliance & Alerting como Bounded Contexts independientes.

---

##### Candidate Context Map 2 — Integration of Inventory Management and Product Batch Management

**Design Question:** ¿Qué ocurriría si Inventory Management y Product Batch Management formaran un único Bounded Context?

Esta alternativa se consideró debido a que los procesos de fabricación necesitan conocer las materias primas y `RawMaterialBatch` disponibles, además de registrar las cantidades utilizadas durante la producción.

![Candidate Context Map 2 - Inventory Management and Product Batch Management](../assets/img/chapter-iv/candidate-context-map-2.png)

La integración permitiría simplificar inicialmente determinadas operaciones relacionadas con el consumo de materias primas, debido a que el inventario y los lotes fabricados formarían parte del mismo modelo.

Sin embargo, ambos dominios poseen responsabilidades diferentes.

Inventory Management administra materias primas, cantidades disponibles y estados del inventario, mientras que Product Batch Management administra la fabricación y trazabilidad de los productos terminados.

Integrarlos dentro de un mismo límite produciría un contexto con demasiadas responsabilidades y aumentaría el acoplamiento entre el ciclo de vida del inventario y el ciclo de vida de los productos fabricados.

Por esta razón, la alternativa fue **rechazada** y ambos dominios se conservaron como Bounded Contexts independientes relacionados mediante un contrato explícito.

---

##### Candidate Context Map 3 — Distribution of Reporting & Audit Capabilities

**Design Question:** ¿Qué ocurriría si las capabilities de Reporting & Audit fueran distribuidas entre los demás Bounded Contexts en lugar de mantener un contexto independiente?

Esta alternativa plantea que cada dominio sea responsable tanto de sus operaciones principales como de sus propios reportes, indicadores, información histórica y auditoría.

Por ejemplo, Inventory Management podría generar sus propios reportes de inventario, Tracking & Telemetry sus métricas históricas y Equipment Management los reportes relacionados con los equipos.

![Candidate Context Map 3 - Distributed Reporting and Audit](../assets/img/chapter-iv/candidate-context-map-3.png)

La principal ventaja sería reducir la dependencia hacia un contexto especializado en reporting.

Sin embargo, esta alternativa produciría duplicación de responsabilidades relacionadas con auditoría, generación de indicadores, construcción de reportes y almacenamiento de información histórica.

Además, determinados reportes y vistas de trazabilidad requieren información proveniente de múltiples dominios, por lo que una distribución de estas capabilities aumentaría la complejidad necesaria para construir información consolidada.

Por estas razones, la alternativa fue **rechazada** y Reporting & Audit se mantuvo como un Bounded Context independiente.

---

### 4.1.3. Software Architecture. 

#### 4.1.3.1. Software Architecture System Landscape Diagram. 

#### 4.1.3.2. Software Architecture Context Level Diagrams. 

#### 4.1.3.3. Software Architecture Container Level Diagrams. 

#### 4.1.3.4. Software Architecture Deployment Diagrams. 
