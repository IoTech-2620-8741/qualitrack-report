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

<ul>
  <li>
    <strong>Jira:</strong> Herramienta utilizada para organizar el Product Backlog, registrar User Stories y Technical Stories, planificar Sprints y realizar seguimiento del estado de los work-items del equipo.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://www.atlassian.com/software/jira" target="_blank">
      https://www.atlassian.com/software/jira
    </a>
  </li>
  <li>
    <strong>Trello:</strong> Herramienta visual utilizada como board de apoyo para mostrar el avance de tareas durante los sprints y evidenciar el estado del trabajo realizado por el equipo.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://trello.com" target="_blank">
      https://trello.com
    </a>
  </li>
</ul>

#### Requirements Management

La gestión de requisitos permite documentar las necesidades de los segmentos objetivo, definir User Stories, Technical Stories y criterios de aceptación asociados con las funcionalidades y características de calidad de QualiTrack.

<ul>
  <li>
    <strong>Markdown:</strong> Lenguaje utilizado para redactar el Product Backlog, Sprint Backlog, evidencias de implementación y documentación del proyecto dentro del Project Report.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://www.markdownguide.org/" target="_blank">
      https://www.markdownguide.org/
    </a>
  </li>
  <li>
    <strong>Gherkin:</strong> Lenguaje utilizado para redactar criterios de aceptación en formato Given-When-Then, facilitando la especificación del comportamiento esperado de las User Stories.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://cucumber.io/docs/gherkin/" target="_blank">
      https://cucumber.io/docs/gherkin/
    </a>
  </li>
</ul>

#### Product UX/UI Design

El diseño de experiencia de usuario y de interfaz permite definir la propuesta visual de QualiTrack para los diferentes productos que interactúan directamente con sus usuarios, incluyendo la Landing Page, la Web Application y la Mobile Application.

<ul>
  <li>
    <strong>Figma:</strong> Herramienta utilizada para la elaboración de wireframes, mock-ups y prototipos de la Landing Page, Web Application y Mobile Application.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://www.figma.com/" target="_blank">
      https://www.figma.com/
    </a>
  </li>
  <li>
    <strong>Miro:</strong> Herramienta colaborativa utilizada para actividades de análisis, identificación de bounded contexts y organización visual de ideas relacionadas con el dominio de la solución.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://miro.com/" target="_blank">
      https://miro.com/
    </a>
  </li>
  <li>
    <strong>UXPressia:</strong> Herramienta utilizada para trabajar artefactos de entendimiento del usuario, como User Personas, Empathy Maps, Customer Journey Maps e Impact Maps.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://uxpressia.com/" target="_blank">
      https://uxpressia.com/
    </a>
  </li>
  <li>
    <strong>Lucidchart:</strong> Herramienta utilizada para elaborar diagramas de apoyo arquitectónico y de modelado, incluyendo diagramas de clases y diagramas de base de datos.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://www.lucidchart.com/" target="_blank">
      https://www.lucidchart.com/
    </a>
  </li>
</ul>

#### Software Development

El desarrollo de QualiTrack comprende la implementación de los diferentes productos digitales que conforman la solución IoT: Landing Page, Web Application, Mobile Application, Backend Web Services, Edge Application y Embedded Application. Cada producto utiliza tecnologías y entornos de desarrollo especializados según sus responsabilidades dentro de la arquitectura.

<ul>
  <li>
    <strong>GitHub:</strong> Plataforma utilizada para alojar los repositorios del proyecto, administrar el control de versiones y mantener la trazabilidad de los cambios realizados sobre los diferentes productos digitales de QualiTrack.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://github.com" target="_blank">
      https://github.com
    </a><br>
    <strong>Organización del proyecto:</strong>
    <a href="https://github.com/ClosedSource-11848" target="_blank">
      https://github.com/ClosedSource-11848
    </a>
  </li>
  <li>
    <strong>WebStorm:</strong> IDE utilizado para el desarrollo de la Web Application con Angular, TypeScript, HTML y CSS.<br>
    <strong>Ruta de descarga:</strong>
    <a href="https://www.jetbrains.com/webstorm/" target="_blank">
      https://www.jetbrains.com/webstorm/
    </a>
  </li>
  <li>
    <strong>IntelliJ IDEA:</strong> IDE utilizado para el desarrollo del Backend Web Service implementado con Java y Spring Boot.<br>
    <strong>Ruta de descarga:</strong>
    <a href="https://www.jetbrains.com/idea/" target="_blank">
      https://www.jetbrains.com/idea/
    </a>
  </li>
  <li>
    <strong>CLion:</strong> IDE utilizado para el desarrollo de la Embedded Application de QualiTrack. Permite implementar, compilar y depurar el software ejecutado por los dispositivos embebidos que forman parte de la solución IoT.<br>
    <strong>Ruta de descarga:</strong>
    <a href="https://www.jetbrains.com/clion/download/" target="_blank">
      https://www.jetbrains.com/clion/download/
    </a>
  </li>
  <li>
    <strong>PyCharm:</strong> IDE utilizado para el desarrollo de la Edge Application de QualiTrack mediante Python, permitiendo implementar y depurar los componentes de software ejecutados en la capa Edge de la solución.<br>
    <strong>Ruta de descarga:</strong>
    <a href="https://www.jetbrains.com/pycharm/download/" target="_blank">
      https://www.jetbrains.com/pycharm/download/
    </a>
  </li>
  <li>
    <strong>Flutter:</strong> Framework utilizado para implementar la Mobile Application de QualiTrack a partir de una única base de código, permitiendo desarrollar las interfaces y funcionalidades destinadas al acceso móvil a la solución.<br>
    <strong>Ruta de descarga:</strong>
    <a href="https://docs.flutter.dev/install" target="_blank">
      https://docs.flutter.dev/install
    </a>
  </li>
  <li>
    <strong>Angular:</strong> Framework utilizado para implementar la Single Page Application correspondiente a la Web Application de QualiTrack, incluyendo componentes, rutas, servicios y consumo de APIs REST.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://angular.dev/" target="_blank">
      https://angular.dev/
    </a>
  </li>
  <li>
    <strong>Spring Boot:</strong> Framework utilizado para implementar los servicios REST del backend y organizar la lógica correspondiente a los diferentes bounded contexts de QualiTrack.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://spring.io/projects/spring-boot" target="_blank">
      https://spring.io/projects/spring-boot
    </a>
  </li>
  <li>
    <strong>Spring Security:</strong> Framework utilizado para proteger los endpoints del backend mediante mecanismos de autenticación y autorización.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://spring.io/projects/spring-security" target="_blank">
      https://spring.io/projects/spring-security
    </a>
  </li>
  <li>
    <strong>MySQL:</strong> Sistema gestor de base de datos relacional utilizado para la persistencia de la información administrada por el Backend Web Service de QualiTrack.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://www.mysql.com/" target="_blank">
      https://www.mysql.com/
    </a>
  </li>
  <li>
    <strong>Stripe:</strong> Plataforma utilizada para implementar el flujo de suscripción y pago mediante Stripe Checkout en modo de prueba.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://stripe.com/" target="_blank">
      https://stripe.com/
    </a>
  </li>
</ul>

#### Software Testing

Las pruebas y validaciones de QualiTrack comprenden la revisión del comportamiento de sus diferentes productos digitales, la ejecución de los principales flujos funcionales, la inspección de las comunicaciones HTTP y la validación de la información persistida.

<ul>
  <li>
    <strong>Swagger UI:</strong> Herramienta utilizada para probar los endpoints REST del backend, revisar los contratos de request y response y validar los recursos documentados mediante OpenAPI.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://swagger.io/tools/swagger-ui/" target="_blank">
      https://swagger.io/tools/swagger-ui/
    </a>
  </li>
  <li>
    <strong>Chrome DevTools:</strong> Herramienta utilizada para inspeccionar requests, responses, errores de comunicación, carga de recursos y comportamiento de la Web Application desde el navegador.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://developer.chrome.com/docs/devtools/" target="_blank">
      https://developer.chrome.com/docs/devtools/
    </a>
  </li>
  <li>
    <strong>MySQL Workbench:</strong> Herramienta utilizada para consultar y validar los datos persistidos por la aplicación durante las pruebas funcionales.<br>
    <strong>Ruta de descarga:</strong>
    <a href="https://www.mysql.com/products/workbench/" target="_blank">
      https://www.mysql.com/products/workbench/
    </a>
  </li>
</ul>

#### Software Documentation

La documentación permite describir la arquitectura, endpoints, diagramas, decisiones de diseño y evidencias de desarrollo de los diferentes componentes del proyecto.

<ul>
  <li>
    <strong>OpenAPI Specification / Swagger:</strong> Estándar utilizado para documentar los servicios REST proporcionados por el Backend Web Service de QualiTrack.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://swagger.io/specification/" target="_blank">
      https://swagger.io/specification/
    </a>
  </li>
  <li>
    <strong>PlantUML:</strong> Herramienta utilizada para representar diagramas de clases, diagramas de base de datos y otros diagramas asociados con la arquitectura de la solución.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://plantuml.com/" target="_blank">
      https://plantuml.com/
    </a>
  </li>
  <li>
    <strong>Markdown:</strong> Lenguaje utilizado para redactar el Project Report y mantener documentación versionada junto con los repositorios del proyecto.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://www.markdownguide.org/" target="_blank">
      https://www.markdownguide.org/
    </a>
  </li>
</ul>

#### Software Deployment

El despliegue de QualiTrack utiliza servicios diferenciados de acuerdo con las características de cada producto digital que forma parte de la solución.

<ul>
  <li>
    <strong>GitHub Pages:</strong> Servicio utilizado para desplegar públicamente la Landing Page de QualiTrack.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://pages.github.com/" target="_blank">
      https://pages.github.com/
    </a>
  </li>
  <li>
    <strong>Firebase Hosting:</strong> Servicio utilizado para desplegar la Web Application desarrollada con Angular.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://firebase.google.com/products/hosting" target="_blank">
      https://firebase.google.com/products/hosting
    </a>
  </li>
  <li>
    <strong>Firebase App Distribution:</strong> Servicio utilizado para distribuir versiones de prueba de la Mobile Application desarrollada con Flutter entre los miembros del equipo y usuarios autorizados para realizar pruebas. Permite administrar y entregar builds pre-release de la aplicación antes de una eventual publicación en una tienda de aplicaciones.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://firebase.google.com/docs/app-distribution" target="_blank">
      https://firebase.google.com/docs/app-distribution
    </a>
  </li>
  <li>
    <strong>Render:</strong> Plataforma utilizada para desplegar el Backend Web Service de QualiTrack.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://render.com/" target="_blank">
      https://render.com/
    </a>
  </li>
  <li>
    <strong>Railway:</strong> Plataforma utilizada para desplegar la base de datos MySQL utilizada por QualiTrack.<br>
    <strong>Ruta de referencia:</strong>
    <a href="https://railway.com/" target="_blank">
      https://railway.com/
    </a>
  </li>
</ul>

### 6.1.2. Source Code Management

### 6.1.3. Source Code Style Guide & Conventions

### 6.1.4. Software Deployment Configuration
