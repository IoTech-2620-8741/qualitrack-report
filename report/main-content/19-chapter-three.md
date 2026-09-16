# Capítulo III: Requirements Specification

En este capítulo se presentan los requisitos de **QualiTrack**, definidos a partir de las necesidades identificadas para los responsables de calidad y supervisión, el personal operativo de laboratorios y almacenes farmacéuticos, así como los visitantes interesados en conocer y utilizar la solución.

Los requisitos se organizan en **Epics**, los cuales agrupan las principales capacidades de QualiTrack y permiten relacionar las necesidades de los usuarios con las funcionalidades que serán desarrolladas. Estas capacidades están vinculadas con los Bounded Contexts definidos para la solución: **Identity & Access Management, Payments & Subscriptions, Laboratory Management, Inventory Management, Equipment Management, Tracking & Telemetry, Product Batch Management, Compliance & Alerting y Reporting & Audit**.

Las **User Stories (US)** representan necesidades o acciones que realizan los usuarios finales de QualiTrack. Estas siguen la estructura **Como [actor], quiero [objetivo], para [beneficio]**, de manera que cada historia exprese una necesidad concreta desde la perspectiva del usuario y pueda desarrollarse de forma independiente.

También se incluyen **Technical Stories (TS)** para aquellas capacidades técnicas que no representan una interacción directa con un usuario final, como la implementación de servicios REST, autenticación, persistencia de datos, comunicación entre Edge y Cloud, sincronización de información e integración con servicios externos.

Para las funcionalidades relacionadas directamente con el dispositivo IoT se utilizan **Maker Stories (MS)**. Estas representan el trabajo necesario para diseñar, programar, integrar y validar el prototipo físico de QualiTrack, incluyendo sensores, actuadores, indicadores, comunicación con el Edge API y comportamiento del dispositivo ante diferentes condiciones ambientales.

Las historias se han dividido buscando que cada una tenga una responsabilidad concreta y un alcance reducido, de manera que puedan ser estimadas, desarrolladas y probadas de forma independiente dentro de los Sprints.

Los criterios de aceptación se redactan utilizando la estructura **Dado que / Cuando / Entonces**, siguiendo el enfoque de Gherkin. Estos criterios describen condiciones verificables que permiten determinar cuándo una historia cumple correctamente con el comportamiento esperado.

De esta manera, las User Stories, Technical Stories y Maker Stories permiten cubrir de forma organizada los diferentes productos que forman parte de QualiTrack: **Landing Page, Web Application, Mobile Application, Cloud Backend, Edge Service y Embedded Application**.

## Actores considerados

| Actor | Descripción |
|---|---|
| **Visitante** | Persona que accede al Landing Page para conocer QualiTrack antes de registrarse. |
| **Usuario registrado** | Persona que ya cuenta con una cuenta y utiliza funciones de acceso, recuperación o suscripción. |
| **Responsable de calidad** | Usuario encargado de configurar, supervisar y revisar la información de calidad, monitoreo, alertas, trazabilidad y reportes. |
| **Personal operativo** | Usuario que trabaja en el laboratorio o almacén y atiende las situaciones que ocurren directamente en el ambiente supervisado. |
| **Developer** | Integrante del equipo que desarrolla e integra APIs, aplicaciones, servicios Cloud y Edge. |
| **Maker** | Integrante del equipo encargado del diseño, ensamblaje, programación y validación del dispositivo IoT físico y su aplicación embebida. |
