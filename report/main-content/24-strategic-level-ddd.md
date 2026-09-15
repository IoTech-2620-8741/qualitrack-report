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


### 4.1.3. Software Architecture. 

#### 4.1.3.1. Software Architecture System Landscape Diagram. 

#### 4.1.3.2. Software Architecture Context Level Diagrams. 

#### 4.1.3.3. Software Architecture Container Level Diagrams. 

#### 4.1.3.4. Software Architecture Deployment Diagrams. 
