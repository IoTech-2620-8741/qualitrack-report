# Capítulo IV: Solution Software Design 
Este capitulo describe el diseño de software de la solución para la plataforma QualiTrack, incluyendo los niveles estratégicos y tácticos del diseño impulsado por el dominio **(Domain Driven Design)**. Se detallan los procesos de descubrimiento de contextos, modelado de flujos de mensajes del dominio, mapeo de contextos y la arquitectura del software a diferentes niveles **(C4)**.
Tambien se incluyen diagramas de arquitectura del software, diagramas de componentes y diagramas de código para cada contexto delimitado identificado en el diseño.

## 4.1. Strategic-Level Domain-Driven Design. 
En esta sección se aborda el enfoque de Strategic-Level Domain-Driven Design, 
el cual permite definir una vision clara del dominio de la plataforma QualiTrack, identificar los contextos delimitados y establecer las relaciones entre ellos. Se incluyen los siguientes subtemas:
### 4.1.1. Design-Level EventStorming.

El EventStorming es una técnica de modelado colaborativa que permite descubrir y comprender el dominio de la plataforma QualiTrack, identificar los eventos del dominio, 
los comandos, actores, politicas, modelo de lectura, sistemas externos y agregados. Este enfo permite definir los contextos delimitados y establecer las relaciones entre ellos. Se incluyen los siguientes pasos:

#### 4.1.1.1 Candidate Context Discovery. 
#### 4.1.1.2 Domain Message Flows Modeling. 
#### 4.1.1.3 Bounded Context Canvases.  
### 4.1.2. Context Mapping.
### 4.1.3. Software Architecture. 
#### 4.1.3.1. Software Architecture System Landscape Diagram. 
#### 4.1.3.2. Software Architecture Context Level Diagrams. 
#### 4.1.3.3. Software Architecture Container Level Diagrams. 
#### 4.1.3.4. Software Architecture Deployment Diagrams. 
## 4.2. Tactical-Level Domain-Driven Design.
### 4.2.X. Bounded Context: <Bounded Context Name> 
#### 4.2.X.1 Domain Layer.
#### 4.2.X.2 Interface Layer.
#### 4.2.X.3 Application Layer.
#### 4.2.X.4 Infrastructure Layer.
#### 4.2.X.5 Bounded Context Software Architecture Component Level Diagrams.
#### 4.2.X.6 Bounded Context Software Architecture Code Level Diagrams.
##### 4.2.X.6.1 Bounded Context Domain Layer Class Diagrams. 
##### 4.2.X.6.2 Bounded Context Database Design Diagram. 