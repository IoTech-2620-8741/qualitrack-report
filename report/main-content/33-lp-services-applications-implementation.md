## 6.2. Landing Page, Services & Applications Implementation

En esta sección se explica y evidencia el proceso de implementación, pruebas, documentación y despliegue de los productos digitales de QualiTrack. Una vez definido el Product Backlog, el trabajo se organiza en sprints y, para cada uno, se registran su planificación, el backlog con sus tareas, las evidencias de desarrollo, pruebas, ejecución, documentación de servicios y despliegue, y los analíticos de colaboración del equipo.

### 6.2.1. Sprint 1

En esta sección se detalla el proceso de trabajo realizado por el equipo durante el primer sprint del proyecto QualiTrack.

Este sprint se centra en la primera versión de los productos con los que interactúan directamente los usuarios: la **Landing Page**, que presenta la propuesta de valor de QualiTrack a los visitantes, y la **Web Application (frontend)**, que permite a responsables de calidad, personal operativo y auditores trabajar con la plataforma.

La Landing Page se publica en GitHub Pages y la Web Application en Firebase Hosting. La Web Application consume el RESTful API de QualiTrack, desplegado en Microsoft Azure: el backend en Azure Container Apps, a partir de su imagen Docker en Azure Container Registry, y la base de datos en Azure Database for MySQL.

---

#### 6.2.1.1. Sprint Planning 1

En la reunión de Sprint Planning el equipo revisó el Product Backlog, acordó el objetivo del sprint y seleccionó las User Stories de la Landing Page y de la Web Application que forman parte de su alcance. A continuación se presenta el resumen de la reunión.

<table>
<tr>
<td>Sprint #</td>
<td>Sprint 1</td>
</tr>
<tr>
<td colspan="2"><strong>Sprint Planning Background</strong></td>
</tr>
<tr>
<td>Date</td>
<td>2026-07-05</td>
</tr>
<tr>
<td>Time</td>
<td>04:00 PM (GMT-5)</td>
</tr>
<tr>
<td>Location</td>
<td>Modalidad remota mediante la plataforma Discord</td>
</tr>
<tr>
<td>Prepared By</td>
<td>Ruiz Madrid, Billy Jake</td>
</tr>
<tr>
<td>Attendees (to planning meeting)</td>
<td>Baca Camargo, Vitaly Arturo / Cutiri Agüero, Fabrizio Alexander / Guzmán Cabrejos, Yaku Mateo / Huapaya Galindo, Dyron / Lopez Roman, Franco Mauricio / Montes Ramos, Henry Jaredt / Ruiz Madrid, Billy Jake / Torres Apolinario, Giovany Smith / Quiroz Caceres, Adrian Alonso</td>
</tr>
<tr>
<td>Sprint 0 Review Summary</td>
<td>No aplica: es el primer sprint de implementación del proyecto.</td>
</tr>
<tr>
<td>Sprint 0 Retrospective Summary</td>
<td>No aplica: es el primer sprint de implementación del proyecto.</td>
</tr>
<tr>
<td colspan="2"><strong>Sprint Goal & User Stories</strong></td>
</tr>
<tr>
<td>Sprint 1 Goal</td>
<td>
<strong>Our focus is on</strong> giving visitors, quality managers of pharmaceutical laboratories and warehouses, clear information about the problem QualiTrack solves, how it works, its benefits, the team behind it and the subscription plans through the Landing Page; and on giving quality managers, operators and auditors the first deployed version of the Web Application to register their laboratory, environments and staff, control the raw material inventory, equipment and IoT devices, supervise environmental conditions, manage batch traceability and release, attend deviation alerts and generate reports.
<br><br>
<strong>We believe it delivers</strong> greater confidence to visitors when deciding to subscribe to QualiTrack, and centralized, traceable supervision of conditions, materials and batches to quality managers and operators, reducing manual records and late responses to deviations.
<br><br>
<strong>This will be confirmed when</strong> visitors navigate the Landing Page sections and reach the Web Application from its calls to action, and when users create their account, complete the initial setup (subscription and laboratory) and perform their main tasks in the deployed application (registering environments, raw materials and batches, checking telemetry, attending an alert and generating a report) without help from the development team.
</td>
</tr>
<tr>
<td>Sprint 1 Velocity</td>
<td>190</td>
</tr>
<tr>
<td>Sum of Story Points</td>
<td>190</td>
</tr>
</table>

---

#### 6.2.1.2. Aspect Leaders and Collaborators

Durante el Sprint 1 los aspectos de trabajo corresponden a la Landing Page y a los Bounded Contexts del core business de QualiTrack implementados en la Web Application: Laboratory Management, Inventory Management, Equipment Management, Tracking & Telemetry, Product Batch Management y Compliance & Alerting. Los contextos de soporte (Identity & Access Management, Payments & Subscriptions, Reporting & Audit y Profile) se desarrollan de forma transversal por el equipo.

Con el fin de brindar claridad en la comunicación, se elaboró la siguiente matriz de liderazgo y colaboración (LACX). Cada aspecto tiene uno o más líderes (L) responsables de sus tareas y el resto del equipo participa como colaborador (C) en su implementación e integración con el RESTful API. Esta organización se refleja en la asignación de tareas del Sprint Backlog.

| Team Member (Last Name, First Name) / GitHub User­name | Aspect: Land­ing Page | Aspect: Labor­atory Manage­ment | Aspect: Inven­tory Manage­ment | Aspect: Equip­ment Manage­ment | Aspect: Track­ing & Tele­metry | Aspect: Prod­uct Batch Manage­ment | Aspect: Compli­ance & Alert­ing |
|---|---|---|---|---|---|---|---|
| Baca Camargo, Vitaly Arturo<br>(Mr-Code-star) | C | C | C | C | C | C | C |
| Cutiri Agüero, Fabrizio Alexander<br>(Fabrizio​Cutiri) | C | C | L | C | C | L | C |
| Guzmán Cabrejos, Yaku Mateo<br>(yakumateo) | C | C | C | L | C | C | C |
| Huapaya Galindo, Dyron<br>(Maine​Ma) | L | C | C | C | C | C | C |
| Lopez Roman, Franco Mauricio<br>(Franco​Lopez00) | C | C | C | C | C | C | L |
| Montes Ramos, Henry Jaredt<br>(jahen17) | C | C | C | C | C | C | C |
| Ruiz Madrid, Billy Jake<br>(BJRM03) | C | L | C | C | C | C | C |
| Torres Apoli­nario, Giovany Smith<br>(giovanydevv) | C | C | C | C | L | C | C |
| Quiroz Caceres, Adrian Alonso<br>(Aqc1019) | C | C | C | C | C | C | C |

Donde:

- **L (Leader):** responsable principal del aspecto.
- **C (Collaborator):** miembro de apoyo en la implementación.

---

#### 6.2.1.3. Sprint Backlog 1

El objetivo del Sprint 1 es desplegar la primera versión de la Landing Page y de la Web Application de QualiTrack. Para ello se seleccionaron 101 User Stories (190 Story Points): 11 de la Landing Page (17 Story Points) y 90 de la Web Application (173 Story Points). Cada User Story se descompuso en tareas de implementación de la vista y de integración con el RESTful API, asignadas según la matriz de liderazgo y colaboración. El seguimiento del sprint se realizó en Jira.

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/jira-sprint-1-board.png" alt="Sprint 1 Board en Jira" width="90%">
  <p><em>Figura: Tablero del Sprint 1 en Jira. Esta vista evidencia la organización de las User Stories del sprint y de sus tareas por estado, que el equipo utilizó para seguir el avance hacia el Sprint Goal.</em></p>
</div>

**Enlace público al tablero:** [Sprint 1 - Jira](https://iotech-2620.atlassian.net/jira/software/projects/SCRUM/boards/1)

En total el sprint comprende 182 tareas y 561 horas estimadas. Al cierre del sprint, las 182 tareas se encuentran en estado Done.

<table>
<tr>
<th colspan="8">Sprint # Sprint 1</th>
</tr>
<tr>
<th colspan="2">User Story</th>
<th colspan="6">Work-Item / Task</th>
</tr>
<tr>
<th>Id</th>
<th>Title</th>
<th>Id</th>
<th>Title</th>
<th>Description</th>
<th>Estimation (Hours)</th>
<th>Assigned To</th>
<th>Status (To-do / In-Process / To-Review / Done)</th>
</tr>
<tr><td colspan="8"><strong>Landing Page</strong></td></tr>
<tr><td rowspan="2">US01</td><td rowspan="2">Conocer la propuesta de valor</td><td>T001</td><td>Maquetar la sección Home</td><td>Hero con el titular, la propuesta de valor, la imagen principal y el botón de llamada a la acción.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T002</td><td>Enlazar los CTA con la aplicación web desplegada</td><td>Apuntar los botones "Get started" del sitio al frontend publicado en Firebase Hosting.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="2">US02</td><td rowspan="2">Conocer cómo funciona QualiTrack</td><td>T003</td><td>Implementar la sección Features en acordeón</td><td>Funcio­nalidades de monitoreo, alertas, trazabilidad y reportes en un acordeón con su descripción.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T004</td><td>Incrustar el video de funcio­nalidades</td><td>Video de YouTube junto al acordeón para explicar cómo funciona QualiTrack.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="2">US03</td><td rowspan="2">Conocer los beneficios de QualiTrack</td><td>T005</td><td>Maquetar la sección Benefits</td><td>Tarjetas con los beneficios de supervisión, trazabilidad y cumplimiento BPM.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T006</td><td>Adaptar el sitio a pantallas móviles</td><td>Media queries para que las secciones se reorganicen en móvil, tablet y escritorio.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="2">US04</td><td rowspan="2">Navegar por la información pública</td><td>T007</td><td>Implementar la barra de navegación</td><td>Navbar fija con anclas a Home, Features, Benefits, About Us y Plans.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T008</td><td>Agregar atributos ARIA</td><td>Roles, aria-label y aria-expanded en la navegación, el acordeón, el selector de idioma y los botones.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="1">US05</td><td rowspan="1">Conocer a IoTech</td><td>T009</td><td>Maquetar la sección About Us</td><td>Presentación de IoTech, su misión y el video del equipo.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="1">US06</td><td rowspan="1">Conocer al equipo de QualiTrack</td><td>T010</td><td>Publicar los perfiles del equipo</td><td>Foto, nombre y descripción de los nueve integrantes, traducidos al inglés y al español.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="1">US07</td><td rowspan="1">Consultar testimonios</td><td>T011</td><td>Implementar la sección de testimonios</td><td>Sección que muestra solo testimonios reales aprobados, sin publicar testimonios ficticios.</td><td>3</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="2">US08</td><td rowspan="2">Comparar planes de suscripción</td><td>T012</td><td>Maquetar la sección Plans</td><td>Plan Standard Lab y Enterprise con precio, periodicidad, caracte­rísticas y cambio mensual/​anual.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T013</td><td>Enlazar los planes con el registro de la aplicación web</td><td>El botón de cada plan lleva al registro del frontend desplegado.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="1">US09</td><td rowspan="1">Solicitar información sobre QualiTrack</td><td>T014</td><td>Implementar el formulario de contacto</td><td>Formulario con validación de campos obligatorios y confirmación de envío.</td><td>4</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="2">US10</td><td rowspan="2">Consultar el contenido en el idioma preferido</td><td>T015</td><td>Implementar el cambio de idioma</td><td>Selector EN/ES que reemplaza los textos marcados con data-i18n y recuerda la elección.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T016</td><td>Traducir el contenido del sitio</td><td>Archivos de traducción en.js y es.js para todas las secciones.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="1">US11</td><td rowspan="1">Consultar documentos legales</td><td>T017</td><td>Crear las páginas legales</td><td>Páginas de Términos de Servicio y Política de Privacidad enlazadas desde el footer.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Identity &amp; Access Management</strong></td></tr>
<tr><td rowspan="2">US12</td><td rowspan="2">Crear una cuenta</td><td>T018</td><td>Implementar el formulario de registro</td><td>Vista sign-up-form con validación de correo y de la política de contraseñas.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T019</td><td>Integrar el registro con la API</td><td>IamStore y POST /​authenti­cation/​sign-up; manejo de correo o usuario ya registrados.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US13</td><td rowspan="2">Iniciar sesión</td><td>T020</td><td>Implementar el formulario de inicio de sesión</td><td>Vista sign-in-form con mensajes de credenciales inválidas.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T021</td><td>Gestionar la sesión con JWT</td><td>Interceptor que envía el token y redirección según el siguiente paso de la confi­guración inicial.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US14</td><td rowspan="2">Solicitar recuperación de contraseña</td><td>T022</td><td>Implementar la solicitud de recuperación</td><td>Paso de password-recovery que pide el usuario o el correo.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T023</td><td>Integrar la solicitud con la API</td><td>POST /​authenti­cation/​password-recovery-requests y aviso de envío del código.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US15</td><td rowspan="2">Restablecer la contraseña</td><td>T024</td><td>Implementar el restable­cimiento con código</td><td>Paso de password-recovery con el código de 6 dígitos y la nueva contraseña.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T025</td><td>Integrar el restable­cimiento con la API</td><td>POST /​authenti­cation/​password-resets y retorno al inicio de sesión.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US16</td><td rowspan="1">Cerrar sesión</td><td>T026</td><td>Implementar el cierre de sesión</td><td>Acción en user-session-section que limpia la sesión y vuelve al inicio.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US17</td><td rowspan="2">Cambiar mi contraseña</td><td>T027</td><td>Implementar el cambio de contraseña</td><td>Vista change-password-form, obligatoria con la contraseña temporal del personal.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T028</td><td>Integrar el cambio con la API</td><td>POST /​users/​me/​password-changes y actua­lización del estado de la sesión.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US18</td><td rowspan="2">Actualizar el usuario y el correo de mi cuenta</td><td>T029</td><td>Implementar la edición de la cuenta</td><td>Formulario de usuario y correo que pide la contraseña actual.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T030</td><td>Integrar la cuenta con la API</td><td>PUT /users/me con manejo de usuario o correo ya usados.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US24</td><td rowspan="2">Continuar hacia la contratación cuando no existe una suscripción activa</td><td>T031</td><td>Implementar el paso de contratación del onboarding</td><td>Vista onboarding que guía al responsable de calidad sin suscripción activa hacia los planes.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T032</td><td>Proteger las rutas operativas</td><td>Guard que consulta GET /​users/​me/​onboarding y redirige según nextStep.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US25</td><td rowspan="2">Continuar hacia el registro de la instalación</td><td>T033</td><td>Implementar el paso de registro de la instalación</td><td>Paso del onboarding que lleva al registro del laboratorio o almacén.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T034</td><td>Integrar el paso con la API</td><td>Lectura de nextStep LABORATORY y continuación tras el registro.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US26</td><td rowspan="2">Acceder a las funciones operativas con la confi­guración inicial completa</td><td>T035</td><td>Habilitar el acceso operativo</td><td>Acceso al panel y a los módulos solo con la confi­guración inicial completa (nextStep READY).</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T036</td><td>Manejar el error ONBOARDING_​REQUIRED</td><td>Redirección al paso pendiente cuando la API responde 403 ONBOARDING_​REQUIRED.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Payments &amp; Subscriptions</strong></td></tr>
<tr><td rowspan="1">US19</td><td rowspan="1">Seleccionar un plan</td><td>T037</td><td>Implementar el catálogo de planes</td><td>Vista plan-list con planes mensuales y anuales, precio y límites de usuarios y equipos.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="2">US20</td><td rowspan="2">Completar el pago de la suscripción</td><td>T038</td><td>Implementar el pago con Stripe Checkout</td><td>Vista checkout que crea la sesión de pago y redirige a Stripe.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T039</td><td>Implementar el retorno del pago</td><td>Vistas payment-success y payment-cancel con la confirmación de la suscripción.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US21</td><td rowspan="1">Consultar el estado de la suscripción</td><td>T040</td><td>Implementar el resumen de la suscripción</td><td>Vista billing-summary con plan, estado, ciclo y fin del periodo.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="1">US22</td><td rowspan="1">Consultar el historial de pagos</td><td>T041</td><td>Implementar el historial de pagos</td><td>Tabla de pagos de la suscripción en billing-summary.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="2">US23</td><td rowspan="2">Cancelar la renovación de la suscripción</td><td>T042</td><td>Implementar la cancelación de la renovación</td><td>Diálogo de confirmación en billing-summary; el acceso se mantiene hasta el fin del periodo.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T043</td><td>Integrar la cancelación con la API</td><td>POST /​subscriptions/​{id}/​cancellation-requests y actua­lización del estado.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Laboratory Management</strong></td></tr>
<tr><td rowspan="2">US27</td><td rowspan="2">Registrar el laboratorio o almacén</td><td>T044</td><td>Implementar el registro del laboratorio</td><td>Vista lab-form con nombre, RUC, dirección, teléfono y regulaciones aplicables.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T045</td><td>Integrar el registro con la API</td><td>POST /​laboratories y continuación del onboarding.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="1">US28</td><td rowspan="1">Consultar la información del laboratorio o almacén</td><td>T046</td><td>Implementar el perfil del laboratorio</td><td>Vista lab-profile con los datos y regulaciones del laboratorio.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US29</td><td rowspan="2">Actualizar la información del laboratorio o almacén</td><td>T047</td><td>Implementar la edición del laboratorio</td><td>Modo de edición de lab-form con validaciones.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T048</td><td>Integrar la edición con la API</td><td>PUT /​laboratories/​{id}.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US30</td><td rowspan="2">Registrar un ambiente</td><td>T049</td><td>Implementar el registro de ambientes</td><td>Vista environment-form con código, nombre y descripción.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T050</td><td>Integrar el registro con la API</td><td>POST /​laboratories/​{id}/​environments.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US31</td><td rowspan="2">Definir el uso de un ambiente</td><td>T051</td><td>Implementar la definición de uso</td><td>Selección de uso del ambiente: laboratorio, producción, almacén de materias primas o de producto.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T052</td><td>Integrar el uso con la API</td><td>POST .../​environments/​{id}/​usage-assignments.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="1">US32</td><td rowspan="1">Consultar los ambientes registrados</td><td>T053</td><td>Implementar la lista de ambientes</td><td>Vistas environment-list y environment-selector para filtrar los módulos por ambiente.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US33</td><td rowspan="2">Actualizar un ambiente</td><td>T054</td><td>Implementar la edición de ambientes</td><td>Modo de edición de environment-form.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T055</td><td>Integrar la edición con la API</td><td>PUT .../​environments/​{id}.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US34</td><td rowspan="2">Registrar personal</td><td>T056</td><td>Implementar el registro de personal</td><td>Vista staff-form para operarios y auditores con su cargo.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T057</td><td>Integrar el registro con la API</td><td>POST .../staff; credenciales enviadas por correo o mostradas una sola vez.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US35</td><td rowspan="2">Consultar la actividad de un miembro del personal</td><td>T058</td><td>Implementar el detalle del personal</td><td>Vista staff-detail con datos del miembro.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T059</td><td>Mostrar la actividad del miembro</td><td>GET .../​staff/​{id}/​audit-logs con las acciones registradas.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US36</td><td rowspan="2">Desactivar a un miembro del personal</td><td>T060</td><td>Implementar la desacti­vación</td><td>Acción con confirmación en staff-list y staff-detail.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>T061</td><td>Integrar la desacti­vación con la API</td><td>POST .../​staff/​{id}/​deacti­vations.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Inventory Management</strong></td></tr>
<tr><td rowspan="2">US37</td><td rowspan="2">Registrar una materia prima</td><td>T062</td><td>Implementar el registro de materias primas</td><td>Vista register-material con código, unidad y stock mínimo por ambiente.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T063</td><td>Integrar el registro con la API</td><td>Inventory​Store y POST .../​environments/​{id}/​raw-materials.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US38</td><td rowspan="1">Consultar materias primas</td><td>T064</td><td>Implementar el catálogo de materias primas</td><td>Vista inventory-catalogue con búsqueda y filtros.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="2">US39</td><td rowspan="2">Registrar un lote recibido de materia prima</td><td>T065</td><td>Implementar el registro de lotes recibidos</td><td>Formulario de recepción con proveedor, cantidad y vencimiento en inventory-detail.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T066</td><td>Integrar la recepción con la API</td><td>POST .../​raw-material-batches y actua­lización del stock.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US40</td><td rowspan="1">Consultar lotes de materia prima</td><td>T067</td><td>Implementar la lista de lotes</td><td>Tabla de lotes con cantidades, estados y vencimientos en inventory-detail.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="2">US41</td><td rowspan="2">Revisar el estado de un lote de materia prima</td><td>T068</td><td>Implementar la revisión del lote</td><td>Acciones liberar, observar o rechazar con motivo.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T069</td><td>Integrar la revisión con la API</td><td>Registro de la revisión y del movimiento REVIEW.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US42</td><td rowspan="2">Consultar el stock utilizable</td><td>T070</td><td>Mostrar el stock utilizable</td><td>Resumen de stock utilizable y físico en inventory-detail.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T071</td><td>Calcular el stock por lote</td><td>Suma de lotes liberados no vencidos menos consumos.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US43</td><td rowspan="2">Identificar materias primas con stock bajo</td><td>T072</td><td>Implementar el filtro de stock bajo</td><td>Filtro y marcador de materias primas bajo el mínimo en inventory-home.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T073</td><td>Mostrar el stock bajo en el panel</td><td>Tarjeta de materiales con stock bajo en el dashboard.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US44</td><td rowspan="2">Identificar lotes próximos a vencer</td><td>T074</td><td>Implementar el aviso de lotes por vencer</td><td>Indicador de lotes próximos a vencer en inventory-home e inventory-detail.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T075</td><td>Ordenar los lotes por vencimiento</td><td>Orden y resaltado de los lotes más cercanos a vencer.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US45</td><td rowspan="2">Asignar un lote de materia prima a un contenedor monitoreado</td><td>T076</td><td>Implementar la asignación a contenedor</td><td>Selección del monitor de contenedor del mismo ambiente de almacén de materias primas.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T077</td><td>Integrar la asignación con la API</td><td>Registro del alma­cenamiento y del movimiento STORAGE.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US46</td><td rowspan="1">Consultar el contenedor de una materia prima</td><td>T078</td><td>Mostrar el contenedor del lote</td><td>Columna del contenedor asignado en la lista de lotes.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="2">US47</td><td rowspan="2">Consultar los movimientos de una materia prima</td><td>T079</td><td>Implementar el historial de movimientos</td><td>Tabla de movimientos RECEIPT, REVIEW, STORAGE y CONSUMPTION.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T080</td><td>Integrar los movimientos con la API</td><td>GET .../​raw-materials/​{id}/​movements.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Equipment Management</strong></td></tr>
<tr><td rowspan="2">US48</td><td rowspan="2">Registrar un equipo</td><td>T081</td><td>Implementar el registro de equipos</td><td>Vista equipment-form con tipo, modelo y número de serie.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T082</td><td>Integrar el registro con la API</td><td>Equipment​Store y POST /​laboratories/​{id}/​equipments.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="1">US49</td><td rowspan="1">Consultar equipos</td><td>T083</td><td>Implementar la lista de equipos</td><td>Vista equipment-list con búsqueda, estado y ambiente.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US50</td><td rowspan="2">Asociar un equipo con un ambiente</td><td>T084</td><td>Asociar el equipo con un ambiente</td><td>Selección del ambiente en equipment-form.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T085</td><td>Integrar la ubicación con la API</td><td>Actua­lización del ambiente del equipo.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="2">US51</td><td rowspan="2">Actualizar el estado operativo de un equipo</td><td>T086</td><td>Implementar el cambio de estado operativo</td><td>Acción en equipment-detail con motivo del cambio.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T087</td><td>Integrar el cambio con la API</td><td>POST .../​equipments/​{id}/​status-changes.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="2">US52</td><td rowspan="2">Registrar un mante­nimiento</td><td>T088</td><td>Implementar el registro de mante­nimiento</td><td>Vista maintenance-form con tipo, fecha y técnico.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T089</td><td>Integrar el mante­nimiento con la API</td><td>POST .../​maintenance-records.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="1">US53</td><td rowspan="1">Consultar el historial de mante­nimiento</td><td>T090</td><td>Implementar el historial de mante­nimiento</td><td>Pestaña de mante­nimientos en equipment-detail.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="2">US54</td><td rowspan="2">Registrar un dispositivo ambiental</td><td>T091</td><td>Implementar el registro del dispositivo ambiental</td><td>Vista device-form para un ENVI­RONMENTAL_​DEVICE con su identi­ficador externo.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T092</td><td>Integrar el registro con la API</td><td>Alta del dispositivo como equipo IoT.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="2">US55</td><td rowspan="2">Asociar un dispositivo ambiental con un ambiente</td><td>T093</td><td>Asociar el dispositivo ambiental</td><td>Un dispositivo ambiental por ambiente.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T094</td><td>Validar la asociación</td><td>Mensaje cuando el ambiente ya tiene dispositivo.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="2">US56</td><td rowspan="2">Registrar un monitor de contenedor</td><td>T095</td><td>Implementar el registro del monitor de contenedor</td><td>Vista device-form para un CONTAINER_​MONITOR.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T096</td><td>Integrar el registro con la API</td><td>Alta del monitor como equipo IoT.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="2">US57</td><td rowspan="2">Asociar un monitor de contenedor con un ambiente</td><td>T097</td><td>Asociar el monitor con un ambiente</td><td>Selección del ambiente del contenedor.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T098</td><td>Integrar la asociación con la API</td><td>Actua­lización del ambiente del monitor.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="2">US59</td><td rowspan="2">Configurar los parámetros BPM de un equipo</td><td>T099</td><td>Implementar los parámetros BPM</td><td>Vista bpm-config-form con rangos por parámetro.</td><td>3</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>T100</td><td>Integrar los parámetros con la API</td><td>PUT por parámetro de .../​bpm-configs.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Tracking &amp; Telemetry</strong></td></tr>
<tr><td rowspan="2">US58</td><td rowspan="2">Consultar el estado de conexión de un dispositivo IoT</td><td>T101</td><td>Mostrar el estado de conexión</td><td>Insignia Conectado / Requiere revisión en equipos y telemetría.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T102</td><td>Integrar el estado con la API</td><td>GET .../​devices/​{id}/​telemetry-status.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US60</td><td rowspan="2">Configurar el rango de calidad de aire de un ambiente</td><td>T103</td><td>Implementar el editor del perfil del ambiente</td><td>Vistas envi­ronmental-profiles y threshold-editor para calidad de aire.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T104</td><td>Integrar el perfil con la API</td><td>PUT .../​envi­ronmental-profile/​thresholds con versión del perfil.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US61</td><td rowspan="2">Configurar rangos de temperatura y humedad de un contenedor</td><td>T105</td><td>Configurar temperatura y humedad del contenedor</td><td>Rangos normal y crítico en threshold-editor.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T106</td><td>Integrar los rangos con la API</td><td>PUT .../​container-monitors/​{id}/​envi­ronmental-profile/​thresholds.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US62</td><td rowspan="2">Configurar el rango de luminosidad de un contenedor</td><td>T107</td><td>Configurar la luminosidad del contenedor</td><td>Rango normal y crítico de luminosidad.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T108</td><td>Validar los rangos</td><td>El rango crítico debe contener al normal.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US63</td><td rowspan="2">Configurar una respuesta automática del contenedor</td><td>T109</td><td>Implementar el editor de reglas</td><td>Vista actuation-rules-editor: métrica, estado y acción (ventilación, enfriamiento, servo).</td><td>5</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T110</td><td>Integrar las reglas con la API</td><td>PUT .../​envi­ronmental-profile/​actuation-rules.</td><td>4</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US64</td><td rowspan="2">Consultar la calidad de aire de un ambiente</td><td>T111</td><td>Mostrar la calidad de aire</td><td>Lectura actual y estado en envi­ronmental-monitoring.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T112</td><td>Integrar las mediciones con la API</td><td>GET .../​environments/​{id}/​telemetry-measurements.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US65</td><td rowspan="2">Consultar la detección de movimiento de un ambiente</td><td>T113</td><td>Mostrar la detección de movimiento</td><td>Eventos de movimiento del ambiente.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T114</td><td>Filtrar por métrica MOTION</td><td>Consulta de mediciones por métrica.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US67</td><td rowspan="2">Consultar temperatura y humedad de un contenedor</td><td>T115</td><td>Mostrar temperatura y humedad del contenedor</td><td>Lecturas y estados con sus rangos.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T116</td><td>Integrar el contenedor con la API</td><td>GET .../​container-monitors/​{id}/​telemetry-measurements.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US68</td><td rowspan="2">Consultar la luminosidad de un contenedor</td><td>T117</td><td>Mostrar la luminosidad del contenedor</td><td>Lectura y estado de luminosidad.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T118</td><td>Graficar la luminosidad</td><td>Serie de lecturas en el gráfico.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US69</td><td rowspan="2">Consultar la acción automática de un contenedor</td><td>T119</td><td>Mostrar las acciones automáticas</td><td>Lista de acciones ejecutadas por el contenedor.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T120</td><td>Integrar las acciones con la API</td><td>GET .../​container-monitors/​{id}/​actuation-events.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US70</td><td rowspan="2">Consultar la identi­ficación RFID de un contenedor</td><td>T121</td><td>Mostrar la identi­ficación RFID</td><td>Última etiqueta RFID leída por el contenedor.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T122</td><td>Integrar las lecturas RFID</td><td>Mediciones RFID_TAG del monitor.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US72</td><td rowspan="2">Consultar el historial del dispositivo ambiental</td><td>T123</td><td>Implementar el historial del dispositivo ambiental</td><td>Vista telemetry-history con periodo de hasta 31 días.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T124</td><td>Graficar el historial</td><td>Serie temporal con los rangos del perfil.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US73</td><td rowspan="2">Consultar el historial de un contenedor monitoreado</td><td>T125</td><td>Implementar el historial del contenedor</td><td>Historial por métrica del monitor de contenedor.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>T126</td><td>Graficar el historial</td><td>Serie temporal con desviaciones resaltadas.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Product Batch Management</strong></td></tr>
<tr><td rowspan="2">US75</td><td rowspan="2">Registrar un producto</td><td>T127</td><td>Implementar el registro de productos</td><td>Vista product-form por ambiente.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T128</td><td>Integrar el registro con la API</td><td>BatchStore y POST .../​environments/​{id}/​products.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US76</td><td rowspan="1">Consultar productos</td><td>T129</td><td>Implementar el catálogo de productos</td><td>Vistas product-catalog y product-detail.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="2">US77</td><td rowspan="2">Registrar un lote de producto</td><td>T130</td><td>Implementar el registro de lotes de producto</td><td>Vista batch-form con cantidad y fecha de inicio.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T131</td><td>Integrar el registro con la API</td><td>POST .../​products/​{id}/​batches.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US78</td><td rowspan="1">Consultar un lote de producto</td><td>T132</td><td>Implementar el detalle del lote</td><td>Vistas batch-list y batch-detail.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="2">US79</td><td rowspan="2">Registrar el consumo de materia prima</td><td>T133</td><td>Implementar el registro de consumo</td><td>Vista raw-material-usage con selección de lotes utilizables.</td><td>5</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T134</td><td>Integrar el consumo con la API</td><td>Descuento de stock e inicio del lote con el primer consumo.</td><td>4</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US80</td><td rowspan="2">Asociar un equipo con un lote de producto</td><td>T135</td><td>Asociar equipos con el lote</td><td>Sección de equipos en batch-participants.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T136</td><td>Integrar la asociación con la API</td><td>Registro de la parti­cipación del equipo.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US81</td><td rowspan="2">Asociar personal con un lote de producto</td><td>T137</td><td>Asociar personal con el lote</td><td>Sección de personal en batch-participants.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T138</td><td>Integrar la asociación con la API</td><td>Registro de la parti­cipación del personal.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US82</td><td rowspan="2">Asignar un lote de producto a un contenedor monitoreado</td><td>T139</td><td>Implementar la asignación a contenedor</td><td>Vista batch-storage con contenedores de almacenes de producto.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T140</td><td>Integrar la asignación con la API</td><td>Registro del contenedor del lote.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="1">US83</td><td rowspan="1">Consultar el contenedor de un lote de producto</td><td>T141</td><td>Mostrar el contenedor del lote</td><td>Sección de alma­cenamiento en batch-detail.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="2">US84</td><td rowspan="2">Consultar la trazabilidad de un lote</td><td>T142</td><td>Implementar la trazabilidad</td><td>Vista batch-traceability con materias primas, equipos, personal y contenedor.</td><td>5</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T143</td><td>Integrar la trazabilidad con la API</td><td>GET .../​batches/​{id}/​traceability.</td><td>4</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US85</td><td rowspan="2">Liberar un lote de producto</td><td>T144</td><td>Implementar la liberación</td><td>Vista batch-release-form con firma digital.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T145</td><td>Integrar la liberación con la API</td><td>POST .../​batches/​{id}/​releases y firma SHA-256.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US86</td><td rowspan="2">Rechazar un lote de producto</td><td>T146</td><td>Implementar el rechazo</td><td>Vista batch-reject-form con motivo obligatorio.</td><td>3</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>T147</td><td>Integrar el rechazo con la API</td><td>POST .../​batches/​{id}/​rejections.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Compliance &amp; Alerting</strong></td></tr>
<tr><td rowspan="1">US89</td><td rowspan="1">Consultar alertas activas</td><td>T148</td><td>Implementar el panel de alertas</td><td>Vistas alert-dashboard y alert-table con filtros por estado.</td><td>3</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="2">US90</td><td rowspan="2">Consultar el detalle de una alerta</td><td>T149</td><td>Implementar el detalle de la alerta</td><td>Vista deviation-detail con desviaciones, ambiente, dispositivo y acciones relacionadas.</td><td>3</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>T150</td><td>Integrar el detalle con la API</td><td>CaStore y GET /​deviation-alerts/​{id}.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="2">US91</td><td rowspan="2">Registrar que una alerta está siendo atendida</td><td>T151</td><td>Implementar la atención de la alerta</td><td>Acción "Atender" para operarios y responsables de calidad.</td><td>3</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>T152</td><td>Integrar la atención con la API</td><td>POST /​deviation-alerts/​{id}/​acknowledge­ments.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="2">US92</td><td rowspan="2">Resolver una alerta</td><td>T153</td><td>Implementar la resolución</td><td>Formulario con notas de resolución obligatorias.</td><td>3</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>T154</td><td>Integrar la resolución con la API</td><td>POST /​deviation-alerts/​{id}/​resolutions.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="2">US93</td><td rowspan="2">Identificar lotes afectados por una materia prima no utilizable</td><td>T155</td><td>Mostrar los lotes afectados</td><td>Lotes de producto que usaron una materia prima no utilizable en inventory-detail.</td><td>5</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>T156</td><td>Integrar los eventos de cumplimiento</td><td>Consulta de eventos de cumplimiento por lote.</td><td>4</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="2">US96</td><td rowspan="2">Recibir avisos en la aplicación</td><td>T157</td><td>Implementar la campana de avisos</td><td>Vista notification-bell con contador de no leídos.</td><td>3</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>T158</td><td>Integrar los avisos con la API</td><td>Notification​Store, /​users/​me/​noti­fications y read-receipts.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="2">US97</td><td rowspan="2">Configurar mis preferencias de notificación</td><td>T159</td><td>Implementar las preferencias de notificación</td><td>Vista notification-preferences-form.</td><td>3</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>T160</td><td>Integrar las preferencias con la API</td><td>GET y PUT /​users/​me/​notification-preferences.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Reporting &amp; Audit</strong></td></tr>
<tr><td rowspan="2">US98</td><td rowspan="2">Consultar el registro de auditoría</td><td>T161</td><td>Implementar el visor de auditoría</td><td>Vista audit-log-viewer por equipo, lote y personal.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T162</td><td>Integrar la auditoría con la API</td><td>RaStore y GET .../​audit-logs.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US99</td><td rowspan="2">Consultar un resumen de mediciones ambientales</td><td>T163</td><td>Implementar el resumen de mediciones</td><td>Vista kpi-dashboard con mínimo, máximo y promedio por métrica.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T164</td><td>Integrar los indicadores con la API</td><td>GET .../​kpi-dashboards​?from​&amp;to.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US100</td><td rowspan="2">Consultar indicadores de desviaciones</td><td>T165</td><td>Implementar el gráfico de desviaciones</td><td>Vista deviation-trend-chart con tiempo en rango.</td><td>5</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T166</td><td>Integrar las tendencias con la API</td><td>GET .../​environments/​{id}/​deviation-trends.</td><td>4</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US101</td><td rowspan="2">Generar un reporte ambiental</td><td>T167</td><td>Implementar el reporte ambiental</td><td>Vista report-generator para el reporte ambiental por periodo.</td><td>5</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T168</td><td>Descargar el reporte en PDF</td><td>POST .../reports y GET /​reports/​{id}/​content.</td><td>4</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US102</td><td rowspan="2">Generar un reporte de trazabilidad de lote</td><td>T169</td><td>Implementar el reporte de trazabilidad</td><td>Selección del lote en report-generator.</td><td>5</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T170</td><td>Descargar el reporte en PDF</td><td>Generación y descarga del PDF del lote.</td><td>4</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US103</td><td rowspan="2">Generar un reporte de inventario</td><td>T171</td><td>Implementar el reporte de inventario</td><td>Reporte de todo el laboratorio o de un ambiente.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T172</td><td>Descargar el reporte en PDF</td><td>Generación y descarga del PDF.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US104</td><td rowspan="2">Generar un reporte de mante­nimiento</td><td>T173</td><td>Implementar el reporte de mante­nimiento</td><td>Reporte de mante­nimientos por periodo.</td><td>3</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T174</td><td>Descargar el reporte en PDF</td><td>Generación y descarga del PDF.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US105</td><td rowspan="2">Consultar el panel de control del laboratorio</td><td>T175</td><td>Implementar el panel de control</td><td>Vista dashboard con equipos, lotes en proceso, alertas abiertas, stock bajo, telemetría y suscripción.</td><td>5</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>T176</td><td>Integrar el panel con la API</td><td>Dashboard​Store que combina laboratorio, equipos, lotes, alertas, inventario y telemetría.</td><td>4</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Profile</strong></td></tr>
<tr><td rowspan="2">US106</td><td rowspan="2">Actualizar mis datos personales</td><td>T177</td><td>Implementar el perfil personal</td><td>Vista profile-page con nombre, DNI, teléfono y ubicación.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T178</td><td>Integrar el perfil con la API</td><td>ProfileStore y GET/PUT /​users/​me/​profile.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US107</td><td rowspan="2">Actualizar mi foto de perfil</td><td>T179</td><td>Implementar la foto de perfil</td><td>Carga y retiro de foto JPG, PNG o WebP de hasta 2 MB.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T180</td><td>Integrar la foto con la API</td><td>PUT y DELETE /​users/​me/​profile/​photo.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="2">US108</td><td rowspan="2">Consultar el perfil de un miembro del personal</td><td>T181</td><td>Mostrar el perfil del personal</td><td>Datos y foto del miembro para el responsable de calidad.</td><td>3</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>T182</td><td>Integrar el perfil con la API</td><td>GET .../​staff/​{id}/​profile.</td><td>3</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
</table>

---

#### 6.2.1.4. Development Evidence for Sprint Review

En este sprint se implementó la primera versión de la Landing Page y de la Web Application de QualiTrack.

- **Landing Page:** se implementaron las secciones Home, Features, Benefits, About Us (IoTech y el equipo), Plans y testimonios con la llamada final a la acción, la navegación entre secciones, el cambio de idioma entre inglés y español, el diseño adaptable a dispositivos móviles y las páginas de Términos de Servicio y Política de Privacidad.
- **Web Application:** se construyó la base de la aplicación con Angular y Angular Material (layout, barra de navegación, selector de idioma e internacionalización) y los módulos de cada Bounded Context: autenticación, recuperación de contraseña y configuración inicial; planes, pago y resumen de suscripción; laboratorio, ambientes y personal; inventario de materias primas por ambiente; equipos, mantenimiento y dispositivos IoT; perfiles ambientales, monitoreo e historial de telemetría; productos, lotes, consumos, trazabilidad, liberación y rechazo; alertas de desviación y avisos; indicadores, auditoría y reportes; perfil del usuario y panel de control. Al final del sprint se documentó con TSDoc el módulo de Compliance & Alerting y se inició la documentación de entidades del módulo de inventario.

Las siguientes tablas presentan los commits de implementación de cada repositorio, ordenados por fecha, junto con la rama en la que se realizaron.

**Landing Page** ([IoTech-2620-8741/qualitrack-landing-page](https://github.com/IoTech-2620-8741/qualitrack-landing-page))

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| Io​Tech-2620-8741/​qualitrack-landing-page | develop | dccc748 | docs​(readme): Add README.md with project overview, key features, subscription plans, technologies used, project structure, and team details | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | develop | a4eddf0 | docs​(readme): Update team member details in README.md | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 691a42d | feat​(landing-page): Add initial landing page structure and content | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 9acff14 | feat​(landing-page): Add privacy policy page with comprehensive data handling information | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 5e0fccc | feat​(landing-page): Add Terms of Service page with comprehensive usage guidelines | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 2d20d07 | feat​(landing-page): Add new images for team members and landing page visuals | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 804c1dd | feat​(landing-page): Implement language switching and interactive UI features | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | aac283b | feat​(translations): Add English and Spanish translations for landing page content | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 807dfd4 | feat​(styles): Add comprehensive CSS styles for landing page layout and design | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members | 86f222c | feat​(translations): Update team member descriptions in English and Spanish | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members | d262b10 | feat​(images): Remove unused team member icons for optimization | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members | d54f84f | feat​(images): Add new team member icons for enhanced representation | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members | 83f6cbd | feat(team): Update team member profiles and add new members | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page-video | e9212f6 | feat(team): Add new team member Adrian Quiroz Cáceres to the profiles | — | 01/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page | 6eb30de | fix(link): Update demo request link to the new URL | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page | 93d49fd | fix(link): Update plan links to the new URL | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page | af3980c | fix(link): Update demo request link to the new URL | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page | 4a37b08 | fix​(copyright): Update copyright information from ClosedSource to IoTech | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page | 8ed862c | fix(link): Update sign-up link to the new URL | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | release/​v1.0.0 | baa57e3 | docs​(readme): add version 1.0.0 section | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page-video | 4058b79 | fix(video): remove YouTube embed URL from features section | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page-video | 969ed0d | fix(video): remove YouTube embed URL from About Us section | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page | cc88589 | docs​(readme): replace ClosedSource with IoTech | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page | cb57105 | fix(legal): replace ClosedSource with IoTech in terms and policies | — | 08/10/2026 |

**Web Application** ([IoTech-2620-8741/qualitrack-web-app](https://github.com/IoTech-2620-8741/qualitrack-web-app))

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 93772bd | feat(app): bootstrap routing providers and environments | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | ec96fc5 | chore: initial commit | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 311af67 | style​(theme): configure application styles and Material theme | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | ed7df87 | feat​(shared): add entity contracts and API infrastructure | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 8f92322 | feat​(layout): add navigation toolbar and language switcher | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | da7f567 | feat​(shared): add home about and fallback views | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 8c6339d | feat​(dashboard): summarize telemetry inventory and subscription data | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 77e3757 | feat(i18n): add English and Spanish translations | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 6b3a889 | style​(brand): add QualiTrack visual assets | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | a444f58 | feat(iam): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 342ae19 | feat(iam): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 5f12de5 | feat(iam): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | b7069f1 | feat(iam): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | f399191 | feat​(subscription): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 44c6280 | feat​(subscription): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 2c2e506 | feat​(subscription): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 339b64a | feat​(subscription): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | d6383c9 | feat​(laboratory): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | bf034ff | feat​(laboratory): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | ea65201 | feat​(laboratory): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 9a415d2 | feat​(laboratory): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | b7b2694 | feat​(equipment): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 5003d2f | feat​(equipment): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 151a67d | feat​(equipment): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 7a79c11 | feat​(equipment): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 03532d8 | feat(batch): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 13e2c53 | feat(batch): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 5187168 | feat(batch): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | c08ba8d | feat(batch): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 0141d55 | feat(ca): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 1a39110 | feat(ca): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 5fa3ebe | feat(ca): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | ec4ccec | feat(ca): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | f902471 | feat​(tracking): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 2f8703a | feat​(tracking): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 2ed0760 | feat​(tracking): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 2c799a8 | feat​(tracking): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 851b212 | feat(ra): define client domain models and commands | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 830bff1 | feat(ra): integrate API clients and response assemblers | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 720f988 | feat(ra): manage reactive application state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | da7ca89 | feat(ra): implement views forms and navigation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 626de53 | test(iam): verify onboarding guards and subscription mapping | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 3a2740d | test​(inventory): verify batch consumption and material stock history | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 6c8c5cf | test(app): verify dashboard reporting alerts and telemetry state | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | af47cdf | test(e2e): cover onboarding and subscription catalog flows | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 486757a | test(e2e): cover inventory movements and report generation | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 37c1950 | test(e2e): cover dashboard and responsive layouts | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 730bd11 | docs​(architecture): add frontend bounded context diagrams | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 9f160f1 | chore​(fixtures): add local API sample data and tooling | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding | 8ba0003 | docs(setup): document frontend development and editor tooling | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 039f606 | feat​(inventory): define typed catalog and receipt contracts | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 483cfb5 | docs​(inventory): map client contracts for the next integration | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 1d9b27f | chore​(inventory): reserve remaining bounded context layers | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | d812a53 | test​(frontend): remove spec files after verification | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 6c05daa | feat​(inventory): connect catalogue receipts and movement history | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | a5f5417 | refactor​(inventory): align models routes and environment paths | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 5f61af1 | feat​(inventory): add expandable sidebar navigation | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 2f84f9b | fix​(inventory): separate material registration from catalogue | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 73e2052 | docs​(inventory): document frontend classes and context integration | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation | 3bcebfd | docs​(inventory): remove superseded foundation diagram | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory-environments | 84be36d | feat​(laboratory): add environment models and API client | Map the Laboratory environment contract (TS15-TS18): entity, usage values, commands, resources, assembler and endpoint client under /​laboratories/​{laboratory​Id}/​environments. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory-environments | 266ff43 | refactor​(iam): expose the quality management role check | Centralize the ROLE_​QA_​MANAGER/​ROLE_​ADMIN check in IamStore and reuse it from Inventory instead of duplicating it per bounded context. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory-environments | a5805bd | feat​(laboratory): manage environments in the web app | List environments with an empty state (US32), register them with an optional usage (US30, US31), edit them (US33) and reassign the usage from the list. Changes are offered only … | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-environment-raw-materials | 518ead6 | feat​(laboratory): add environment selector and remembered environment | Adds a reusable Material select of the laboratory environments and lets the environment store pick the environment to open by default: the last one used in this browser, otherwi… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-environment-raw-materials | df526af | feat(batch): read raw material usages inside an environment | Consumes GET /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​ raw-materials/​{raw​Material​Id}/​usages to trace which product batches used the lots of an inventory raw mat… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-environment-raw-materials | 8549fcf | feat​(inventory): scope raw materials and lots to environments | Raw materials, lots, reviews, movements and legacy imports now use /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​... so the inventory is kept per environment (TS21-T… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management | 577a396 | refactor​(shared): share the operations page layout | The inventory page stylesheet moves to shared/​presentation/​styles as operations-page.css (class operations-page) so the product batch pages can use the same headings, tables, no… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management | eac465f | feat​(laboratory): remember the environment per feature | Inventory and production remember their own environment, so opening a production environment for products no longer changes the warehouse that the inventory opens by default. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management | 6c17fce | refactor​(laboratory): remove unrouted legacy raw material views | The raw material list and form of Laboratory were no longer reachable (their routes redirect to /inventory) and the form called the write endpoint that only answered 410. The vi… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management | 99d7829 | feat(batch): manage products and batches per environment | The web app follows the nested Product Batch API: /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches. - products move from Laboratory to the … | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management | f959dac | docs(batch): document the environment-scoped frontend modules | The Laboratory, Inventory and Product Batch frontend diagrams now show environments and the remembered environment per feature, the inventory kept per environment, products and … | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices | 86351b3 | refactor​(shared): place shared helpers by DDD layer | - The stock quantity rule (three decimals, whole counted units) is domain knowledge shared by Inventory and Product Batch: it now lives in shared/​domain/​model/​stock-unit.ts, mir… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices | fb0b313 | feat​(equipment): manage equipment and IoT devices per laboratory and environment | Uses the nested API (TS31-TS40): equipment list with environment, type filter and IoT device type; registration of equipment (quality roles) and of ESP32 environmental devices a… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices | 415cb2e | feat​(tracking): show only IoT devices and their connection status (TS41) | Telemetry views select among environmental devices and container monitors, and the dashboard reads the connection status from /​laboratories/​{laboratory​Id}/​environments/​{environm… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices | 1f87478 | docs​(equipment): document the equipment, IoT device and tracking frontend | Updates the Equipment and Tracking frontend class diagrams and the overall frontend diagram: IoT device types, location per environment, status changes, nested maintenance, the … | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices | ce36f24 | refactor​(equipment): align the equipment list with the operations pages | The list now uses the shared operations page layout of inventory and batches: heading with actions, a summary of process equipment, IoT devices and equipment in maintenance or o… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices | 13355de | refactor​(i18n): name the translation files en.json and es.json | Renames public/​i18n/​en_​US.json and es_419.json to en.json and es.json and uses the en and es language codes in the translate configuration, the application bootstrap and the lan… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts | 0f2d1ff | feat(iam): staff accounts sign in with their own credentials | Public sign-up only creates quality manager accounts; operators and auditors use the account their quality manager creates. A staff account with a temporary password must change… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts | e2e71ea | feat(staff): register operators and auditors and see what they did | The staff form asks for the job title, the e-mail (their username) and whether the person is an operator or an auditor, and shows how the credentials were delivered: by e-mail, … | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts | 6b5136c | feat(staff): choose technicians and batch staff from the staff list | The maintenance form picks the technician among the active operators of the laboratory (technician​Staff​Id) instead of a typed name; an operator can only choose themselves. In a … | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts | 03cc0e8 | feat(iam): read-only views for auditors and no subscription for staff | Auditors no longer see the forms that register or change records: status changes, maintenance and BPM limits of an equipment, new batches, raw material usage and participants, r… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts | bbe83df | docs(staff): document staff accounts in the frontend diagrams | IAM (onboarding states, password change, role guards), Laboratory (staff access role, credentials delivery, staff detail), Equipment and Product Batch (staff pickers), RA (staff… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​tracking-environmental-profiles | f4c6f67 | feat​(tracking): monitor environments and configure environmental profiles | Tracking now works per environment with the environmental device and the container monitors located in it: - Monitoring: latest reading per metric with its NORMAL/​WARNING/​CRITIC… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​tracking-environmental-profiles | 7a8a98a | docs​(tracking): document environmental monitoring and profiles in the frontend diagrams | Tracking frontend diagram with the environmental profiles, readings, actions and the three views; the dashboard is documented with its view-scoped store and the BPM note reflect… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | f845485 | refactor: add the API paths of the reviewed routes | Paths for alert acknowledgements and resolutions, report content and subscription cancellation requests; the equipment record paths now live under the laboratory; unused billing… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | 9aaab1b | refactor​(ca): acknowledge and resolve alerts as sub-resources | Alerts and compliance events of an equipment are read under its laboratory; acknowledging and resolving post to /​acknowledgements and /resolutions without the user id, which the… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | 4dbef42 | refactor​(ra): download reports after creating them and nest equipment records | Reports are created (201) and their PDF or CSV is then downloaded from /​reports/​{report​Id}/​content. The equipment log is exported from the environment where the equipment is loc… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | db7e5af | refactor​(equipment): save BPM ranges per parameter | The BPM form replaces the range of the parameter with PUT /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name} and receives the saved range; the unu… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | 931a0bb | refactor​(subscription): cancel through a cancellation request | Billing summary cancels with POST /​subscriptions/​{subscription​Id}/​cancellation-requests and reads the active subscription from the filtered list of the laboratory. | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | f38c77e | refactor​(batch): read the legacy material history under the laboratory | The usages of a raw material registered before Inventory are read from /​laboratories/​{laboratory​Id}/​raw-materials/​{legacy​Raw​Material​Id}/​usages. | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | 05b0bcc | docs: document the reviewed API routes in the frontend diagrams | Compliance, reporting, equipment, subscription, batch, inventory and laboratory diagrams show the new routes and requests without user ids; the message response is removed. | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency | 1255785 | fix(shared): use one naming convention in the sidebar | The menu reads only nav.* labels instead of page titles, subtitles and buttons: English in Title Case and Spanish with an initial capital, the American spelling Catalog, section… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency | 7cdc45b | feat​(shared): lead the logo and name to home or to the dashboard | Before signing in, the QualiTrack logo and name of the toolbar lead to the home page; once signed in, they lead to the dashboard, also from the application layout. The link has … | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency | 320c116 | docs​(shared): document the brand link and the menu labels | The shared frontend diagram shows where the logo and name lead and the naming convention of the sidebar. | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review | 47eb194 | refactor: keep the equipment record paths together | After Tracking, the API paths of the records of an equipment (BPM ranges, deviation trends and alerts, compliance events, audit logs and log reports) are listed together again, … | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency | 4292ff8 | fix(shared): name the tracking menu entries with nav labels | With the Tracking views in develop, the sidebar names environmental monitoring, telemetry history and environmental profiles with nav.* labels in the same convention as the rest… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments | e33589e | feat​(tracking): open the history of a device from a link | /​tracking/​history accepts environment​Id and deviceId query parameters, used to show the conditions of the container where a lot or batch is stored. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments | 539ee9e | feat​(inventory): store raw material lots in monitored containers | The lots of a raw material show their container and, in raw material storage environments, operators and quality managers store them in an operational container monitor of the e… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments | 3db79f3 | feat(batch): store product batches in monitored containers | New Storage tab in the batch detail: operators and quality managers store the batch in an operational container monitor of a product storage environment, grouped by environment,​… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments | 97458c1 | docs​(diagrams): add container assignments to the frontend diagrams | Inventory detail and store, batch storage tab and API, and the tracking history deep link. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​compliance-environment-alerts | 0543bff | feat(ca): list and attend the alerts of an environment | Alerts are read per environment (US85, TS74) with their origin, variable, value and limit, deviations of the incident and return to normal. The Active Alerts and Alert History v… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​compliance-environment-alerts | c9c2658 | docs​(diagrams): add environment alerts to the frontend diagrams | Compliance store, API, alert table and views, and the dashboard alerts of the shared diagram. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators | c766ac8 | feat(ra): indicator periods, environment trends and inventory report clients | The KPI dashboard is requested for a period and an optional environment, deviation trends per environment with their time in range and deviations, the environmental report per e… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators | f3813bf | feat(ra): environmental summary, deviation indicators and inventory report views | Environmental summary of the last 24 hours, 7 or 31 days for every environment or one; deviation indicators per device and variable of an environment with a chart of the reading… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators | 4a8f13d | feat(i18n): texts of the reporting indicators and reports | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators | 56a5d19 | docs​(diagrams): reporting frontend with indicators and inventory report | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators | cc1c9cd | fix(ra): show the all environments option and hide the formula without readings | mat-select shows no option for a null value, so "All environments" uses the value 0 in the environmental summary and the environmental and inventory reports; the summary explain… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | 419698d | feat(iam): account e-mail at sign-up and password recovery with a code | The sign-up asks for the e-mail and explains a duplicated username or e-mail; the sign-in links to the recovery, a two-step view that requests the 6-digit code and sets the new … | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | 11830a6 | feat​(subscription): cancel the renewal from the billing summary | Cancel renewal asks for confirmation and keeps the subscription with its access until the end of the period, shown as Active until with a notice (US23, TS11). | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | f5b3dd7 | feat(i18n): texts of the password recovery and the renewal cancellation | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | 3ea0003 | docs​(diagrams): password recovery and renewal cancellation in the frontend | The relations that used classes of the IAM diagram before their declaration no longer duplicate them. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications | 0ff02bf | feat(iam): change the username and e-mail of the account | Iam​Store.update​Account sends PUT /users/me with the current password and keeps the session with the token the platform issues again, since the token names the user. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications | f14b391 | feat​(profile): add the profile page and the profile in the toolbar and staff detail | New Profile bounded context: the name in the toolbar shows the photo and full name and opens /profile, where each person edits the photo (JPG, PNG or WebP up to 2 MB), personal … | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications | 96f22a3 | feat(ca): add the notification bell and e-mail a critical alert on demand | The bell of the toolbar counts the unread notifications every 30 seconds and opens a panel over the current view with the latest ones; opening one marks it as read and shows the… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications | 467c2b7 | docs​(diagrams): profile, notification bell and account changes | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​mobile-toolbar-user | d329842 | fix(shared): keep the user in the toolbar on phones | Up to 720px wide the brand of the toolbar is hidden so the photo, name and role of the user stay visible next to the sign-out button; up to 480px the language switcher drops its… | 05/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​mobile-toolbar-user | 453962a | docs​(diagrams): toolbar on narrow screens | — | 05/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-domain-tsdoc | 4c864b2 | docs(ca): document deviation alert entity | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-domain-tsdoc | 9137203 | docs(ca): document notification entity | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-domain-tsdoc | b68f21e | docs(ca): fix example indentation in compliance event and preference models | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | 92f0461 | docs(ca): document alert assembler | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | 691ccf8 | docs(ca): document alert resources | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | 3d57843 | docs(ca): document alert api endpoint | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | 25092df | docs(ca): document compliance event api endpoint | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | 013dfe1 | docs(ca): document notification assembler | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | b2ea0e3 | docs(ca): document notification resources | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | e375ae2 | docs(ca): document notification api endpoint | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | dafda67 | docs(ca): document notification preference api endpoint | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | b778287 | docs(ca): fix resolve alert request documentation | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc | 2116dc6 | docs(ca): complete ca api facade documentation | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-application-tsdoc | 7b3180c | docs(ca): document notification store | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-application-tsdoc | 9335ac5 | docs(ca): document ca store | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc | cc1ee21 | docs(ca): document ca routes | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc | 4558790 | docs(ca): document alert table | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc | 33d51ba | docs(ca): document alert dashboard | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc | 5663cb7 | docs(ca): document alert history | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc | 8e765d3 | docs(ca): document deviation detail | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc | 6923e29 | docs(ca): document notification bell | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc | 29e9b12 | docs(ca): document notification preferences form | — | 06/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | fad621d | feat​(inventory): add inventory movement entity | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 8731e99 | feat​(inventory): add legacy material interface | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 4837314 | feat​(inventory): add raw material entity | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 429db31 | feat​(inventory): add raw material batch entity | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 2b9b510 | feat​(inventory): add recieve raw material batch command | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 62cd24d | feat​(inventory): add review raw material batch command interface | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | f8f8639 | feat​(inventory): add save raw material command interface. | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | ab10d61 | feat​(inventory): add inventory movement resource and response interfaces | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | bc30e45 | feat​(inventory): add inventory movement assembler | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | e14e7eb | feat​(inventory): add legacy inventory response interface. | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | b061dcc | feat​(inventory): add save raw material request interface | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | e9141d7 | feat​(inventory): add raw material resource and response interfaces. | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | a1da7db | feat​(inventory): add raw material assembler | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 9b587b5 | feat​(inventory): add raw material batch request interface | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | caed8fe | feat​(inventory): add raw material batch response interface | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | ae77176 | feat​(inventory): add raw material batch assembler | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | b1bd6e5 | feat​(inventory-movement): add api endpoint for inventory movement | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 769c43e | feat​(legacy-inventory): add api endpoint for legacy inventory | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 591cd8b | feat​(raw-material): add api endpoint for raw material | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | deebba8 | feat​(raw-material-batch): add api endpoint for raw material batch | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 109aeb1 | feat​(inventory-api): implements api for inventory management. | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | fb7a33e | feat​(inventory-store): implements inventory store raw material management | — | 07/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | ba52769 | feat​(tracking): improve IoT device state management and telemetry handling | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 836e4a1 | feat​(tracking): improve IoT actuation event management and traceability | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 8169ac0 | feat​(tracking): improve IoT device connectivity state management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 3b7227f | feat​(tracking): improve IoT monitoring metric management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | fb6bfe3 | feat​(tracking): improve environmental profile management and automation rules | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 0f26f3e | feat​(tracking): improve IoT device connection data mapping | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | e8b7f4e | feat​(tracking): improve IoT device telemetry response handling | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 0f574f9 | feat​(tracking): improve IoT telemetry API integration management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 2168ac8 | feat​(tracking): improve IoT telemetry endpoint management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | a51f8a4 | feat​(tracking): improve IoT telemetry resource data management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 1a31d2f | feat​(profile): improve profile API endpoint integration management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 468355a | feat​(profile): improve profile API facade operations | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 775fb19 | feat​(profile): improve profile resource data mapping | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 53ce8f1 | docs​(profile): document profile resource | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | fcc2bbd | docs​(profile): document update profile request | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | e49ba29 | feat​(profile): improve profile entity data model | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | ec28c8c | feat​(profile): improve profile update command workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 35f46bc | feat​(profile): improve profile state management and photo handling | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | acb590d | feat​(profile): improve profile page personal data workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | c0dcd54 | feat​(profile): improve profile routing configuration | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 3085458 | feat(iam): improve session state management and onboarding handling | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 82ae3e6 | feat​(tracking): improve IoT actuation rules configuration workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 9c935ef | feat(iam): improve onboarding state resolution workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 9fba06f | feat(iam): improve account update command workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 1fea386 | feat(iam): improve IAM API integration management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 96968fc | feat(iam): improve authentication interceptor request handling | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 3af49cf | feat(iam): improve onboarding guards access workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 19234ff | feat(iam): improve password recovery endpoint management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 215b6b1 | feat(iam): improve password recovery request data management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | aff8eb8 | docs(iam): document password recovery resources | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 6057507 | docs(iam): document update account request | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | a2fccab | feat(iam): improve onboarding view navigation workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 70c4692 | feat(iam): improve user session section display management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 60aa9d5 | feat(iam): improve change password form validation workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | ac651ae | feat(iam): improve sign-up request data management | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 48c4f5a | feat(iam): improve sign-in form password reset handling | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | 28bd2bf | feat(iam): improve password recovery view workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​angular-configuration | da13a74 | build​(angular): raise initial bundle budget error limit to 1.2MB | Production build failed because the initial bundle (1.06 MB) exceeded the 1 MB maximumError budget. | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc | f47ec51 | docs​(diagrams): add iam guard and dedupe guards in iam diagram | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 0c70460 | feat​(tracking): improve environmental threshold configuration workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | b491394 | feat​(tracking): improve environmental monitoring workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 3170437 | feat​(tracking): improve environmental profile management workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | 20cb9a3 | feat​(tracking): improve IoT telemetry history analysis workflow | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​environment-production-configuration | 615a3df | build​(environment): point production api to azure container apps backend | Replace the localhost server​Base​Path in the production environment with the deployed backend URL so the Firebase Hosting build can reach the API. | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | de2eb55 | feat​(tracking): improve IoT telemetry domain data mapping | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry | a86ec29 | feat​(tracking): improve IoT device connectivity endpoint handling | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | f19dd08 | feat​(laboratory): documentation for BC laboratory/​aplication | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | e45ce77 | feat​(laboratory): documentation for BC laboratory/​domain/​model | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | dc11012 | feat​(laboratory): documentation for BC laboratory/​infrastructure first half | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | e5e9dc3 | feat​(laboratory): documentation for BC laboratory/​infrastructure second half | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | b9eb2ae | feat​(laboratory): documentation for BC laboratory/​presentation/​components and views for environment-form.ts and environment-list.ts | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | c6c9a4a | feat​(laboratory): documentation for BC laboratory/​presentation/​view | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​firebase-hosting-ci | 7bd7ac5 | ci: deploy to Firebase Hosting on push to main | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 7e902bd | feat​(equipment): add TSDoc documentation to Bpm​Parameter​Config entity | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | e7b74cf | feat​(equipment): add TSDoc documentation to Change​Equipment​Status​Command | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 768512a | feat​(equipment): add TSDoc documentation to Configure​Bpm​Command | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 8e3fef0 | feat​(equipment): add TSDoc documentation to Equipment entity | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | e162209 | feat​(equipment): enhance TSDoc documentation for Equipment​Status and related constants | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | f843e50 | feat​(equipment): add TSDoc documentation for Iot​Device​Type and IOT_​DEVICE_​TYPES | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 028f67f | feat​(equipment): add TSDoc documentation for Maintenance​Record entity and environment​Id property | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | a403819 | feat​(equipment): add TSDoc documentation for Register​Equipment​Command interface | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | d59508c | feat​(equipment): add TSDoc documentation for Register​Iot​Device​Command interface | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 037edc5 | feat​(equipment): add TSDoc documentation for Register​Maintenance​Command interface | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 7b710af | feat​(equipment): update TSDoc example formatting in Configure​Bpm​Request | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 72e1730 | feat​(equipment): enhance TSDoc documentation for Bpm​Config​Api​Endpoint methods | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 383f9c3 | feat​(equipment): enhance TSDoc documentation for BPM configuration methods | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 46c4317 | feat​(equipment): improve TSDoc example formatting in bpm-config-response.ts | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | ca9df8e | feat​(equipment): enhance TSDoc documentation for equipment and device request interfaces | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 3d02d62 | feat​(equipment): enhance TSDoc documentation for EquipmentApi methods and endpoints | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 6b0cb82 | feat​(equipment): enhance TSDoc documentation for Equipment​Api​Endpoint methods | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 807351d | feat​(equipment): enhance TSDoc documentation for equipment assembler methods | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | e35912b | feat​(equipment): enhance TSDoc documentation for Equipment​Resource and Equipments​Response interfaces | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 7e9fa63 | feat​(equipment): enhance TSDoc documentation for Register​Maintenance​Request interface | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | f541b63 | feat​(equipment): enhance TSDoc documentation for Maintenance​Api​Endpoint methods | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 844d2d4 | feat​(equipment): enhance TSDoc documentation for maintenance assembler methods | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | eaf7fed | feat​(equipment): add TSDoc documentation to maintenance resource and response | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 5e9054c | feat​(equipment): enhance TSDoc documentation for Equipment​Store methods | — | 08/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | — | 8158b66 | feat​(equipment): enhance TSDoc documentation for lazy loading functions in equipment routes | — | 08/10/2026 |

---

#### 6.2.1.5. Testing Suite Evidence for Sprint Review

El alcance del Sprint 1 comprende la Landing Page y la Web Application. Para estos productos no se elaboró una suite de pruebas automatizadas en este sprint: su verificación se realizó de forma manual en el navegador, recorriendo los escenarios de los criterios de aceptación de cada User Story e inspeccionando las peticiones HTTP con las herramientas de desarrollo del navegador.

Las funcionalidades de la Web Application consumen el RESTful API de QualiTrack, cuyos servicios cuentan con pruebas automatizadas desarrolladas con JUnit 5 y Spring Boot Test en el repositorio [IoTech-2620-8741/qualitrack-platform](https://github.com/IoTech-2620-8741/qualitrack-platform/tree/develop/src/test/java/com/iotech/qualitrack/platform). La suite contiene 36 clases de prueba (17 de pruebas unitarias del dominio y 19 de pruebas de integración con el contexto de Spring y la base de datos de prueba) y 164 métodos de prueba, y se ejecuta con `mvn test`. En este sprint no se elaboraron pruebas de aceptación BDD con archivos `.feature`.

La siguiente tabla relaciona cada clase de prueba con el Bounded Context, los comportamientos que verifica y las User Stories que soporta.

| Clase de prueba | Tipo | Bounded Context | Comportamientos verificados (métodos de prueba) | User Stories relacionadas |
|---|---|---|---|---|
| Account​Recovery​Domain​Tests | Unitaria | IAM | the code expires after fifteen minutes and is used once; five wrong codes revoke the recovery; a new code waits one minute and replaces the previous one; (+3 más) | US14, US15 |
| Account​Recovery​Integration​Tests | Integración | IAM / Payments & Subscriptions | sign up requires a unique email; the password is reset with the code sent to the email; the answer does not reveal which accounts exist; (+2 más) | US14, US15, US23 |
| Batch​Lifecycle​Tests | Unitaria | Product Batch Management | the first raw material consumption starts a pending batch; closed batches are not started again | US77, US79, US85, US86 |
| Batch​Report​Pdf​Tests | Unitaria | Reporting & Audit | empty deviations produce a short record without fabricated scores; included alerts produce counts charts and traceable details; excluded alerts are not leaked into summary or details; (+1 más) | US102 |
| Compliance​Alerts​Integration​Tests | Integración | Compliance & Alerting | an incident detected by tracking is one alert with its actions until it is resolved; deviations confirmed through the api open or join the alert of their device | US89, US90, US91, US92 |
| Compliance​Scope​Tests | Unitaria | Compliance & Alerting | matching numeric ids do not mix events from different resource types | US89 |
| Container​Assignment​Integration​Tests | Integración | Inventory / Product Batch | raw material lots are stored in containers of their raw material storage environment; product batches are stored in containers of product storage environments | US45, US46, US82, US83 |
| Environmental​Profile​Tests | Unitaria | Tracking & Telemetry | a value is normal inside the normal range warning up to the critical limits and critical beyond; contradictory or incomplete limits are rejected; an environment only configures the metrics of its environmental device; (+3 más) | US60, US61, US62, US63 |
| Environment​Domain​Tests | Unitaria | Laboratory Management | registration normalizes code and starts without usage; registration rejects missing or oversized data; usage can change but not be reassigned to the same value; (+1 más) | US30, US31 |
| Environment​Integration​Tests | Integración | Laboratory Management | quality manager registers lists updates and classifies environments; environments of another laboratory are not available; laboratory operator can consult but not change environments | US30, US31, US32, US33 |
| Environment​Inventory​Integration​Tests | Integración | Inventory Management | quality manager registers raw materials and reviews their lots; low stock and near expiry filters identify materials and lots; raw materials are scoped to their environment and laboratory; (+2 más) | US37, US38, US39, US40 |
| Equipment​Domain​Tests | Unitaria | Equipment Management | iot device is an equipment with type and identity; equipment is located only in environments of its laboratory; status change keeps the history and rejects the current status | US48, US51 |
| Equipment​Integration​Tests | Integración | Equipment Management | quality manager registers and lists equipment of the laboratory; equipment is located in an environment of the same laboratory; status changes are traceable and rejected when not allowed; (+3 más) | US48, US49, US50, US51, US52, US53, US54, US55, US56, US57 |
| Inventory​Domain​Tests | Unitaria | Inventory Management | receipt requires review and preserves received quantity after consumption; rejects overdraft without changing stock; rejects different units without conversion; (+12 más) | US39, US41, US42, US44 |
| Inventory​Persistence​Tests | Integración | Inventory Management | only quality reviewer in same laboratory can release; simultaneous retries record only one consumption; quarantine review consumption and affected batch history persist; (+6 más) | US37, US39, US42, US47 |
| Notification​Domain​Tests | Unitaria | Compliance & Alerting | preferences decide which notices reach the bell and the email; a notification is read once and alert notices carry their severity | US96, US97 |
| Onboarding​Integration​Tests | Integración | IAM / Payments & Subscriptions / Laboratory | account must pay then create laboratory and cannot create twice; expired and unverified subscriptions do not unlock the api; account cannot register in another laboratory or self assign administrator; (+11 más) | US12, US13, US24, US25, US26, US27 |
| Open​Api​Documentation​Tests | Integración | Shared (documentación) | groups every operation by the first segment after the api version | Documentación OpenAPI |
| Period​Report​Tests | Unitaria | Reporting & Audit | environmental pdf shows indicators alerts actions and method; inventory pdf shows stock lots expiration and containers; inventory csv has one column per value; (+5 más) | US101, US103, US104 |
| Product​Batch​Integration​Tests | Integración | Product Batch Management | quality manager registers lists and reads products of an environment; product codes and names are unique in the laboratory only; only quality roles register products and other laboratories cannot read them; (+5 más) | US75, US76, US77, US78, US80, US81, US84 |
| Profile​And​Notification​Integration​Tests | Integración | Profile / Compliance & Alerting | each person keeps a profile that the quality manager sees in the staff list; a person changes the username and email of the account with the current password; the laboratory is notified of what others do with its alerts and batches | US18, US96, US106, US107, US108 |
| Profile​Domain​Tests | Unitaria | Profile | personal data is validated and blank optional values are cleared; the profile tells when the name changed; only real images up to two megabytes are accepted as photos | US106, US107 |
| Qualitrack​Platform​Application​Tests | Integración | Shared | context loads | Arranque de la aplicación |
| Reporting​Indicators​Integration​Tests | Integración | Reporting & Audit | indicators summarize the readings of the period with time in range and deviations; the environmental report combines indicators alerts and actions of each environment; the inventory report lists raw materials lots and quantities; (+1 más) | US99, US100 |
| Reporting​Tests | Unitaria | Reporting & Audit | empty repository produces no invented metric or health score; counts use only the requested laboratory records; time in range weighs each evaluated reading until the next one; (+4 más) | US98, US101 |
| Rest​Api​Integration​Tests | Integración | Shared (convenciones REST) | alerts are acknowledged and resolved as sub resources by the authenticated user; bpm parameter ranges are resources of the equipment identified by their name; created laboratories and users answer with their location | Todas las US con API |
| Staff​Account​Integration​Tests | Integración | Laboratory Management / IAM | registered staff signs in with temporary credentials and must change the password; only quality managers register staff and emails are unique; staff cannot manage the subscription and auditors only consult; (+2 más) | US17, US34, US35, US36 |
| Staff​Credentials​Email​Tests | Integración | Laboratory Management | credentials are emailed to the staff member; a failed delivery leaves the temporary password for the quality manager | US34 |
| Stock​Rollback​Tests | Integración | Inventory Management | a failed usage write rolls back the inventory consumption | US79 |
| Stock​Unit​Tests | Unitaria | Inventory Management | accepts unit aliases but never implicitly converts mass to volume; registration does not round stock or allow fractional countable units | US37, US42 |
| Stripe​Webhook​Tests | Unitaria | Payments & Subscriptions | unpaid checkout never grants access; paid checkout waits for active stripe subscription; active paid checkout persists subscription and payment without laboratory; (+4 más) | US20 |
| Subscription​Access​Tests | Unitaria | Payments & Subscriptions | active future period allows access before laboratory creation; expired or unknown periods never grant access; cancelled or unpaid subscription does not grant access; (+3 más) | US21, US23, US24 |
| Subscription​Plan​Seed​Integration​Tests | Integración | Payments & Subscriptions | startup creates the catalog plans only once; stored plans are not changed and a taken stripe price is not reused | US19 |
| Subscription​Plan​Tests | Unitaria | Payments & Subscriptions | preserves finite equipment allowances; represents unlimited equipment without an invented numeric limit; rejects negative equipment limits; (+2 más) | US19 |
| Tracking​Integration​Tests | Integración | Tracking & Telemetry | a quality manager configures the air quality of an environment with its environmental device; a container monitor has thresholds and actuation rules that need them; readings are evaluated and the deviations of an incident share one alert; (+2 más) | US60, US61, US63, US64, US67, US69 |
| Tracking​Query​Tests | Unitaria | Tracking & Telemetry | an action of the device also counts as communication; device requires review when silent for longer than the expected period | US58 |

Ejecución de la suite de pruebas del backend:

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/backend-test-suite.png" alt="Ejecución de la suite de pruebas del backend" width="90%">
  <p><em>Figura: Ejecución de la suite de pruebas del backend. Esta evidencia muestra la ejecución de las pruebas unitarias y de integración del RESTful API con Maven, que verifican el comportamiento de los servicios que consume la Web Application.</em></p>
</div>

Commits relacionados con las pruebas en este sprint:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding | 517e573 | test(iam): verify onboarding and subscription access | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding | 1b0a85a | test​(subscription): verify plans and Stripe webhook processing | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding | 3744cde | test​(inventory): verify stock units and transactional rollback | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding | 34d9ba9 | test​(reporting): verify scoped reports PDFs and telemetry queries | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation | a6d62be | test​(inventory): cover receipt eligibility and stock invariants | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation | 350a97e | feat​(inventory): implement reviewed receipts and atomic stock consumption | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​laboratory-environments | 49a3973 | test​(laboratory): cover environment rules and API | Domain tests for code normalization and usage transitions; integration tests for TS15-TS18 status codes, tenant isolation and role restrictions. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials | f0915e0 | feat​(shared): return Location headers for created resources | Add Response​Entity​Assembler.to​Created​Response​Entity​From​Result so POST endpoints that create resources answer 201 Created with a Location header; apply it to environment registra… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials | 1fece4d | feat​(inventory): manage raw materials and lots per environment | Raw materials belong to an environment and expose TS21-TS28 under /​api/​v1/​laboratories/​{laboratory​Id}/​environments/​{environment​Id}: raw-materials (stock​Status=LOW filter), stock… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials | ed7b47b | test​(inventory): cover environment inventory API | Integration tests for TS21-TS28 and TS79: status codes, Location header, stock and expiration filters, environment and laboratory isolation, and quality role restrictions. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | 49e3f1b | docs​(openapi): group operations by root resource | Swagger UI now lists each operation under the first path segment after /api/v1 (Laboratories, Batches, Equipments...) through a shared OpenAPI customizer, so resources nested un… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | e97e23b | feat(batch): register pharmaceutical products per environment | Pharmaceutical products move from Laboratory to Product Batch Management, which owns the product catalog according to the bounded context definition, and are now registered insi… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | ca42723 | feat(batch): manage product batches under their product | Product batches are now addressed through /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches: - POST and GET for the batches of a product and… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | 33e8ac1 | feat(batch): register raw material usages from the product batch | POST .../​products/​{product​Id}/​batches/​{batch​Id}/​raw-material-usages (TS65) asks Inventory Management to consume a released lot and returns the recorded usage with 201; retrying … | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | bc5fd6e | feat(batch): record equipment and staff taking part in a batch | POST .../​batches/​{batch​Id}/​equipment-usages (TS66) associates an operational equipment of the laboratory and answers 409 when it is in maintenance, out of service or inactive (U… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | add2496 | feat(batch): reconstruct the traceability of a product batch | GET .../​products/​{product​Id}/​batches/​{batch​Id}/​traceability (TS70) returns in one response the batch and its product, the raw material lots it consumed with the environment wher… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | 019f2da | test(batch): register the fixture environment without an ignored usage | Environment registration does not take a usage (it is assigned through usage-assignments), so the production fixture no longer sends one. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-iot-devices | a9cc765 | feat​(equipment): manage equipment and IoT devices per laboratory and environment | Implements US45-US54 (TS31-TS40) under /​api/​v1/​laboratories/​{laboratory​Id}: - equipments: register (quality roles, unique serial number), list and read. - devices/​environmental-… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-iot-devices | 0909fb5 | feat​(tracking): report whether an IoT device is communicating (TS41) | GET /​api/​v1/​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​telemetry-status answers CONNECTED when the environmental device or container monitor sen… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts | 0c1315c | feat(staff): sign-in accounts for the operators and auditors a quality manager registers | - POST /​laboratories/​{laboratory​Id}/​staff (quality roles) registers an OPERATOR or AUDITOR and creates their IAM account: the e-mail is the username and a temporary password is … | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts | da82eea | feat(staff): keep auditors out of operations and the laboratory profile | Auditors only consult the records, so they cannot be chosen as the technician of a maintenance or take part in a batch (400). The staff reference shared with other contexts carr… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts | 861752a | feat(staff): link the credentials e-mail to the deployed web front | The sign-in link of the credentials e-mail follows the web front URL (APPLICATION_​FRONTEND_​URL) unless QUALITRACK_​WEB_​SIGN_​IN_​URL is set. The prod profile points the front URL a… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking-environmental-profiles | 6c20e1f | feat​(tracking): environmental profiles, readings and actuation events per environment | Tracking follows the Report (US56-US69, TS42-TS45, TS54-TS60): - Environmental​Profile: versioned air quality thresholds of an environment and temperature, humidity and luminosit… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking-environmental-profiles | ccc13d6 | test​(tracking): cover environmental profiles, readings and actuation events | Domain tests for the threshold and profile rules and integration tests for the profile endpoints, reading evaluation and idempotency, deviation alerts only when the state worsen… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review | bbc3724 | refactor​(ra): create reports with 201 and nest equipment records under the laboratory | Report generation answers 201 with the stored report and Location /​api/​v1/​reports/​{report​Id}; its PDF or CSV is downloaded from /​reports/​{report​Id}/​content (TS83, TS84, TS87). E… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review | 1718793 | refactor​(subscription): request cancellations as a sub-resource and list subscriptions | POST /​subscriptions/​{subscription​Id}/​cancellation-requests (TS11) replaces the PATCH, answers 201 with the subscription and 409 when it is not active, and records the authentica… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review | fe6b425 | test: cover the reviewed REST conventions | Alert acknowledgements and resolutions with 201, 409 and 405 for the removed PATCH, BPM ranges by parameter, Location of new laboratories and users, subscriptions as a filtered … | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review | 84b1780 | test​(tracking): read deviation alerts from the laboratory equipment route | The flat /​equipments/​{id}/​deviation-alerts route no longer exists; the tracking tests read the alerts of the monitors from /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​container-assignments | 4b78e3d | test: cover container assignments of raw material lots and product batches | Checks the storage area rules (404, 400, 409 for other environments, unknown monitors, monitors in maintenance and environments with another usage), idempotent reassignment, the… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​compliance-environment-alerts | 4105c6a | feat(ca): one alert per incident of an environment or container | Deviation alerts keep their laboratory, environment, origin (environment or container), measurements, number of deviations, return to normal and attention and resolution times. … | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​compliance-environment-alerts | 27202ad | test: cover the alerts of environments and containers | Correlated incidents from Tracking, related actions, return to normal, attention and resolution by operators, read-only auditors, tenant isolation, TS73 deviations through the A… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​reporting-environment-indicators | 300a77f | test(ra): cover environmental indicators and reports | Time in range, deviations and measurement summaries, the indicators and environmental, inventory and batch reports through the API, and the updated report documents. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​reporting-environment-indicators | 3ff7db0 | test(ra): integration tests of the reporting indicators and reports | Indicators of a laboratory and of an environment, environmental report per environment, inventory report and batch report with container and release through the REST API. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​account-recovery-and-renewal-cancellation | 3265260 | test: account recovery, e-mail provider and renewal cancellation | Recovery codes (expiry, single use, attempts, resend interval), account e-mail rules, Resend request and SMTP fallback, the recovery and reset endpoints, unique e-mail at sign-u… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​profile-and-notifications | 429e549 | test: cover profiles, account changes and notifications | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​subscription-plan-seed | 9d14dc0 | test​(subscription): cover the subscription plan seed | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch-in-progress | be46afe | test(batch): cover the start of a batch with its first consumption | — | 05/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​timezone-independent-tests | 7edc50f | test: compute today in Lima time so tests do not depend on the machine time zone | Tests sent Local​Date.now​() in the JVM zone to endpoints validated against the America/Lima clocks of equipment and inventory, so on a UTC machine between 00:00 and 05:00 UTC the… | 07/10/2026 |

---

#### 6.2.1.6. Execution Evidence for Sprint Review

En este sprint se publicó la primera versión de la Landing Page y de la Web Application. La Landing Page permite a los visitantes conocer la propuesta de valor, el funcionamiento, los beneficios, el equipo y los planes de QualiTrack en inglés o español. La Web Application permite al responsable de calidad crear su cuenta, contratar su plan y registrar su laboratorio; y a todo el personal supervisar las condiciones ambientales, el inventario, los equipos, los lotes y las alertas según su rol.

La revisión del sprint verificó que un visitante pueda recorrer la Landing Page, comprender la propuesta de valor y llegar a la Web Application desde sus llamadas a la acción; y que, dentro de la aplicación, cada rol complete sus flujos principales con datos reales del laboratorio de demostración SENKA LAB, en inglés y en español.

- **Landing Page:** [https://iotech-2620-8741.github.io/qualitrack-landing-page/](https://iotech-2620-8741.github.io/qualitrack-landing-page/)
- **Web Application:** [https://qualitrack-iotech.web.app](https://qualitrack-iotech.web.app)
- **Video de Execution Evidence del Sprint 1:** [COMPLETAR: enlace al video en Microsoft Stream]

**Landing Page**

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-header.png" alt="Landing Page - Navigation bar" width="90%">
  <p><em>Figura: Encabezado y barra de navegación de la Landing Page. Esta vista evidencia el acceso directo a las secciones Home, Features, Benefits, About Us y Plans, el selector de idioma y el botón que lleva a la Web Application.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-home.png" alt="Landing Page - Home" width="90%">
  <p><em>Figura: Sección Home. Esta pantalla valida la comunicación inicial de la propuesta de valor, The Future of Pharmaceutical Quality Management, y presenta en tarjetas lo que ofrece QualiTrack: monitoreo IoT en tiempo real, cumplimiento BPM automatizado y registros de auditoría inmutables.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-features.png" alt="Landing Page - Features" width="90%">
  <p><em>Figura: Sección Features. Esta evidencia muestra en un acordeón las funcionalidades clave de la plataforma, como la integración de telemetría IoT, el motor de cumplimiento BPM, las alertas instantáneas de desviación y el panel de analítica y KPI.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-benefits.png" alt="Landing Page - Benefits" width="90%">
  <p><em>Figura: Sección Benefits. Esta vista presenta las ventajas de QualiTrack para la manufactura farmacéutica, como la reducción del tiempo de preparación de auditorías de DIGEMID y la eliminación de errores humanos en los registros críticos.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-about.png" alt="Landing Page - About Us" width="90%">
  <p><em>Figura: Sección About Us. Esta evidencia presenta la visión de QualiTrack de digitalizar la supervisión de los procesos de manufactura y el cumplimiento de las Buenas Prácticas de Manufactura exigidas por DIGEMID, sus pilares (integración IoT, trazabilidad inmutable y cumplimiento regulatorio) y los perfiles de los integrantes del equipo de IoTech.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-plans.png" alt="Landing Page - Plans" width="90%">
  <p><em>Figura: Sección Plans. Esta vista permite comparar los planes Standard Lab y Enterprise con su precio, periodicidad y características, alternando entre la modalidad mensual y anual.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-testimonials.png" alt="Landing Page - Testimonials" width="90%">
  <p><em>Figura: Sección de testimonios y llamada final a la acción. Esta evidencia muestra las opiniones de responsables de calidad y producción sobre QualiTrack y el botón Get Started que lleva a la Web Application.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-footer.png" alt="Landing Page - Footer" width="90%">
  <p><em>Figura: Footer de la Landing Page. Esta evidencia muestra el cierre de la navegación con accesos a las secciones, los datos de contacto (correo, teléfono y ubicación) y los enlaces a los Términos de Servicio y la Política de Privacidad.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-legal.png" alt="Landing Page - Terms of Service and Privacy Policy" width="90%">
  <p><em>Figura: Páginas de Términos de Servicio y Política de Privacidad. Esta vista evidencia la información legal que el visitante puede consultar antes de contratar el servicio.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/landing-es-mobile.png" alt="Landing Page - Spanish and mobile view" width="90%">
  <p><em>Figura: Landing Page en español en un dispositivo móvil. Esta evidencia valida el cambio de idioma entre inglés y español y la adaptación del diseño a pantallas pequeñas en la portada, la sección de servicios y los planes.</em></p>
</div>

**Web Application**

*Acceso y configuración inicial*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-sign-in.png" alt="Web Application - Sign In" width="90%">
  <p><em>Figura: Inicio de sesión. Esta pantalla valida el acceso del responsable de calidad, el personal operativo y los auditores con su usuario o correo, con mensajes claros cuando las credenciales no son válidas.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-sign-up.png" alt="Web Application - Sign Up" width="90%">
  <p><em>Figura: Registro de cuenta del responsable de calidad. Esta evidencia muestra los datos que se validan antes de crear la cuenta: usuario, correo único para recuperar la contraseña y contraseña con su confirmación.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-password-recovery.png" alt="Web Application - Password recovery" width="90%">
  <p><em>Figura: Recuperación de contraseña. Esta vista evidencia la solicitud con el usuario o el correo de la cuenta, a cuyo correo se envía un código de seis dígitos para restablecer la contraseña.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-change-password.png" alt="Web Application - Change temporary password" width="90%">
  <p><em>Figura: Cambio obligatorio de la contraseña temporal. Esta pantalla muestra que el personal registrado por el responsable de calidad debe definir su propia contraseña en su primer acceso.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-onboarding-plans.png" alt="Web Application - Plan selection" width="90%">
  <p><em>Figura: Selección del plan durante la configuración inicial. Esta evidencia muestra cómo el responsable de calidad sin suscripción activa elige un plan mensual o anual antes de usar las funciones operativas.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-payment-success.png" alt="Web Application - Payment confirmation" width="90%">
  <p><em>Figura: Confirmación del pago de la suscripción. Esta vista valida el retorno desde Stripe Checkout y la activación de la suscripción del laboratorio.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-lab-registration.png" alt="Web Application - Laboratory registration" width="90%">
  <p><em>Figura: Registro del laboratorio. Esta pantalla evidencia el último paso de la configuración inicial: nombre, RUC, dirección, teléfono y regulaciones aplicables de la instalación.</em></p>
</div>

*Panel de control*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-dashboard.png" alt="Web Application - Dashboard" width="90%">
  <p><em>Figura: Panel de control del laboratorio. Esta evidencia reúne en una sola vista los equipos operativos, los lotes en proceso, las alertas abiertas, las materias primas con stock bajo, la telemetría reciente y el estado de la suscripción.</em></p>
</div>

*Laboratorio, ambientes y personal*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-lab-profile.png" alt="Web Application - Laboratory profile" width="90%">
  <p><em>Figura: Perfil del laboratorio. Esta vista muestra los datos registrados de la instalación y permite actualizarlos.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-environments.png" alt="Web Application - Environments" width="90%">
  <p><em>Figura: Ambientes del laboratorio. Esta evidencia muestra el registro de ambientes y la definición de su uso (laboratorio, producción, almacén de materias primas o de producto), que determina qué se puede almacenar en cada uno.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-staff.png" alt="Web Application - Staff" width="90%">
  <p><em>Figura: Personal del laboratorio. Esta pantalla muestra el registro de operarios y auditores, su cargo, su estado y la consulta de su actividad registrada.</em></p>
</div>

*Inventario de materias primas*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-inventory-catalogue.png" alt="Web Application - Raw materials" width="90%">
  <p><em>Figura: Catálogo de materias primas por ambiente. Esta vista evidencia el stock utilizable y físico de cada material y resalta los que están por debajo del stock mínimo.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-inventory-detail.png" alt="Web Application - Raw material detail" width="90%">
  <p><em>Figura: Detalle de una materia prima. Esta evidencia muestra sus lotes recibidos con estado y vencimiento, su contenedor, el historial de movimientos y los lotes de producto que la consumieron.</em></p>
</div>

*Equipos y dispositivos IoT*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-equipment-list.png" alt="Web Application - Equipment" width="90%">
  <p><em>Figura: Equipos y dispositivos IoT. Esta pantalla lista los equipos del laboratorio con su ambiente y estado operativo, e identifica los dispositivos ambientales y monitores de contenedor con su estado de conexión.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-equipment-detail.png" alt="Web Application - Equipment detail" width="90%">
  <p><em>Figura: Detalle de un equipo. Esta evidencia reúne su historial de mantenimiento, sus parámetros BPM, sus cambios de estado y su registro de auditoría.</em></p>
</div>

*Monitoreo ambiental*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-telemetry-monitoring.png" alt="Web Application - Telemetry dashboard" width="90%">
  <p><em>Figura: Monitoreo ambiental en tiempo real. Esta vista muestra las lecturas actuales de calidad de aire, temperatura, humedad y luminosidad con su estado (normal, advertencia o crítico) frente a los rangos del perfil vigente.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-telemetry-history.png" alt="Web Application - Telemetry history" width="90%">
  <p><em>Figura: Historial de telemetría. Esta evidencia grafica las lecturas de un periodo de hasta 31 días junto con los rangos normal y crítico, resaltando las desviaciones.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-environmental-profiles.png" alt="Web Application - Environmental profiles" width="90%">
  <p><em>Figura: Perfiles ambientales. Esta pantalla evidencia la configuración versionada de rangos por ambiente y por contenedor, y las reglas de actuación automática del monitor (ventilación, enfriamiento y servo).</em></p>
</div>

*Productos y lotes*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-products.png" alt="Web Application - Products" width="90%">
  <p><em>Figura: Catálogo de productos farmacéuticos por ambiente. Esta vista muestra los productos registrados que pueden fabricarse en el laboratorio.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-batches.png" alt="Web Application - Production batches" width="90%">
  <p><em>Figura: Lotes de producción. Esta evidencia lista los lotes con su producto, cantidad y estado (pendiente, en proceso, liberado o rechazado).</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-batch-detail.png" alt="Web Application - Batch detail" width="90%">
  <p><em>Figura: Detalle de un lote. Esta pantalla muestra el registro de consumos de materia prima, que descuenta el stock e inicia el lote, y la asociación de equipos y personal.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-batch-traceability.png" alt="Web Application - Batch traceability" width="90%">
  <p><em>Figura: Trazabilidad de un lote. Esta evidencia reúne las materias primas con sus lotes de origen, los equipos, el personal y el contenedor donde se almacenó el producto.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-batch-release.png" alt="Web Application - Batch release" width="90%">
  <p><em>Figura: Liberación de un lote con firma digital. Esta vista evidencia que el responsable de calidad libera o rechaza el lote y que la liberación queda firmada con un hash SHA-256.</em></p>
</div>

*Alertas y avisos*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-alerts.png" alt="Web Application - Deviation alerts" width="90%">
  <p><em>Figura: Panel de alertas de desviación. Esta pantalla muestra las alertas por estado y severidad, con el ambiente, el dispositivo y la cantidad de desviaciones de cada incidente.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-alert-detail.png" alt="Web Application - Alert detail" width="90%">
  <p><em>Figura: Detalle de una alerta. Esta evidencia muestra la inspección técnica de la desviación, las acciones automáticas del contenedor y las acciones para atenderla y resolverla con notas.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-notifications.png" alt="Web Application - Notifications" width="90%">
  <p><em>Figura: Campana de avisos y preferencias de notificación. Esta vista evidencia los avisos de alertas y lotes con su contador de no leídos, y la elección de qué avisos llegan a la aplicación y al correo.</em></p>
</div>

*Indicadores, reportes y auditoría*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-kpi-dashboard.png" alt="Web Application - Indicators" width="90%">
  <p><em>Figura: Indicadores ambientales. Esta pantalla muestra el resumen de mediciones del periodo (mínimo, máximo y promedio), el tiempo en rango y las tendencias de desviaciones por ambiente.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-reports.png" alt="Web Application - Reports" width="90%">
  <p><em>Figura: Generación de reportes. Esta evidencia muestra los reportes en PDF ambiental, de trazabilidad de lote, de inventario y de mantenimiento, con su historial de generación.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-audit-log.png" alt="Web Application - Audit log" width="90%">
  <p><em>Figura: Registro de auditoría. Esta vista evidencia quién realizó cada acción y cuándo, sobre equipos, lotes y personal.</em></p>
</div>

*Perfil y suscripción*

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-profile.png" alt="Web Application - Profile" width="90%">
  <p><em>Figura: Perfil del usuario. Esta pantalla muestra los datos personales y la foto de perfil, junto con la información de la cuenta y del laboratorio.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-billing.png" alt="Web Application - Billing summary" width="90%">
  <p><em>Figura: Resumen de la suscripción. Esta evidencia muestra el plan vigente, el periodo de facturación, el historial de pagos y la opción de cancelar la renovación.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/web-language-es.png" alt="Web Application - Spanish interface" width="90%">
  <p><em>Figura: Interfaz en español. Esta vista valida la internacionalización de la Web Application en inglés y español con el selector de idioma.</em></p>
</div>

En conjunto, estas evidencias muestran que el Sprint 1 entregó una Landing Page navegable y bilingüe que comunica la propuesta de valor de QualiTrack, y una Web Application desplegada e integrada con el RESTful API que cubre el ciclo completo del laboratorio: configuración inicial, inventario, equipos y dispositivos IoT, monitoreo ambiental, trazabilidad y liberación de lotes, atención de alertas y generación de reportes.

---

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

La Web Application del Sprint 1 consume el RESTful API de QualiTrack, desarrollado con Spring Boot y documentado con OpenAPI mediante Swagger UI. La documentación agrupa las operaciones por recurso raíz y describe, para cada una, su propósito, parámetros, cuerpo de la petición y posibles respuestas, incluidos los errores con la estructura `ErrorResource {code, message, details}`. Todas las rutas comienzan con `/api/v1` y, salvo las de autenticación, requieren el encabezado `Authorization: Bearer <JWT>`.

- **Documentación desplegada (Swagger UI):** [Qualitrack Swagger Documentation](https://iotech-qualitrack-api.wonderfulocean-c1f38f8b.chilecentral.azurecontainerapps.io/swagger-ui/index.html)
- **Documentación local:** `http://localhost:8080/swagger-ui/index.html` (especificación en `/v3/api-docs`)
- **Repositorio:** [IoTech-2620-8741/qualitrack-platform](https://github.com/IoTech-2620-8741/qualitrack-platform)

En total se documentan 124 operaciones. Las siguientes tablas las presentan por Bounded Context con su verbo HTTP, la sintaxis de llamada, sus parámetros y los códigos de respuesta (con el recurso devuelto en las respuestas exitosas).

**IAM**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **POST** /​authentication/​password-recovery-requests | Request a password recovery | body: Password​Recovery​Request | 202 (Password​Recovery​Accepted), 400 |
| **POST** /​authentication/​password-resets | Reset the password with the verification code | body: Password​Reset​Request | 200 (Password​Reset​Completed), 400 |
| **POST** /​authentication/​sign-in | User sign-in | body: Sign​In​Resource | 200 |
| **POST** /​authentication/​sign-up | User sign-up | body: Sign​Up​Resource | 200 |
| **GET** /roles | Get roles | — | 200 (Role​Resource[]) |
| **GET** /users | Get users | — | 200 (User​Resource[]) |
| **GET** /​users/​{user​Id} | Get a user | userId (path) | 200 (User​Resource), 403, 404 |
| **PUT** /​users/​{user​Id}/​roles/​{role​Name} | Assign a role to a user | userId (path), roleName (path) | 200 (User​Resource), 400, 404 |
| **GET** /users/me | Get the account of the authenticated user | — | 200 (User​Resource), 401 |
| **PUT** /users/me | Update the username and the e-mail | body: Update​Account​Request | 200 (Authenticated​User​Resource), 400, 401, 409 |
| **GET** /​users/​me/​onboarding | Get current user's onboarding state | — | 200 (User​Onboarding​Resource), 401 |
| **POST** /​users/​me/​password-changes | Change the password | body: Change​Password​Request | 204, 400, 401 |

**Payments & Subscriptions**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **GET** /​laboratories/​{laboratory​Id}/​subscriptions | Get the subscriptions of a laboratory | laboratoryId (path), status (query, opcional) | 200 (Subscription​Resource[]) |
| **POST** /​stripe/​webhooks | Process Stripe webhook | Stripe-Signature (query), body: string | 200 (Stripe​Webhook​Resource) |
| **POST** /​subscription-checkout-sessions | Create subscription checkout session | body: Create​Checkout​Session​Resource | 200 |
| **GET** /​subscription-plans | Get subscription plans | — | 200 (Subscription​Plan​Resource[]) |
| **POST** /​subscriptions/​{subscription​Id}/​cancellation-requests | Cancel the renewal of a subscription | subscription​Id (path) | 201 (Subscription​Resource), 403, 404, 409 |
| **GET** /​subscriptions/​{subscription​Id}/​payments | Get the payments of a subscription | subscription​Id (path) | 200 (Subscription​Payment​Resource[]) |

**Laboratory Management**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **POST** /​laboratories | Create a new laboratory | body: Create​Laboratory​Request | 201 (Laboratory​Response), 400, 409 |
| **GET** /​laboratories/​{laboratory​Id} | Get laboratory by ID | laboratoryId (path) | 200 (Laboratory​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id} | Update laboratory profile | laboratoryId (path), body: Update​Laboratory​Request | 200 (Laboratory​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments | List the environments of a laboratory | laboratoryId (path) | 200 (Environment​Response[]), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments | Register an environment | laboratoryId (path), body: Create​Environment​Request | 201 (Environment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id} | Get an environment of a laboratory | laboratoryId (path), environment​Id (path) | 200 (Environment​Response), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id} | Update an environment | laboratoryId (path), environment​Id (path), body: Update​Environment​Request | 200 (Environment​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​usage-assignments | Assign the usage of an environment | laboratoryId (path), environment​Id (path), body: Assign​Environment​Usage​Request | 201 (Environment​Usage​Assignment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​staff | List staff | laboratoryId (path) | 200 (Staff​Member​Response[]), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​staff | Register a staff member | laboratoryId (path), body: Register​Staff​Request | 201 (Registered​Staff​Response), 400, 403, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id} | Get a staff member | laboratoryId (path), staffId (path) | 200 (Staff​Member​Response), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​deactivations | Deactivate a staff member | laboratoryId (path), staffId (path) | 201 (Staff​Member​Response), 403, 404, 409 |

**Inventory Management**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-material-batches | List the raw material lots of an environment | laboratoryId (path), environment​Id (path), expiration​Status (query, opcional), withinDays (query, opcional) | 200 (Raw​Material​Batch​Response[]), 400, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-material-imports | Import a legacy raw material into the environment | laboratoryId (path), environment​Id (path), body: Import​Raw​Material​Request | 201 (Raw​Material​Response), 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials | List raw materials | laboratoryId (path), environment​Id (path), stockStatus (query, opcional) | 200 (Raw​Material​Response[]), 400, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials | Register a raw material | laboratoryId (path), environment​Id (path), body: Save​Raw​Material​Resource | 201 (Raw​Material​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id} | Get a raw material | laboratoryId (path), environment​Id (path), raw​Material​Id (path) | 200 (Raw​Material​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id} | Update a raw material | laboratoryId (path), environment​Id (path), raw​Material​Id (path), body: Save​Raw​Material​Resource | 200 (Raw​Material​Response), 400, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches | List the lots of a raw material | laboratoryId (path), environment​Id (path), raw​Material​Id (path), usable (query, opcional) | 200 (Raw​Material​Batch​Response[]), 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches | Register a received raw material lot | laboratoryId (path), environment​Id (path), raw​Material​Id (path), body: Receive​Raw​Material​Batch​Resource | 201 (Raw​Material​Batch​Response), 400, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id} | Get a raw material lot | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path) | 200 (Raw​Material​Batch​Response), 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​container-assignment | Get the container of a raw material lot | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path) | 200 (Raw​Material​Batch​Container​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​container-assignment | Store a raw material lot in a container | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path), body: Assign​Raw​Material​Batch​Container​Request | 200 (Raw​Material​Batch​Container​Response), 400, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​reviews | Review a raw material lot | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path), body: Review​Raw​Material​Batch​Resource | 201 (Raw​Material​Batch​Review​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​movements | List the stock and review movements of a raw material | laboratoryId (path), environment​Id (path), raw​Material​Id (path) | 200 (Inventory​Movement​Resource[]) |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​stock | Get the usable stock of a raw material | laboratoryId (path), environment​Id (path), raw​Material​Id (path) | 200 (Raw​Material​Stock​Response), 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​usages | List the product batches that used a raw material | laboratoryId (path), environment​Id (path), raw​Material​Id (path) | 200 (Raw​Material​Usage​Response[]), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​inventory/​legacy-materials | Preview pre-Inventory records pending explicit import into an environment | laboratoryId (path) | 200 (Legacy​Material​Resource[]) |
| **GET** /​laboratories/​{laboratory​Id}/​raw-materials |  | laboratoryId (path), lowStock (query, opcional) | 200 (Raw​Material​Response[]) |
| **GET** /​laboratories/​{laboratory​Id}/​raw-materials/​{legacy​Raw​Material​Id}/​usages | Get material consumption history | laboratoryId (path), legacy​Raw​Material​Id (path) | 200 (Raw​Material​Usage​Response[]) |

**Equipment Management**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **POST** /​laboratories/​{laboratory​Id}/​devices/​container-monitors | Register a container monitor | laboratoryId (path), body: Register​Iot​Device​Request | 201 (Equipment​Response), 400, 403, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​devices/​environmental-devices | Register an environmental device | laboratoryId (path), body: Register​Iot​Device​Request | 201 (Equipment​Response), 400, 403, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors | Associate a container monitor with the environment | laboratoryId (path), environment​Id (path), body: Assign​Device​Request | 201 (Equipment​Response), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-devices | Associate an environmental device with the environment | laboratoryId (path), environment​Id (path), body: Assign​Device​Request | 201 (Equipment​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments | Associate an equipment with the environment | laboratoryId (path), environment​Id (path), body: Assign​Equipment​Request | 201 (Equipment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records | List maintenance records | laboratoryId (path), environment​Id (path), equipmentId (path) | 200 (Maintenance​Record​Response[]), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records | Register a maintenance | laboratoryId (path), environment​Id (path), equipmentId (path), body: Register​Maintenance​Request | 201 (Maintenance​Record​Response), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​status-changes | Register a status change | laboratoryId (path), environment​Id (path), equipmentId (path), body: Change​Equipment​Status​Request | 201 (Equipment​Status​Change​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments | List equipment | laboratoryId (path) | 200 (Equipment​Response[]), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​equipments | Register an equipment | laboratoryId (path), body: Register​Equipment​Request | 201 (Equipment​Response), 400, 403, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id} | Get an equipment | laboratoryId (path), equipmentId (path) | 200 (Equipment​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs | Get the BPM parameter ranges of an equipment | laboratoryId (path), equipmentId (path) | 200 (Bpm​Parameter​Config​Response[]) |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name} | Get the range of a BPM parameter of an equipment | laboratoryId (path), equipmentId (path), parameter​Name (path) | 200 (Bpm​Parameter​Config​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name} | Configure the range of a BPM parameter of an equipment | laboratoryId (path), equipmentId (path), parameter​Name (path), body: Configure​Bpm​Request | 200 (Bpm​Parameter​Config​Response), 400, 403 |

**Tracking & Telemetry**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​actuation-events | Get the actions of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path), from (query, opcional), to (query, opcional) | 200 (Actuation​Event[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​actuation-events | Record an action of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path), body: Record​Actuation​Event​Request | 200 (Actuation​Event), 201 (Actuation​Event), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile | Get the environmental profile of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path) | 200 (Environmental​Profile), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​actuation-rules | Save the actuation rules of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path), body: Update​Actuation​Rules​Request | 200 (Environmental​Profile), 400, 403 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​thresholds | Save the thresholds of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path), body: Update​Thresholds​Request | 200 (Environmental​Profile), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​telemetry-measurements | Get the readings of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path), from (query, opcional), to (query, opcional), metric (query, opcional) | 200 (Measurement[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​telemetry-measurements | Record a reading of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path), body: Record​Measurement​Request | 200 (Measurement), 201 (Measurement), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​environmental-profile | Get the profile the device applies | laboratoryId (path), environment​Id (path), deviceId (path) | 200 (Environmental​Profile), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​telemetry-status | Get the connection status of a device | laboratoryId (path), environment​Id (path), deviceId (path) | 200 (Device​Telemetry​Status​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-profile | Get the environmental profile of the environment | laboratoryId (path), environment​Id (path) | 200 (Environmental​Profile), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-profile/​thresholds | Save the thresholds of the environment | laboratoryId (path), environment​Id (path), body: Update​Thresholds​Request | 200 (Environmental​Profile), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​telemetry-measurements | Get the readings of the environmental device | laboratoryId (path), environment​Id (path), from (query, opcional), to (query, opcional), metric (query, opcional) | 200 (Measurement[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​telemetry-measurements | Record a reading of the environmental device | laboratoryId (path), environment​Id (path), body: Record​Measurement​Request | 200 (Measurement), 201 (Measurement), 400, 403 |

**Product Batch Management**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **GET** /​laboratories/​{laboratory​Id}/​batches | Get laboratory batches | laboratoryId (path) | 200 (Batch​Response[]), 400 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products | List products | laboratoryId (path), environment​Id (path) | 200 (Pharmaceutical​Product​Response[]), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products | Register a product | laboratoryId (path), environment​Id (path), body: Create​Product​Request | 201 (Pharmaceutical​Product​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id} | Get a product | laboratoryId (path), environment​Id (path), productId (path) | 200 (Pharmaceutical​Product​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches | List product batches | laboratoryId (path), environment​Id (path), productId (path) | 200 (Batch​Response[]), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches | Register a product batch | laboratoryId (path), environment​Id (path), productId (path), body: Create​Batch​Request | 201 (Batch​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id} | Get a product batch | laboratoryId (path), environment​Id (path), productId (path), batchId (path) | 200 (Batch​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment | Get the container of a product batch | laboratoryId (path), environment​Id (path), productId (path), batchId (path) | 200 (Batch​Container​Response), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment | Store a product batch in a container | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Assign​Batch​Container​Request | 200 (Batch​Container​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​equipment-usages | Register an equipment usage | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Register​Equipment​Usage​Request | 201 (Equipment​Usage​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​raw-material-usages | Register a raw material usage | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Register​Raw​Material​Usage​Request | 201 (Raw​Material​Usage​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​rejections | Reject a product batch | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Reject​Batch​Request | 201 (Batch​Rejection​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​releases | Release a product batch | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Release​Batch​Request | 201 (Batch​Release​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​staff-participations | Register a staff participation | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Register​Staff​Participation​Request | 201 (Staff​Participation​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​traceability | Get the traceability of a batch | laboratoryId (path), environment​Id (path), productId (path), batchId (path) | 200 (Batch​Traceability​Response), 403, 404 |

**Compliance & Alerting**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **GET** /​batches/​{batch​Id}/​compliance-events | Get the compliance events of a batch | batchId (path) | 200 (Compliance​Event​Resource[]) |
| **GET** /​deviation-alerts/​{alert​Id} | Get a deviation alert | alertId (path) | 200 (Deviation​Alert​Detail​Response), 403, 404 |
| **POST** /​deviation-alerts/​{alert​Id}/​acknowledgements | Acknowledge a deviation alert | alertId (path) | 201 (Deviation​Alert​Response), 403, 404, 409 |
| **POST** /​deviation-alerts/​{alert​Id}/​email-notifications | E-mail a critical alert to the laboratory | alertId (path) | 201 (Alert​Email​Notification), 403, 404, 409, 502 |
| **POST** /​deviation-alerts/​{alert​Id}/​resolutions | Resolve a deviation alert | alertId (path), body: Resolve​Alert​Request | 201 (Deviation​Alert​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-alerts | Get the deviation alerts of an environment | laboratoryId (path), environment​Id (path), status (query, opcional), severity (query, opcional), deviceId (query, opcional), active (query, opcional) | 200 (Deviation​Alert​Response[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-alerts | Register a deviation of an environment or container | laboratoryId (path), environment​Id (path), body: Create​Deviation​Alert​Request | 200 (Deviation​Alert​Response), 201 (Deviation​Alert​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​compliance-events | Get the compliance events of an equipment | laboratoryId (path), equipmentId (path) | 200 (Compliance​Event​Resource[]) |
| **GET** /​users/​me/​notification-preferences | Get the notification preferences of the authenticated user | — | 200 (Notification​Preference​Resource) |
| **PUT** /​users/​me/​notification-preferences | Update the notification preferences of the authenticated user | body: Update​Notification​Preference​Request | 200 (Notification​Preference​Resource), 400 |
| **GET** /​users/​me/​notifications | Get the notifications of the authenticated user | unread (query, opcional), limit (query, opcional) | 200 (Notification[]), 400 |
| **POST** /​users/​me/​notifications/​{notification​Id}/​read-receipts | Mark a notification as read | notification​Id (path) | 201 (Notification), 404 |
| **POST** /​users/​me/​notifications/​read-receipts | Mark every notification as read | — | 201 (Notifications​Read) |
| **GET** /​users/​me/​notifications/​unread-count | Count the unread notifications of the authenticated user | — | 200 (Unread​Notifications) |

**Reporting & Audit**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **GET** /​batches/​{batch​Id}/​audit-logs | Get the audit log of a batch | batchId (path), dateFrom (query, opcional), dateTo (query, opcional) | 200 (Audit​Log​Entry​Resource[]) |
| **GET** /​batches/​{batch​Id}/​reports | Get the reports of a batch | batchId (path) | 200 (Audit​Report​Resource[]) |
| **POST** /​batches/​{batch​Id}/​reports | Generate a batch traceability report | batchId (path), body: Generate​Batch​Report​Resource | 201 (Audit​Report​Resource), 400, 403 |
| **POST** /​laboratories/​{laboratory​Id}/​compliance-reports | Generate the environmental report of a period | laboratoryId (path), body: Generate​Compliance​Report​Resource | 201 (Audit​Report​Resource), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-trends | Get the deviation indicators of an environment | laboratoryId (path), environment​Id (path), from (query, opcional), to (query, opcional) | 200 (Deviation​Trend​Response[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​log-reports | Generate a log report of an equipment | laboratoryId (path), environment​Id (path), equipmentId (path), body: Export​Equipment​Log​Resource | 201 (Audit​Report​Resource), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​audit-logs | Get the audit log of an equipment | laboratoryId (path), equipmentId (path), dateFrom (query, opcional), dateTo (query, opcional) | 200 (Audit​Log​Entry​Resource[]) |
| **POST** /​laboratories/​{laboratory​Id}/​inventory/​reports | Generate the inventory report | laboratoryId (path), body: Generate​Inventory​Report​Request | 201 (Audit​Report​Resource), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​kpi-dashboards | Get the indicators of the laboratory | laboratoryId (path), from (query, opcional), to (query, opcional), environment​Id (query, opcional) | 200 (Kpi​Dashboard​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​reports | Get the reports generated in the laboratory | laboratoryId (path) | 200 (Audit​Report​Resource[]) |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​audit-logs | Get the activity of a staff member | laboratoryId (path), staffId (path) | 200 (Audit​Log​Entry​Resource[]), 403, 404 |
| **GET** /​reports/​{report​Id} | Get audit report by ID | reportId (path) | 200 |
| **GET** /​reports/​{report​Id}/​content | Download a stored report | reportId (path) | 200 |

**Profile**

| Endpoint | Acción | Parámetros | Respuestas |
|---|---|---|---|
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​profile | Get the profile of a staff member | laboratoryId (path), staffId (path) | 200 (Profile), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​profile/​photo | Get the photo of a staff member | laboratoryId (path), staffId (path) | 200 (string), 403, 404 |
| **GET** /​users/​me/​profile | Get the profile of the authenticated user | — | 200 (Profile), 401 |
| **PUT** /​users/​me/​profile | Update the profile of the authenticated user | body: Update​Profile​Request | 200 (Profile), 400, 401 |
| **GET** /​users/​me/​profile/​photo | Get the photo of the authenticated user | — | 200 (string), 404 |
| **PUT** /​users/​me/​profile/​photo | Replace the photo of the authenticated user | body: string | 200 (Profile), 400, 413, 415 |
| **DELETE** /​users/​me/​profile/​photo | Remove the photo of the authenticated user | — | 204, 401 |

**Ejemplos de interacción**

Inicio de sesión (`POST /api/v1/authentication/sign-in`):

```json
{
  "username": "qa.manager@senkalab.test",
  "password": "********"
}
```

Respuesta `200 OK` con el usuario autenticado y su token JWT, que se envía en las siguientes peticiones:

```json
{
  "id": 1,
  "username": "qa.manager@senkalab.test",
  "token": "eyJhbGciOiJIUzI1NiJ9...",
  "roles": ["ROLE_QA_MANAGER"],
  "laboratoryId": 1,
  "passwordChangeRequired": false
}
```

Ambientes del laboratorio (`GET /api/v1/laboratories/1/environments`), respuesta `200 OK`:

```json
[
  {
    "id": 1,
    "laboratoryId": 1,
    "code": "ALM-MP",
    "name": "Almacén de materias primas",
    "description": "Recepción y almacenamiento de insumos",
    "usage": "RAW_MATERIAL_STORAGE",
    "usageAssignedBy": 1,
    "usageAssignedAt": "2026-10-05T14:10:00Z"
  }
]
```

Mediciones de un ambiente en un periodo (`GET /api/v1/laboratories/1/environments/1/telemetry-measurements?from=2026-10-05T00:00:00.000Z&to=2026-10-06T00:00:00.000Z&metric=AIR_QUALITY`), respuesta `200 OK` con el estado evaluado por el perfil ambiental vigente:

```json
[
  {
    "id": 2841,
    "deviceId": 1,
    "environmentId": 1,
    "metric": "AIR_QUALITY",
    "value": 945,
    "textValue": null,
    "unit": "ppm",
    "measuredAt": "2026-10-05T06:04:00Z",
    "state": "CRITICAL",
    "thresholdValue": 900,
    "profileVersion": 1
  }
]
```

Interacción con la documentación usando datos de muestra:

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/swagger-ui-overview.png" alt="Swagger UI - QualiTrack API" width="90%">
  <p><em>Figura: Documentación del RESTful API en Swagger UI. Esta vista muestra las operaciones agrupadas por recurso raíz, con su verbo HTTP, ruta y descripción.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/swagger-ui-sign-in.png" alt="Swagger UI - Sign In" width="90%">
  <p><em>Figura: Operación de inicio de sesión en Swagger UI. Esta evidencia muestra su descripción, el cuerpo de la petición con el usuario y la contraseña, y la respuesta exitosa, que devuelve el usuario autenticado con su token JWT.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/swagger-ui-telemetry.png" alt="Swagger UI - Telemetry Measurements" width="90%">
  <p><em>Figura: Consulta de mediciones de telemetría de un ambiente en Swagger UI. Esta evidencia muestra los parámetros del laboratorio, el ambiente, el periodo y la métrica, y las respuestas documentadas con el estado de cada lectura y los errores posibles.</em></p>
</div>

Commits relacionados con la documentación de los servicios en este sprint:

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding | f346796 | docs​(architecture): add bounded context and database diagrams | — | 12/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation | c5da809 | docs​(inventory): document domain boundaries and rollout | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation | 4ef1328 | docs​(inventory): document backend classes and database relationships | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation | 1d8b662 | docs​(inventory): remove superseded foundation diagram | — | 13/09/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​laboratory-environments | a30c371 | docs​(laboratory): document environments model and migration | Update the laboratory backend and database PlantUML diagrams and add the MySQL migration script for profiles without ddl-auto. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials | 3e2c746 | docs​(inventory): document environment-scoped inventory | Update inventory backend and database PlantUML diagrams with environment ownership, new queries, value objects and endpoints. | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | 49e3f1b | docs​(openapi): group operations by root resource | Swagger UI now lists each operation under the first path segment after /api/v1 (Laboratories, Batches, Equipments...) through a shared OpenAPI customizer, so resources nested un… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management | 5835ed5 | docs(batch): document products and batches per environment | The Product Batch diagrams now show the products moved from Laboratory, batches nested under their product, raw material usages with their operation id, equipment and staff part… | 02/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-iot-devices | 5c24faa | docs​(equipment): document equipment per environment, IoT devices and connection status | Adds the MySQL migration for the environment, device type, firmware and unique device identity of equipment, the environment of maintenance records and the equipment_​status_​chan… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts | af385ed | docs(staff): document staff accounts, auditor permissions and staff activity | Adds the MySQL migration for the temporary password flag of IAM users, the access role and account of staff members and the technician of maintenance records, and updates the IA… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts | 4f1cf1f | docs(staff): document the staff access role shared with other contexts | — | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking-environmental-profiles | 3b05064 | docs​(tracking): document environmental profiles in the backend and database diagrams | Tracking class and database diagrams with the profiles, readings and actuation events; the global, equipment, compliance and audit diagrams show the new integration events and t… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review | 8ad6dff | docs: document the REST review in the backend diagrams | Compliance, reporting, equipment, IAM, subscription, batch, shared and global diagrams show the nested routes, the sub-resource actions, the report creation with Location and th… | 03/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​container-assignments | 7aaaf06 | docs​(diagrams): add container assignments to the backend diagrams | Inventory, Product Batch, Equipment, Laboratory, RA and global class diagrams, and the inventory_​receipts and batches container columns in the database diagrams. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​compliance-environment-alerts | 15cc2e7 | docs​(diagrams): add environment alerts to the backend diagrams | Compliance class and database diagrams, Tracking facade and normalization event, RA audit of the escalation and the global diagrams. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​reporting-environment-indicators | b60f742 | docs​(diagrams): reporting indicators, facades and declaration order | Reporting calculates the indicators on request and reads the other contexts through their facades; the stored KPI tables leave the database diagrams. Relations that used a class… | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​account-recovery-and-renewal-cancellation | eae6905 | docs​(diagrams): password recovery, e-mail provider and renewal cancellation | IAM, subscription, shared and global diagrams with the account e-mail, the password recoveries, the e-mail senders and cancel_​at_​period_​end. | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​profile-and-notifications | 28ef10c | docs​(diagrams): profile context, notifications and account changes | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​subscription-plan-seed | 0b8f807 | docs​(diagrams): subscription plan seed at startup | — | 04/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch-in-progress | 8bbd7e5 | docs​(diagrams): batch started by its first raw material consumption | — | 05/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.0.1 | c52d7c8 | docs: add README and stop ignoring it | — | 08/10/2026 |

---

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

En esta sección, se mostrarán las evidencias guardadas y documentadas sobre el despliegue del software que nosotros hemos incluido en el alcance de este primer sprint. Es importante documentar las acciones de despliegue para replicarlas y/o mejorarlas en los siguientes sprints.

**Despliegue de la aplicación backend, incluyendo base de datos**:

Nombre del repositorio en la organización: qualitrack-platform

Previo a iniciar los pasos:

* Para el uso del servicio SMTP con Gmail, debes tener creado una contraseña de aplicacion en tu cuenta de correo a usar:

1) En myaccount.google.com, buscamos **Contraseñas de aplicaciones** o entramos a [Contraseñas de aplicaciones](https://myaccount.google.com/apppasswords):

2) Ingresas el nombre de la aplicación, en este caso, escribimos **iotech-qualitrack**:

![Previous Step 1 - Ingreso del nombre de la aplicación](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-previous-step-1.png)

3) Finalmente, mostrará la contraseña para la aplicación, que nos permitirá usar la cuenta de correo para las aplicaciones externas:

![Previous Step 2 - Contraseña de aplicación generada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-previous-step-2.png)

**Paso 1: Registro de proveedores en Azure:**

1) En [Portal de Azure](https://portal.azure.com/), buscamos en la barra de navegación **Suscripciones**:

![Step 1-1 - Búsqueda en el portal de Azure](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-1.png)

2) Seleccionamos la suscripción que tenemos:

![Step 1-2 - Selección de la suscripción](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-2.png)

3) Vamos a Configuración y después Proveedores de Recursos:

![Step 1-3 - Proveedores de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-3.png)

4) Seleccionamos los siguientes recursos: Microsoft.App, Microsoft.OperationalInsights, Microsoft.ContainerRegistry, Microsoft.DBforMySQL y Microsoft.ManagedIdentity y le damos a registrar.

![Step 1-4 - Registro de los proveedores de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-4.png)

**Paso 2: Creación de grupo de recursos, identidad en GitHub y permisos:**

1) Buscamos **Grupos de recursos**:

![Step 2-1 - Búsqueda de grupos de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-1.png)

2) Le damos a Crear grupo de recursos:

![Step 2-2 - Creación del grupo de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-2.png)

3) Ingresamos el nombre y la región del grupo de recursos a crear:

![Step 2-3 - Nombre y región del grupo de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-3.png)

4) Le damos a crear grupo de recursos:

![Step 2-4 - Confirmación de creación del grupo](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-4.png)

![Step 2-5 - Grupo de recursos creado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-5.png)

5) Ahora, vamos a **Identidades administradas**:

![Step 2-6 - Acceso a identidades administradas](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-6.png)

6) Le damos a crear, seleccionamos nuestro grupo, el nombre y la región para la identidad:

![Step 2-7 - Datos de la identidad administrada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-7.png)

![Step 2-8 - Datos de la identidad administrada (región)](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-8.png)

7) Creamos la identidad administrada:

![Step 2-9 - Creación de la identidad administrada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-9.png)

8) Dentro de la identidad, vamos a Configuración y después Credenciales federadas:

![Step 2-10 - Credenciales federadas](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-10.png)

9) Agregaremos una credencial para Github Actions que nos permitirá realizar CI/CD con todos los valores que nos piden:

![Step 2-11 - Credencial para GitHub Actions](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-11.png)

10) Volvemos a grupos de recursos, entramos a Control de Acceso (IAM) y agregamos una asignación de roles con rol de **Colaborador**, en miembros, seleccionamos la credencial dentro de la identidad administrada:

![Step 2-12 - Asignación de rol Colaborador en IAM](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-12.png)

![Step 2-13 - Selección de la identidad como miembro](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-13.png)

**Paso 3: Registro de imagen de contenedor**

1) Buscamos y entramos a **Container registries** y creamos un registro, seleccionando nuestro grupo e ingresando un nombre con una región y un plan de precios y lo creamos:

![Step 3-1 - Búsqueda de Container registries](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-1.png)

![Step 3-2 - Botón Crear en Container registries](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-2.png)

![Step 3-3 - Datos básicos del registro de contenedor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-3.png)

![Step 3-4 - Revisión y validación del registro de contenedor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-4.png)

**Paso 4: Creación de la base de datos MySQL**

1) Buscamos y entramos a **Azure Database for MySQL servers**:

![Step 4-1 - Búsqueda de Azure Database for MySQL](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-1.png)

2) Le damos a Crear y seleccionamos la opción **Servidor flexible**:

![Step 4-2 - Opción Servidor flexible](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-2.png)

3) En Datos básicos, seleccionamos nuestro grupo de recursos **iotech-qualitrack-rg**, ingresamos el nombre **iotech-qualitrack-mysql**, la región **Chile Central** y la versión **8.4**:

![Step 4-3 - Datos básicos del servidor flexible](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-3.png)

4) En Carga de trabajo, seleccionamos **Desarrollo o aficionado** y verificamos que quede el tamaño **Burstable B1ms** con **20 GiB** de almacenamiento. Además, dejamos desactivada la opción de Alta disponibilidad:

![Step 4-4 - Proceso, almacenamiento y alta disponibilidad](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-4.png)

5) En Autenticación, seleccionamos únicamente **MySQL**, ingresamos el usuario **iotechadmin** y una contraseña segura. Es importante guardar esta contraseña, ya que no se puede recuperar después:

![Step 4-5 - Autenticación del servidor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-5.png)

6) En la pestaña Redes, seleccionamos como método de conectividad **Acceso público** y marcamos la opción **Permitir acceso público desde cualquier servicio de Azure dentro de Azure a este servidor**, lo que permitirá que nuestra Container App se conecte a la base de datos. Opcionalmente, podemos agregar nuestra IP actual si queremos conectarnos desde MySQL Workbench:

![Step 4-6 - Configuración de redes](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-6.png)

7) Le damos a Revisar y crear, verificamos que la validación sea superada y creamos el servidor. Este proceso puede tardar varios minutos:

![Step 4-7 - Revisión de la configuración del servidor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-7.png)

![Step 4-8 - Implementación completada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-8.png)

8) Cuando termine el despliegue, entramos al servidor, vamos a **Bases de datos** y le damos a Agregar:

![Step 4-9 - Lista de bases de datos del servidor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-9.png)

9) Ingresamos el nombre de la base de datos **iotech_qualitrack** y la guardamos:

![Step 4-10 - Creación de la base de datos iotech_qualitrack](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-10.png)

10) Finalmente, en **Información general**, copiamos el nombre del servidor, que termina en **.mysql.database.azure.com**, ya que lo usaremos más adelante para la configuración del back-end:

![Step 4-11 - Nombre del servidor en Información general](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-11.png)

**Paso 5: Creación en Container Apps con imagen temporal**

1) Creamos una aplicación contenedora de Container Apps, lo crearemos desde bash porque la creación mediante la GUI de Azure crea una versión que no admite secretos:

* Registramos las variables del nombre de grupo de recursos y región:

![Step 5-1 - Variables de grupo de recursos y región](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-1.png)

* Creamos el entorno para la aplicación de contenedores en el grupo de recursos y región:

![Step 5-2 - Creación del entorno de Container Apps](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-2.png)

![Step 5-3 - Entorno de Container Apps creado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-3.png)

* Creamos la aplicación de contenedores dentro del entorno creado:

![Step 5-4 - Creación de la aplicación contenedora](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-4.png)

**Paso 6: Agregación de identidad, permisos, secretos y variables**

1) Para la agregación de identidad, usaremos Shell:

* Obtener el ID de la identidad de la aplicación de contenedor dentro del grupo de recursos:

![Step 6-1 - Obtención del ID de la identidad de la aplicación](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-1.png)

* Asigna permisos para descargar imágenes de contenedores en el ACR:

![Step 6-2 - Asignación del rol AcrPull en el registro de contenedores](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-2.png)

* Configura la identidad administrada por el sistema de la aplicación de contenedor:

![Step 6-3 - Configuración de la identidad del sistema en el registro](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-3.png)

2) Para los secretos, ingresamos desde la aplicación de contenedor a seguridad, secretos y agregamos los secretos que necesitamos:

![Step 6-4 - Secretos de la aplicación contenedora](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-4.png)

3) Configuramos la entrada en Redes, entradas y cambiamos el puerto de entrada a 8080 (el que escucha Spring Boot):

![Step 6-5 - Configuración de la entrada en el puerto 8080](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-5.png)

4) Ingresaremos las variables de entorno para la aplicación, en este caso, haremos referencia a los secretos para algunas variables de entorno:

![Step 6-6 - Variables de entorno de la aplicación](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-6.png)

**Paso 7: Ingreso de secretos en el repositorio**

1) Entramos en nuestro repositorio, opciones, secretos y variables y agregamos los secretos de repositorio para conexión a Azure:

* Los datos AZURE_SUBSCRIPTION_ID y AZURE_TENANT_ID se consiguen con este comando:
```bash
az account show --query "{tenant:tenantId, subscription:id}" -o table
```

* El AZURE_CLIENT_ID es del paso 2

![Step 7-1 - Sección de secretos y variables de GitHub Actions](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-7-1.png)

![Step 7-2 - Secretos de repositorio para la conexión a Azure](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-7-2.png)

**Paso 8: Creación de rama en repositorio para CI-CD junto a Azure**

1) Creamos una nueva rama feature para la integración de workflows:

![Step 8-1 - Creación de la rama feature/ci-cd-azure](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-1.png)

2) Creamos los archivos deploy.yml y ci.yml dentro de .github/workflows

![Step 8-2 - Workflow deploy.yml](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-2.png)

![Step 8-3 - Workflow ci.yml](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-3.png)

3) Hacemos push a la rama feature, creamos un PR, esperamos que el test de CI termine y hacemos merge:

![Step 8-4 - Pull request fusionado con el CI aprobado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-4.png)

* Para que funcionen correctamente los workflows creados, deben restringir los merge sin previa creación de un PR.

**Paso 9: Creación de rama release versión 1.0.0**

1) Creamos nuestra rama release, en la versión 1.0.0 y la pasamos a remoto:

![Step 9-1 - Creación y push de la rama release/v1.0.0](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-1.png)

2) Creamos nuestro PR hacia main:

* Previo a la creación del PR, verificamos que todo lo creado en Azure funcione correctamente.

![Step 9-2 - Creación del pull request hacia main](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-2.png)

3) Esperamos a que las pruebas y el despliegue integrados en workflows terminen:

![Step 9-3 - Verificaciones del pull request en curso](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-3.png)

![Step 9-4 - Verificaciones del pull request aprobadas](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-4.png)

4) Después de aceptar y realizar el merge a main, esperamos a que termine el workflow de despliegue hacia Azure Container Apps que hemos creado:

* Posteriormente, se realizó un hotfix (**hotfix/deploy-image-flag**) hacia main para corregir la construcción de la imagen Docker en el workflow de despliegue. Este es el workflow que terminó correctamente:

![Step 9-6 - Workflow de despliegue completado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-5.png)

**Paso 10: Verificaciones y pasos finales**

1) Entramos a la aplicación del contenedor, dentro, entramos a revisiones y réplicas:

![Step 10-1 - Revisiones y réplicas de la aplicación contenedora](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-1.png)

2) Verificamos que podemos entrar a la documentación Swagger con el link: [Qualitrack Swagger Documentation](https://iotech-qualitrack-api.wonderfulocean-c1f38f8b.chilecentral.azurecontainerapps.io/swagger-ui/index.html)

![Step 10-2 - Documentación Swagger de la API desplegada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-2.png)

3) Verificamos la base de datos usando MySQL Workbench mediante una conexión remota y si existen las tablas:

![Step 10-3 - Conexión exitosa en MySQL Workbench](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-3.png)

![Step 10-4 - Tablas de la base de datos iotech_qualitrack](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-4.png)

4) Etiquetamos la rama main con la nueva versión de lanzamiento:

![Step 10-5 - Lista de releases del repositorio](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-5.png)

![Step 10-6 - Creación de la release v1.0.0](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-6.png)

![Step 10-7 - Release v1.0.0 publicada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-7.png)

* También eliminamos las ramas release y hotfix, cumpliendo el estándar Gitflow

5) En nuestra aplicación de contenedores, en la sección aplicaciones, contenedores y variables de entorno quitamos SPRING_JPA_HIBERNATE_DDL_AUTO para evitar cambios de esquema:

![Step 10-8 - Variable SPRING_JPA_HIBERNATE_DDL_AUTO a eliminar](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-8.png)

**Despliegue de la aplicación web**

**Pasos previos**

1) Para el despliegue en producción, cambiamos la url base de nuestra api a la desplegada para que nuestra aplicación web funcione con nuestro backend en Azure:

![Frontend Previous Step 1-1 - URL base de la API en environment.ts](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-previous-step-1-1.png)

2) Creamos un pull request hacia develop con el cambio de la configuración de producción:

![Frontend Previous Step 1-2 - Creación del pull request hacia develop](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-previous-step-1-2.png)

3) Finalmente, el pull request fue fusionado en develop:

![Frontend Previous Step 1-3 - Pull request fusionado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-previous-step-1-3.png)

**Paso 1: Creación de proyecto en Firebase**

1) Creamos nuestro proyecto llamado **iotech-qualitrack** en Firebase:

![Frontend Step 1-1 - Nombre del proyecto en Firebase](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-1-1.png)

![Frontend Step 1-2 - Creación del proyecto con Google Analytics](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-1-2.png)

**Paso 2: Inicializar Firebase en el repositorio**

1) Desde develop, creamos una rama feature para inicializar firebase

* Realizamos los siguientes comandos:
```bash
npm ci
npx firebase-tools login
npx firebase-tools init hosting
```

![Frontend Step 2-1 - Instalación de firebase-tools en el login](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-1.png)

2) Se crean 2 archivos: .firebaserc y firebase.json:

![Frontend Step 2-2 - Archivos creados](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-2.png)

3) Conectamos GitHub con Firebase:

![Frontend Step 2-3 - Inicialización de hosting con GitHub](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-3.png)

![Frontend Step 2-4 - Inicialización de hosting con GitHub completada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-4.png)

4) Hacemos push a la rama feature y realizamos un PR a develop para el release.

![Frontend Step 2-4 - Pull request hacia develop con el workflow de despliegue](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-5.png)

**Paso 3: Release y despliegue a Firebase**

1) Realizamos un release version 1.0.0 y realizamos un PR a main:

![Frontend Step 3-1 - Creación de la rama release/v1.0.0](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-1.png)

![Frontend Step 3-2 - Pull request del release hacia main](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-2.png)

2) Esperamos a que el despliegue configurado en workflows termine:

![Frontend Step 3-3 - Despliegue en progreso en GitHub Actions](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-3.png)

3) Cuando ya termino, accedemos al link de nuestra aplicación web:

![Frontend Step 3-4 - Despliegue completado en GitHub Actions](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-4.png)

![Frontend Step 3-5 - Aplicación web desplegada en Firebase Hosting](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-5.png)

**Despliegue de la Landing Page**

Nombre del repositorio en la organización: qualitrack-landing-page

La Landing Page es un sitio estático (`index.html` y la carpeta `public`), por lo que se publica directamente desde su repositorio con GitHub Pages.

**Paso 1: Publicación con GitHub Pages**

1) En el repositorio, vamos a Settings y después Pages:

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-1-1.png" alt="Sección Pages del repositorio" width="90%">
  <p><em>Figura: Sección Pages en la configuración del repositorio de la Landing Page. Esta vista evidencia el punto de partida de la publicación con GitHub Pages.</em></p>
</div>

2) En Build and deployment, seleccionamos **Deploy from a branch**, la rama **main** y la carpeta **/ (root)**, y guardamos. Con cada push a main, el workflow **pages-build-deployment** publica el sitio:

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-1-2.png" alt="Configuración de GitHub Pages" width="90%">
  <p><em>Figura: Configuración de GitHub Pages en el repositorio de la Landing Page. Esta vista evidencia la publicación desde la rama main y la carpeta raíz del repositorio.</em></p>
</div>

**Paso 2: Verificaciones**

1) Ingresamos a la Landing Page en [https://iotech-2620-8741.github.io/qualitrack-landing-page/](https://iotech-2620-8741.github.io/qualitrack-landing-page/) y recorremos sus secciones en inglés y en español:

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-2-1.png" alt="Landing Page publicada" width="90%">
  <p><em>Figura: Landing Page publicada en GitHub Pages. Esta evidencia confirma que el sitio es accesible públicamente desde la URL de la organización.</em></p>
</div>

2) Verificamos que los botones Get started y los de cada plan lleven a la Web Application publicada en Firebase Hosting:

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-2-2.png" alt="Enlace de la Landing Page a la Web Application" width="90%">
  <p><em>Figura: Llamada a la acción de la Landing Page abierta en la Web Application. Esta evidencia muestra la conexión entre el sitio público y la aplicación desplegada.</em></p>
</div>

---

#### 6.2.1.9. Team Collaboration Insights during Sprint

Durante el Sprint 1 el equipo trabajó con GitFlow: cada funcionalidad se desarrolló en una rama `feature/*` creada desde `develop`, se integró en `develop` con un merge sin fast-forward y las versiones estables se publicaron en `main` mediante ramas `release/*` con su etiqueta. Los mensajes de commit siguen Conventional Commits.

Todos los integrantes del equipo participaron en la implementación de los productos del sprint, organizados según la matriz de liderazgo y colaboración: cada líder desarrolló las funcionalidades de su aspecto y los colaboradores apoyaron en la implementación de vistas, la integración con el RESTful API, la documentación del código y la revisión de los cambios antes de integrarlos en `develop`.

**Landing Page.** En el repositorio de la Landing Page, los 24 commits de implementación del sprint fueron realizados por Huapaya Galindo, Dyron (MaineMa). El trabajo se desarrolló en las ramas `feature/previous-landing-page` y `feature/team-members` y `feature/landing-page`, que se integraron en `develop` y luego en `main`, e incluye la estructura y estilos del sitio, el cambio de idioma con sus traducciones, las páginas legales y los perfiles del equipo.

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/insights-landing-page.png" alt="GitHub Insights - Landing Page" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio de la Landing Page en GitHub Insights. Esta evidencia muestra los commits de los integrantes durante el sprint.</em></p>
</div>

**Web Application.** Cada Bounded Context del core business fue desarrollado por su líder con el apoyo del resto del equipo: Laboratory Management por Ruiz Madrid, Billy Jake; Inventory Management y Product Batch Management por Cutiri Agüero, Fabrizio Alexander; Equipment Management por Guzmán Cabrejos, Yaku Mateo; Tracking & Telemetry por Torres Apolinario, Giovany Smith; y Compliance & Alerting por Lopez Roman, Franco Mauricio. Los contextos de soporte (Identity & Access Management, Payments & Subscriptions, Reporting & Audit y Profile) se trabajaron de forma transversal, y la documentación del código con TSDoc se distribuyó entre los integrantes por módulo.

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/insights-web-app.png" alt="GitHub Insights - Web Application" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio de la Web Application en GitHub Insights. Esta evidencia muestra la participación de los integrantes en la implementación de los módulos del sprint.</em></p>
</div>

<div align="center">
  <img src="../assets/img/chapter-vi/sprint-1/insights-web-app-network.png" alt="GitHub Network - Web Application" width="90%">
  <p><em>Figura: Gráfico de red del repositorio de la Web Application. Esta vista evidencia las ramas feature creadas desde develop y su integración mediante merges, siguiendo GitFlow.</em></p>
</div>

**Interpretación.** Los analíticos de GitHub muestran la participación de todos los integrantes en los repositorios del sprint, con commits en las ramas de funcionalidad de sus aspectos y en la documentación del código. El uso de ramas `feature/*`, merges hacia `develop` y commits convencionales permitió integrar el trabajo de cada miembro de forma ordenada y mantener un historial trazable de quién implementó cada funcionalidad. Como oportunidad de mejora, el equipo se propone distribuir los commits de manera más uniforme a lo largo del sprint, evitando concentrar la integración del trabajo en los días previos a la entrega.
