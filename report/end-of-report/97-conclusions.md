# Conclusiones
## Conclusiones y recomendaciones

**AV1:**

 Durante esta primera etapa se logró consolidar una base sólida para **QualiTrack**, integrando la investigación de usuarios con los artefactos de UX, el diseño del dominio mediante **Ubiquitous Language y Event Storming**, la definición de **Bounded Contexts** y su representación mediante **C4**, además de un **Product Backlog trazable y priorizado**. Este trabajo permitió relacionar las necesidades del sector farmacéutico con funcionalidades concretas de monitoreo IoT, trazabilidad, inventario y control de desviaciones, estableciendo una arquitectura y una planificación coherentes para continuar con el desarrollo de la solución.

**TB1:**

En esta etapa el diseño de QualiTrack se trasladó a productos desplegados. El **Capítulo V** definió la guía de estilos para la web, el móvil y los dispositivos IoT, la arquitectura de información, el diseño de la Landing Page y de las aplicaciones (wireframes, wireflows, mock-ups, user flows y prototipos) y el diseño de los dispositivos IoT con el enfoque de 12 pasos: un **Monitor de Ambiente** y un **Monitor de Contenedor** basados en ESP32, conectados a un **Edge** en Raspberry Pi 4 que conserva las lecturas cuando no hay conexión a Internet. El **Capítulo VI** documentó la configuración del entorno, GitFlow, Conventional Commits, las convenciones de código y la configuración de despliegue.

En el **Sprint 1** el equipo completó 101 User Stories (190 Story Points) y 182 tareas. Se publicó la **Landing Page** en GitHub Pages y la **Web Application** en Firebase Hosting, integrada con el **RESTful API** desplegado en Azure Container Apps con su base de datos en Azure Database for MySQL, documentado con Swagger y desplegado de forma continua con GitHub Actions. Con ello, los responsables de calidad, operarios y auditores ya pueden registrar su laboratorio, supervisar las condiciones ambientales, controlar materiales y lotes y atender alertas desde una aplicación desplegada, lo que confirma la viabilidad de la arquitectura definida en el Capítulo IV.

 ## Recomendaciones

**AV1:**

 - Mantener una **trazabilidad clara y consistente** entre la investigación, los artefactos de UX, los Bounded Contexts, la arquitectura C4 y el Product Backlog.
- Mantener actualizado el **Product Backlog** conforme se obtengan nuevos resultados de validaciones con usuarios y decisiones técnicas.
- Continuar utilizando **Event Storming y Domain-Driven Design** para validar y ajustar los Bounded Contexts conforme evolucione el proyecto.
- Asegurar que la arquitectura C4 y los componentes técnicos mantengan coherencia con la separación de dominios definida previamente.
- Priorizar en la siguiente etapa el desarrollo del **Landing Page y los principales flujos del frontend**, comenzando por funcionalidades de alto valor y con menores dependencias.
- Realizar una revisión integral de consistencia antes de la entrega final, verificando que los capítulos de investigación, dominio, arquitectura y backlog estén correctamente relacionados.

**TB1:**

- Implementar en el Sprint 2 el **Edge API** (Flask, Peewee y SQLite) y las **Embedded Applications** de los dos dispositivos, junto con el prototipo físico, para que la telemetría que hoy consume la Web Application provenga de los dispositivos IoT.
- Desplegar la primera versión de la **aplicación móvil** con los flujos ya diseñados en el Capítulo V.
- Incorporar **pruebas automatizadas** de la Web Application, que en el Sprint 1 se verificó de forma manual, para complementar la suite del RESTful API.
- Realizar las **entrevistas de validación** y las evaluaciones heurísticas con usuarios de ambos segmentos, y ajustar el Product Backlog según sus resultados.
- Mantener alineados el diseño (Capítulos IV y V) y la implementación a medida que se agreguen el Edge, los dispositivos y la aplicación móvil.
