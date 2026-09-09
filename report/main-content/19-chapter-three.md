# Capítulo III: Requirements Specification

En este capítulo se especifican los requisitos funcionales y técnicos de **QualiTrack**, tomando como base las necesidades identificadas para los responsables de calidad y supervisión, el personal operativo de laboratorios y almacenes farmacéuticos, así como los visitantes interesados en conocer la solución.

Las historias han sido agrupadas en Epics que representan las principales capacidades del producto. Estas capacidades se encuentran relacionadas con los Bounded Contexts definidos para QualiTrack: **Identity & Access Management, Payments & Subscriptions, Laboratory Management, Inventory Management, Equipment Management, Tracking & Telemetry, Product Batch Management, Compliance & Alerting y Reporting & Audit**.

Las User Stories siguen la estructura **Como [actor], quiero [objetivo], para [beneficio]**, buscando representar una necesidad desde el punto de vista del usuario y evitando describir directamente cómo debe construirse la solución.

También se incluyen Technical Stories para aquellas capacidades necesarias para el funcionamiento de la solución que no representan una interacción directa con un usuario final, como los servicios REST, el servicio Edge, la aplicación embebida del dispositivo y las integraciones con servicios externos.

Los criterios de aceptación utilizan la estructura **Dado / Cuando / Entonces**, de manera que puedan ser comprobados posteriormente mediante pruebas.
