# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management
En esta sección se establecen las decisiones, convenciones y herramientas utilizadas por el equipo ClosedSource para gestionar de manera consistente el desarrollo, integración y despliegue de los diferentes productos digitales que conforman QualiTrack. La solución IoT está compuesta por seis productos principales: Landing Page, Web Application, Mobile Application, Backend Web Service, Edge Application y Embedded Application.

Durante el ciclo de vida del proyecto se definen prácticas para el control y organización del código fuente, la configuración de los entornos de desarrollo y la preparación de los entornos de despliegue correspondientes a cada producto. Estas decisiones permiten mantener la trazabilidad de los cambios realizados durante los sprints, facilitar el trabajo colaborativo entre los miembros del equipo y asegurar una integración progresiva entre las diferentes capas y componentes de la solución QualiTrack.

### 6.1.1. Software Development Environment Configuration

En esta sección se presentan las herramientas utilizadas durante el ciclo de vida del proyecto QualiTrack. Estas herramientas permiten la colaboración entre los miembros del equipo en las actividades de gestión, diseño, desarrollo, pruebas, documentación y despliegue de los diferentes productos digitales que conforman la solución IoT.

Las herramientas se organizan según las siguientes disciplinas:

1. Project Management
2. Requirements Management
3. Product UX/UI Design
4. Software Development
5. Software Testing
6. Software Documentation
7. Software Deployment

#### Project Management

Esta disciplina se centra en la planificación, seguimiento y control del trabajo realizado por el equipo durante los sprints.

- **Jira:** Herramienta utilizada para organizar el Product Backlog, registrar User Stories y Technical Stories, planificar Sprints y realizar seguimiento del estado de los work-items del equipo.
  **Ruta de referencia:** [https://www.atlassian.com/software/jira](https://www.atlassian.com/software/jira)

- **Trello:** Herramienta visual utilizada como board de apoyo para mostrar el avance de tareas durante los sprints y evidenciar el estado del trabajo realizado por el equipo.
  **Ruta de referencia:** [https://trello.com](https://trello.com)

#### Requirements Management

La gestión de requisitos permite documentar las necesidades de los segmentos objetivo, definir User Stories, Technical Stories y criterios de aceptación asociados con las funcionalidades y características de calidad de QualiTrack.

- **Markdown:** Lenguaje utilizado para redactar el Product Backlog, Sprint Backlog, evidencias de implementación y documentación del proyecto dentro del Project Report.
  **Ruta de referencia:** [https://www.markdownguide.org/](https://www.markdownguide.org/)

- **Gherkin:** Lenguaje utilizado para redactar criterios de aceptación en formato Given-When-Then, facilitando la especificación del comportamiento esperado de las User Stories.
  **Ruta de referencia:** [https://cucumber.io/docs/gherkin/](https://cucumber.io/docs/gherkin/)

#### Product UX/UI Design

El diseño de experiencia de usuario y de interfaz permite definir la propuesta visual de QualiTrack para los diferentes productos que interactúan directamente con sus usuarios, incluyendo la Landing Page, la Web Application y la Mobile Application.

- **Figma:** Herramienta utilizada para la elaboración de wireframes, mock-ups y prototipos de la Landing Page, Web Application y Mobile Application.
   **Ruta de referencia:** [https://www.figma.com/](https://www.figma.com/)

- **Miro:** Herramienta colaborativa utilizada para actividades de análisis, identificación de bounded contexts y organización visual de ideas relacionadas con el dominio de la solución.
   **Ruta de referencia:** [https://miro.com/](https://miro.com/)

- **UXPressia:** Herramienta utilizada para trabajar artefactos de entendimiento del usuario, como User Personas, Empathy Maps, Customer Journey Maps e Impact Maps.
   **Ruta de referencia:** [https://uxpressia.com/](https://uxpressia.com/)

- **Lucidchart:** Herramienta utilizada para elaborar diagramas de apoyo arquitectónico y de modelado, incluyendo diagramas de clases y diagramas de base de datos.
   **Ruta de referencia:** [https://www.lucidchart.com/](https://www.lucidchart.com/)

#### Software Development

El desarrollo de QualiTrack comprende la implementación de los diferentes productos digitales que conforman la solución IoT: Landing Page, Web Application, Mobile Application, Backend Web Services, Edge Application y Embedded Application. Cada producto utiliza tecnologías y entornos de desarrollo especializados según sus responsabilidades dentro de la arquitectura.

- **GitHub:** Plataforma utilizada para alojar los repositorios del proyecto, administrar el control de versiones y mantener la trazabilidad de los cambios realizados sobre los diferentes productos digitales de QualiTrack.
   **Ruta de referencia:** [https://github.com](https://github.com)
   **Organización del proyecto:** [https://github.com/ClosedSource-11848](https://github.com/ClosedSource-11848)

- **WebStorm:** IDE utilizado para el desarrollo de la Web Application con Angular, TypeScript, HTML y CSS.
   **Ruta de descarga:** [https://www.jetbrains.com/webstorm/](https://www.jetbrains.com/webstorm/)

- **IntelliJ IDEA:** IDE utilizado para el desarrollo de los Backend Web Service implementado con Java y Spring Boot.
   **Ruta de descarga:** [https://www.jetbrains.com/idea/](https://www.jetbrains.com/idea/)

- **CLion:** IDE utilizado para el desarrollo de la Embedded Application de QualiTrack. Permite implementar, compilar y depurar el software ejecutado por los dispositivos embebidos que forman parte de la solución IoT.
   **Ruta de descarga:** [https://www.jetbrains.com/clion/download/](https://www.jetbrains.com/clion/download/)

- **PyCharm:** IDE utilizado para el desarrollo de la Edge Application de QualiTrack mediante Python, permitiendo implementar y depurar los componentes de software ejecutados en la capa Edge de la solución.
   **Ruta de descarga:** [https://www.jetbrains.com/pycharm/download/](https://www.jetbrains.com/pycharm/download/)

- **Flutter:** Framework utilizado para implementar la Mobile Application de QualiTrack a partir de una única base de código, permitiendo desarrollar las interfaces y funcionalidades destinadas al acceso móvil a la solución.
   **Ruta de descarga:** [https://docs.flutter.dev/install](https://docs.flutter.dev/install)

- **Angular:** Framework utilizado para implementar la Single Page Application correspondiente a la Web Application de QualiTrack, incluyendo componentes, rutas, servicios y consumo de APIs REST.
   **Ruta de referencia:** [https://angular.dev/](https://angular.dev/)

- **Spring Boot:** Framework utilizado para implementar los servicios REST del backend y organizar la lógica correspondiente a los diferentes bounded contexts de QualiTrack.
   **Ruta de referencia:** [https://spring.io/projects/spring-boot](https://spring.io/projects/spring-boot)

- **Spring Security:** Framework utilizado para proteger los endpoints del backend mediante mecanismos de autenticación y autorización.
   **Ruta de referencia:** [https://spring.io/projects/spring-security](https://spring.io/projects/spring-security)

- **MySQL:** Sistema gestor de base de datos relacional utilizado para la persistencia de la información administrada por los Backend Web Services de QualiTrack.
    **Ruta de referencia:** [https://www.mysql.com/](https://www.mysql.com/)

- **Stripe:** Plataforma utilizada para implementar el flujo de suscripción y pago mediante Stripe Checkout en modo de prueba.
    **Ruta de referencia:** [https://stripe.com/](https://stripe.com/)

#### Software Testing

Las pruebas y validaciones de QualiTrack comprenden la revisión del comportamiento de sus diferentes productos digitales, la ejecución de los principales flujos funcionales, la inspección de las comunicaciones HTTP y la validación de la información persistida.

- **Swagger UI:** Herramienta utilizada para probar los endpoints REST del backend, revisar los contratos de request y response y validar los recursos documentados mediante OpenAPI.
  **Ruta de referencia:** [https://swagger.io/tools/swagger-ui/](https://swagger.io/tools/swagger-ui/)

- **Chrome DevTools:** Herramienta utilizada para inspeccionar requests, responses, errores de comunicación, carga de recursos y comportamiento de la Web Application desde el navegador.
  **Ruta de referencia:** [https://developer.chrome.com/docs/devtools/](https://developer.chrome.com/docs/devtools/)

- **MySQL Workbench:** Herramienta utilizada para consultar y validar los datos persistidos por la aplicación durante las pruebas funcionales.
  **Ruta de descarga:** [https://www.mysql.com/products/workbench/](https://www.mysql.com/products/workbench/)

#### Software Documentation

La documentación permite describir la arquitectura, endpoints, diagramas, decisiones de diseño y evidencias de desarrollo de los diferentes componentes del proyecto.

- **OpenAPI Specification / Swagger:** Estándar utilizado para documentar los servicios REST proporcionados por los Backend Web Services de QualiTrack.
  **Ruta de referencia:** [https://swagger.io/specification/](https://swagger.io/specification/)

- **PlantUML:** Herramienta utilizada para representar diagramas de clases, diagramas de base de datos y otros diagramas asociados con la arquitectura de la solución.
  **Ruta de referencia:** [https://plantuml.com/](https://plantuml.com/)

- **Markdown:** Lenguaje utilizado para redactar el Project Report y mantener documentación versionada junto con los repositorios del proyecto.
  **Ruta de referencia:** [https://www.markdownguide.org/](https://www.markdownguide.org/)

#### Software Deployment

El despliegue de QualiTrack utiliza servicios diferenciados de acuerdo con las características de cada producto digital que forma parte de la solución.

- **GitHub Pages:** Servicio utilizado para desplegar públicamente la Landing Page de QualiTrack.
  **Ruta de referencia:** [https://pages.github.com/](https://pages.github.com/)

- **Firebase Hosting:** Servicio utilizado para desplegar la Web Application desarrollada con Angular.
  **Ruta de referencia:** [https://firebase.google.com/products/hosting](https://firebase.google.com/products/hosting)

- **Firebase App Distribution:** Servicio utilizado para distribuir versiones de prueba de la Mobile Application desarrollada con Flutter entre los miembros del equipo y usuarios autorizados para realizar pruebas. Permite administrar y entregar builds pre-release de la aplicación antes de una eventual publicación en una tienda de aplicaciones.
  **Ruta de referencia:** [https://firebase.google.com/docs/app-distribution](https://firebase.google.com/docs/app-distribution)

- **Render:** Plataforma utilizada para desplegar los Backend Web Services de QualiTrack.
  **Ruta de referencia:** [https://render.com/](https://render.com/)

- **Railway:** Plataforma utilizada para desplegar la base de datos MySQL utilizada por QualiTrack.
  **Ruta de referencia:** [https://railway.com/](https://railway.com/)

### 6.1.2. Source Code Management

### 6.1.3. Source Code Style Guide & Conventions

### 6.1.4. Software Deployment Configuration
