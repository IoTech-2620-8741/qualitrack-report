# Conclusiones
## Conclusiones y recomendaciones

**AV1:**

 Durante esta primera etapa se logró consolidar una base sólida para **QualiTrack**, integrando la investigación de usuarios con los artefactos de UX, el diseño del dominio mediante **Ubiquitous Language y Event Storming**, la definición de **Bounded Contexts** y su representación mediante **C4**, además de un **Product Backlog trazable y priorizado**. Este trabajo permitió relacionar las necesidades del sector farmacéutico con funcionalidades concretas de monitoreo IoT, trazabilidad, inventario y control de desviaciones, estableciendo una arquitectura y una planificación coherentes para continuar con el desarrollo de la solución.

**TB1:**

En esta etapa el diseño de QualiTrack se trasladó a productos desplegados. El **Capítulo V** definió la guía de estilos para la web, el móvil y los dispositivos IoT, la arquitectura de información, el diseño de la Landing Page y de las aplicaciones (wireframes, wireflows, mock-ups, user flows y prototipos) y el diseño de los dispositivos IoT con el enfoque de 12 pasos: un **Monitor de Ambiente** y un **Monitor de Contenedor** basados en ESP32, conectados a un **Edge** en Raspberry Pi 4 que conserva las lecturas cuando no hay conexión a Internet. El **Capítulo VI** documentó la configuración del entorno, GitFlow, Conventional Commits, las convenciones de código y la configuración de despliegue.

En el **Sprint 1** el equipo completó 101 User Stories (190 Story Points) y 182 tareas. Se publicó la **Landing Page** en GitHub Pages y la **Web Application** en Firebase Hosting, integrada con el **RESTful API** desplegado en Azure Container Apps con su base de datos en Azure Database for MySQL, documentado con Swagger y desplegado de forma continua con GitHub Actions. Con ello, los responsables de calidad, operarios y auditores ya pueden registrar su laboratorio, supervisar las condiciones ambientales, controlar materiales y lotes y atender alertas desde una aplicación desplegada, lo que confirma la viabilidad de la arquitectura definida en el Capítulo IV.

**AV2:**

En esta etapa QualiTrack incorporó la capa IoT y conectó sus aplicaciones a servicios reales. En el **Sprint 2** el equipo completó 115 User Stories (219 Story Points) y 521 tareas, organizando el trabajo por Bounded Context. Se desarrollaron las **Embedded Applications** del **Monitor de Ambiente** y del **Monitor de Contenedor** sobre el ModestIoT Nano Framework, simuladas en Wokwi, que reaccionan localmente ante una desviación y envían sus lecturas al **Edge Service**, preparado para la estación local con Docker Compose. El Edge autentica a cada dispositivo con su propia API key, le entrega su perfil y sincroniza las lecturas con el **Cloud REST API**, desplegado en Azure con todos los Bounded Contexts del negocio. Sobre esos servicios se publicaron la **Web Application** 2.5.0 en Firebase Hosting y la primera versión estable de la **Mobile Application**, distribuida con Firebase App Distribution, y cinco de los productos cuentan con suites de pruebas automatizadas que se ejecutan en GitHub Actions, con más de 1 400 pruebas.

La solución también se contrastó con usuarios. La entrevista de validación con un analista de control de calidad confirmó que el mayor valor percibido es tener la información a la mano para decidir con rapidez, y señaló como oportunidades la capacidad del contenedor, las alertas por color y el gráfico de picos en los reportes. Las evaluaciones heurísticas identificaron 14 problemas en la aplicación web y 11 en la aplicación móvil, y el **Capítulo V** se actualizó con el diseño de los dispositivos tal como se construyeron. Con ello se obtuvo la primera versión integrada de QualiTrack; queda pendiente comprobarla con los dispositivos físicos, ya que en este sprint los nodos se validaron en simulación.

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

**AV2:**

- Construir el **prototipo físico** de los dos dispositivos e instalar el Edge Service en la Raspberry Pi 4 para comprobar el flujo completo con dispositivos reales, desde la lectura del sensor hasta la Web Application y la Mobile Application.
- Corregir los problemas de severidad 3 de las **evaluaciones heurísticas** (cuatro en la aplicación web y uno en la móvil) y unificar los nombres de los estados y acciones entre ambas aplicaciones.
- Completar las **entrevistas de validación** con el personal operativo de laboratorios y almacenes, y validar con usuarios la capacidad del contenedor, las alertas por color y el gráfico de picos en los reportes.
- Agregar pruebas automatizadas a la Embedded Application del **Monitor de Contenedor**, como las del Monitor de Ambiente, y pruebas de aceptación de las User Stories.
- Mantener alineados el diseño de los Capítulos IV y V, la implementación y los contratos entre los dispositivos, el Edge y la nube durante el Sprint 3.

## Video About-the-Team

<div align="center">
  <a href="https://shorturl.at/vze0n">
    <img src="../assets/img/end-of-report/video-about-the-team.jpg" alt="Video About-the-Team de IoTech" width="100%">
  </a>
</div>

<br>

El video About the Team presenta al equipo **IoTech** y el aporte de cada integrante al desarrollo de **QualiTrack**
durante el Sprint 2. Tiene una duración de 10 minutos y 11 segundos, está en formato Full HD (1920 × 1080) y su
narración está en español.

Cada integrante aparece identificado con su nombre y explica, en primera persona, en qué productos trabajó y qué
construyó:

1. **Ruiz Madrid, Billy Jake.** Unificó el encabezado y el pie de página de la Landing Page y dejó el inglés como idioma
   por defecto. Organizó cada Bounded Context de la aplicación web según Domain-Driven Design, corrigió los módulos de
   alertas y reportes y completó la misma estructura en el backend, conectando los contextos mediante fachadas y capas
   ACL. Publicó las correcciones de usabilidad de la aplicación móvil y programó el firmware del Monitor de Ambiente
   (calidad de aire y movimiento, LED RGB y buzzer), probado en Wokwi. Destaca que en IoT el acuerdo entre capas debe
   ser exacto, porque un solo dato mal enviado hace que se rechace una lectura.
2. **Baca Camargo, Vitaly Arturo.** Participó como desarrollador frontend y UX: investigó a los usuarios mediante
   entrevistas y el análisis de competidores, diseñó las interfaces en Figma y organizó los diseños web y móvil por
   flujos de usuario, con sus escenarios exitosos y alternativos. También compartió prototipos para validar la
   navegación antes de implementarla.
3. **Cutiri Agüero, Fabrizio Alexander.** Se encargó del Bounded Context Inventory Management en la aplicación móvil, la
   aplicación web y el backend (registro de lotes de materia prima y su consumo en la producción de lotes). Configuró la
   autenticación del Edge Service y creó los endpoints del backend para que el Edge genere su API key, obtenga sus
   dispositivos IoT y registre sus mediciones. Además, actualizó el frontend de Angular 21 a Angular 22 y refactorizó los
   estilos de la Landing Page.
4. **Lopez Roman, Franco Mauricio.** Trabajó el Bounded Context Product Batch Management en la aplicación web, la
   aplicación móvil y el Edge Service: vistas de lotes, filtros por rango de fechas y componentes compartidos. Diseñó
   flujos de tareas en Figma y guió las entrevistas de validación con operadores de laboratorio.
5. **Torres Apolinario, Giovany Smith.** Desarrolló junto con Dyron Huapaya el Bounded Context Compliance: en el backend,
   las alertas de cumplimiento y su historial. Mejoró la presentación de los datos en la aplicación web y los títulos de
   las pantallas de la aplicación móvil, desarrolló la parte inicial del Edge Service y su conexión con la nube, y apoyó
   el diseño de la aplicación embebida en Wokwi.
6. **Montes Ramos, Henry Jaredt.** En el Edge Service mejoró la validación de la URL de conexión con la API en la nube
   (protocolo, host y puerto) y añadió pruebas para rechazar direcciones mal formadas. En la aplicación web agregó pruebas
   del manejo centralizado de errores del API. Actualizó las imágenes del equipo en la Landing Page y en el reporte, y
   revisó las correcciones pendientes de la aplicación móvil.
7. **Huapaya Galindo, Dyron.** Contribuyó con mejoras en los repositorios del reporte, el sitio web, la aplicación web, el
   backend y la aplicación móvil, organizadas por objetivos del Sprint 2, y lideró el despliegue de la aplicación web, el
   backend y la aplicación móvil.
8. **Guzmán Cabrejos, Yaku Mateo.** Trabajó el Bounded Context Equipment Management (equipos de laboratorio y
   dispositivos IoT de cada ambiente) en el backend, el Edge Service, la aplicación web y la aplicación móvil. También se
   encargó de IAM y Profiles en la aplicación web y de la arquitectura de la solución en el modelo C4.
9. **Quiroz Caceres, Adrian Alonso.** Cierra el video con su presentación.

En su intervención, Yaku Guzmán resume además la forma de trabajo del equipo: coordinar antes de modificar el trabajo
de un compañero y revisar los cambios entre todos antes de integrarlos, lo que permitió avanzar en paralelo y cumplir
los objetivos de cada sprint. Como aprendizaje del curso, destaca haber construido una solución IoT completa, desde el
sensor hasta la nube, en un equipo de nueve personas.

**Enlace del video About-the-Team:** [https://shorturl.at/vze0n](https://shorturl.at/vze0n)
