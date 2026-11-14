## 6.2. Landing Page, Services & Applications Implementation

En esta sección se explica y evidencia el proceso de implementación, pruebas, documentación y despliegue de los
productos digitales de QualiTrack. Una vez definido el Product Backlog, el trabajo se organiza en sprints y, para cada
uno, se registran su planificación, el backlog con sus tareas, las evidencias de desarrollo, pruebas, ejecución,
documentación de servicios y despliegue, y los analíticos de colaboración del equipo.

### 6.2.1. Sprint 1

En esta sección se detalla el proceso de trabajo realizado por el equipo durante el primer sprint del proyecto
QualiTrack.

Este sprint se centra en la primera versión de los productos con los que interactúan directamente los usuarios: la
**Landing Page**, que presenta la propuesta de valor de QualiTrack a los visitantes, y la **Web Application (
frontend)**, que permite a responsables de calidad, personal operativo y auditores trabajar con la plataforma.

La Landing Page se publica en GitHub Pages y la Web Application en Firebase Hosting. La Web Application consume el
RESTful API de QualiTrack, desplegado en Microsoft Azure: el backend en Azure Container Apps, a partir de su imagen
Docker en Azure Container Registry, y la base de datos en Azure Database for MySQL.

#### 6.2.1.1. Sprint Planning 1

En la reunión de Sprint Planning el equipo revisó el Product Backlog, acordó el objetivo del sprint y seleccionó las
User Stories de la Landing Page y de la Web Application que forman parte de su alcance. A continuación se presenta el
resumen de la reunión.

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

#### 6.2.1.2. Aspect Leaders and Collaborators

Durante el Sprint 1 los aspectos de trabajo corresponden a la Landing Page y a los Bounded Contexts del core business de
QualiTrack implementados en la Web Application: Laboratory Management, Inventory Management, Equipment Management,
Tracking & Telemetry, Product Batch Management y Compliance & Alerting. Los contextos de soporte (Identity & Access
Management, Payments & Subscriptions, Reporting & Audit y Profile) se desarrollan de forma transversal por el equipo.

Con el fin de brindar claridad en la comunicación, se elaboró la siguiente matriz de liderazgo y colaboración (LACX).
Cada aspecto tiene uno o más líderes (L) responsables de sus tareas y el resto del equipo participa como colaborador (C)
en su implementación e integración con el RESTful API. Esta organización se refleja en la asignación de tareas del
Sprint Backlog.

| Team Member (Last Name, First Name) / GitHub User­name | Aspect: Land­ing Page | Aspect: Labor­atory Manage­ment | Aspect: Inven­tory Manage­ment | Aspect: Equip­ment Manage­ment | Aspect: Track­ing & Tele­metry | Aspect: Prod­uct Batch Manage­ment | Aspect: Compli­ance & Alert­ing |
|-------------------------------------------------------|----------------------|-------------------------------|------------------------------|------------------------------|------------------------------|----------------------------------|-------------------------------|
| Baca Camargo, Vitaly Arturo<br>(Mr-Code-star)         | C                    | C                             | C                            | C                            | C                            | C                                | C                             |
| Cutiri Agüero, Fabrizio Alexander<br>(Fabrizio​Cutiri) | C                    | C                             | L                            | C                            | C                            | L                                | C                             |
| Guzmán Cabrejos, Yaku Mateo<br>(yakumateo)            | C                    | C                             | C                            | L                            | C                            | C                                | C                             |
| Huapaya Galindo, Dyron<br>(Maine​Ma)                   | L                    | C                             | C                            | C                            | C                            | C                                | C                             |
| Lopez Roman, Franco Mauricio<br>(Franco​Lopez00)       | C                    | C                             | C                            | C                            | C                            | C                                | L                             |
| Montes Ramos, Henry Jaredt<br>(jahen17)               | C                    | C                             | C                            | C                            | C                            | C                                | C                             |
| Ruiz Madrid, Billy Jake<br>(BJRM03)                   | C                    | L                             | C                            | C                            | C                            | C                                | C                             |
| Torres Apoli­nario, Giovany Smith<br>(giovanydevv)     | C                    | C                             | C                            | C                            | L                            | C                                | C                             |
| Quiroz Caceres, Adrian Alonso<br>(Aqc1019)            | C                    | C                             | C                            | C                            | C                            | C                                | C                             |

Donde:

- **L (Leader):** responsable principal del aspecto.
- **C (Collaborator):** miembro de apoyo en la implementación.

#### 6.2.1.3. Sprint Backlog 1

El objetivo del Sprint 1 es desplegar la primera versión de la Landing Page y de la Web Application de QualiTrack. Para
ello se seleccionaron 101 User Stories (190 Story Points): 11 de la Landing Page (17 Story Points) y 90 de la Web
Application (173 Story Points). Cada User Story se descompuso en tareas de implementación de la vista y de integración
con el RESTful API, asignadas según la matriz de liderazgo y colaboración. El seguimiento del sprint se realizó en Jira.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/jira-sprint-1-board.jpg" alt="Sprint 1 en Jira" width="90%">
  <p><em>Figura: User Stories del Sprint 1 en Jira. Esta vista evidencia las 101 User Stories del sprint, filtradas por Sprint 1, con su prioridad y su estado Finalizado, con las que el equipo siguió el avance hacia el Sprint Goal.</em></p>
</div>

**Enlace público al
tablero:** [Sprint 1 - Jira](https://iotech-2620.atlassian.net/jira/software/projects/SCRUM/boards/1)

En total el sprint comprende 182 tareas y 561 horas estimadas. Al cierre del sprint, las 182 tareas se encuentran en
estado Done.

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

#### 6.2.1.4. Development Evidence for Sprint Review

En este sprint se implementó la primera versión de la Landing Page y de la Web Application de QualiTrack.

- **Landing Page:** se implementaron las secciones Home, Features, Benefits, About Us (IoTech y el equipo), Plans y
  testimonios con la llamada final a la acción, la navegación entre secciones, el cambio de idioma entre inglés y
  español, el diseño adaptable a dispositivos móviles y las páginas de Términos de Servicio y Política de Privacidad.
- **Web Application:** se construyó la base de la aplicación con Angular y Angular Material (layout, barra de
  navegación, selector de idioma e internacionalización) y los módulos de cada Bounded Context: autenticación,
  recuperación de contraseña y configuración inicial; planes, pago y resumen de suscripción; laboratorio, ambientes y
  personal; inventario de materias primas por ambiente; equipos, mantenimiento y dispositivos IoT; perfiles ambientales,
  monitoreo e historial de telemetría; productos, lotes, consumos, trazabilidad, liberación y rechazo; alertas de
  desviación y avisos; indicadores, auditoría y reportes; perfil del usuario y panel de control. Al final del sprint se
  documentó con TSDoc el módulo de Compliance & Alerting y se inició la documentación de entidades del módulo de
  inventario.

Las siguientes tablas presentan los commits de implementación de cada repositorio, ordenados por fecha, junto con la
rama en la que se realizaron.

**Landing Page**
([IoTech-2620-8741/qualitrack-landing-page](https://github.com/IoTech-2620-8741/qualitrack-landing-page))

| Repository                               | Branch                        | Commit Id | Commit Message                                                                                                                              | Commit Message Body | Committed on (Date) |
|------------------------------------------|-------------------------------|-----------|---------------------------------------------------------------------------------------------------------------------------------------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-landing-page | develop                       | dccc748   | docs​(readme): Add README.md with project overview, key features, subscription plans, technologies used, project structure, and team details | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | develop                       | a4eddf0   | docs​(readme): Update team member details in README.md                                                                                       | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 691a42d   | feat​(landing-page): Add initial landing page structure and content                                                                          | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 9acff14   | feat​(landing-page): Add privacy policy page with comprehensive data handling information                                                    | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 5e0fccc   | feat​(landing-page): Add Terms of Service page with comprehensive usage guidelines                                                           | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 2d20d07   | feat​(landing-page): Add new images for team members and landing page visuals                                                                | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 804c1dd   | feat​(landing-page): Implement language switching and interactive UI features                                                                | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | aac283b   | feat​(translations): Add English and Spanish translations for landing page content                                                           | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​previous-landing-page | 807dfd4   | feat​(styles): Add comprehensive CSS styles for landing page layout and design                                                               | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members          | 86f222c   | feat​(translations): Update team member descriptions in English and Spanish                                                                  | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members          | d262b10   | feat​(images): Remove unused team member icons for optimization                                                                              | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members          | d54f84f   | feat​(images): Add new team member icons for enhanced representation                                                                         | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​team-members          | 83f6cbd   | feat(team): Update team member profiles and add new members                                                                                 | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page-video     | e9212f6   | feat(team): Add new team member Adrian Quiroz Cáceres to the profiles                                                                       | —                   | 01/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page          | 6eb30de   | fix(link): Update demo request link to the new URL                                                                                          | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page          | 93d49fd   | fix(link): Update plan links to the new URL                                                                                                 | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page          | af3980c   | fix(link): Update demo request link to the new URL                                                                                          | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page          | 4a37b08   | fix​(copyright): Update copyright information from ClosedSource to IoTech                                                                    | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | feature/​landing-page          | 8ed862c   | fix(link): Update sign-up link to the new URL                                                                                               | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | release/​v1.0.0                | baa57e3   | docs​(readme): add version 1.0.0 section                                                                                                     | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page-video     | 4058b79   | fix(video): remove YouTube embed URL from features section                                                                                  | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page-video     | 969ed0d   | fix(video): remove YouTube embed URL from About Us section                                                                                  | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page           | cc88589   | docs​(readme): replace ClosedSource with IoTech                                                                                              | —                   | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-landing-page | hotfix/​landing-page           | cb57105   | fix(legal): replace ClosedSource with IoTech in terms and policies                                                                          | —                   | 08/10/2026          |

**Web Application** ([IoTech-2620-8741/qualitrack-web-app](https://github.com/IoTech-2620-8741/qualitrack-web-app))

| Repository                          | Branch                                            | Commit Id | Commit Message                                                                                                                      | Commit Message Body                                                                                                                                                                | Committed on (Date) |
|-------------------------------------|---------------------------------------------------|-----------|-------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 93772bd   | feat(app): bootstrap routing providers and environments                                                                             | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | ec96fc5   | chore: initial commit                                                                                                               | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 311af67   | style​(theme): configure application styles and Material theme                                                                       | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | ed7df87   | feat​(shared): add entity contracts and API infrastructure                                                                           | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 8f92322   | feat​(layout): add navigation toolbar and language switcher                                                                          | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | da7f567   | feat​(shared): add home about and fallback views                                                                                     | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 8c6339d   | feat​(dashboard): summarize telemetry inventory and subscription data                                                                | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 77e3757   | feat(i18n): add English and Spanish translations                                                                                    | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 6b3a889   | style​(brand): add QualiTrack visual assets                                                                                          | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | a444f58   | feat(iam): define client domain models and commands                                                                                 | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 342ae19   | feat(iam): integrate API clients and response assemblers                                                                            | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 5f12de5   | feat(iam): manage reactive application state                                                                                        | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | b7069f1   | feat(iam): implement views forms and navigation                                                                                     | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | f399191   | feat​(subscription): define client domain models and commands                                                                        | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 44c6280   | feat​(subscription): integrate API clients and response assemblers                                                                   | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 2c2e506   | feat​(subscription): manage reactive application state                                                                               | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 339b64a   | feat​(subscription): implement views forms and navigation                                                                            | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | d6383c9   | feat​(laboratory): define client domain models and commands                                                                          | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | bf034ff   | feat​(laboratory): integrate API clients and response assemblers                                                                     | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | ea65201   | feat​(laboratory): manage reactive application state                                                                                 | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 9a415d2   | feat​(laboratory): implement views forms and navigation                                                                              | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | b7b2694   | feat​(equipment): define client domain models and commands                                                                           | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 5003d2f   | feat​(equipment): integrate API clients and response assemblers                                                                      | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 151a67d   | feat​(equipment): manage reactive application state                                                                                  | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 7a79c11   | feat​(equipment): implement views forms and navigation                                                                               | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 03532d8   | feat(batch): define client domain models and commands                                                                               | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 13e2c53   | feat(batch): integrate API clients and response assemblers                                                                          | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 5187168   | feat(batch): manage reactive application state                                                                                      | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | c08ba8d   | feat(batch): implement views forms and navigation                                                                                   | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 0141d55   | feat(ca): define client domain models and commands                                                                                  | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 1a39110   | feat(ca): integrate API clients and response assemblers                                                                             | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 5fa3ebe   | feat(ca): manage reactive application state                                                                                         | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | ec4ccec   | feat(ca): implement views forms and navigation                                                                                      | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | f902471   | feat​(tracking): define client domain models and commands                                                                            | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 2f8703a   | feat​(tracking): integrate API clients and response assemblers                                                                       | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 2ed0760   | feat​(tracking): manage reactive application state                                                                                   | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 2c799a8   | feat​(tracking): implement views forms and navigation                                                                                | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 851b212   | feat(ra): define client domain models and commands                                                                                  | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 830bff1   | feat(ra): integrate API clients and response assemblers                                                                             | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 720f988   | feat(ra): manage reactive application state                                                                                         | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | da7ca89   | feat(ra): implement views forms and navigation                                                                                      | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 626de53   | test(iam): verify onboarding guards and subscription mapping                                                                        | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 3a2740d   | test​(inventory): verify batch consumption and material stock history                                                                | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 6c8c5cf   | test(app): verify dashboard reporting alerts and telemetry state                                                                    | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | af47cdf   | test(e2e): cover onboarding and subscription catalog flows                                                                          | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 486757a   | test(e2e): cover inventory movements and report generation                                                                          | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 37c1950   | test(e2e): cover dashboard and responsive layouts                                                                                   | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 730bd11   | docs​(architecture): add frontend bounded context diagrams                                                                           | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 9f160f1   | chore​(fixtures): add local API sample data and tooling                                                                              | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​foundation-onboarding                     | 8ba0003   | docs(setup): document frontend development and editor tooling                                                                       | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 039f606   | feat​(inventory): define typed catalog and receipt contracts                                                                         | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 483cfb5   | docs​(inventory): map client contracts for the next integration                                                                      | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 1d9b27f   | chore​(inventory): reserve remaining bounded context layers                                                                          | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | d812a53   | test​(frontend): remove spec files after verification                                                                                | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 6c05daa   | feat​(inventory): connect catalogue receipts and movement history                                                                    | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | a5f5417   | refactor​(inventory): align models routes and environment paths                                                                      | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 5f61af1   | feat​(inventory): add expandable sidebar navigation                                                                                  | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 2f84f9b   | fix​(inventory): separate material registration from catalogue                                                                       | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 73e2052   | docs​(inventory): document frontend classes and context integration                                                                  | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-domain-foundation               | 3bcebfd   | docs​(inventory): remove superseded foundation diagram                                                                               | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory-environments                   | 84be36d   | feat​(laboratory): add environment models and API client                                                                             | Map the Laboratory environment contract (TS15-TS18): entity, usage values, commands, resources, assembler and endpoint client under /​laboratories/​{laboratory​Id}/​environments.     | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory-environments                   | 266ff43   | refactor​(iam): expose the quality management role check                                                                             | Centralize the ROLE_​QA_​MANAGER/​ROLE_​ADMIN check in IamStore and reuse it from Inventory instead of duplicating it per bounded context.                                             | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory-environments                   | a5805bd   | feat​(laboratory): manage environments in the web app                                                                                | List environments with an empty state (US32), register them with an optional usage (US30, US31), edit them (US33) and reassign the usage from the list. Changes are offered only … | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-environment-raw-materials       | 518ead6   | feat​(laboratory): add environment selector and remembered environment                                                               | Adds a reusable Material select of the laboratory environments and lets the environment store pick the environment to open by default: the last one used in this browser, otherwi… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-environment-raw-materials       | df526af   | feat(batch): read raw material usages inside an environment                                                                         | Consumes GET /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​ raw-materials/​{raw​Material​Id}/​usages to trace which product batches used the lots of an inventory raw mat… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory-environment-raw-materials       | 8549fcf   | feat​(inventory): scope raw materials and lots to environments                                                                       | Raw materials, lots, reviews, movements and legacy imports now use /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​... so the inventory is kept per environment (TS21-T… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management                  | 577a396   | refactor​(shared): share the operations page layout                                                                                  | The inventory page stylesheet moves to shared/​presentation/​styles as operations-page.css (class operations-page) so the product batch pages can use the same headings, tables, no… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management                  | eac465f   | feat​(laboratory): remember the environment per feature                                                                              | Inventory and production remember their own environment, so opening a production environment for products no longer changes the warehouse that the inventory opens by default.     | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management                  | 6c17fce   | refactor​(laboratory): remove unrouted legacy raw material views                                                                     | The raw material list and form of Laboratory were no longer reachable (their routes redirect to /inventory) and the form called the write endpoint that only answered 410. The vi… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management                  | 99d7829   | feat(batch): manage products and batches per environment                                                                            | The web app follows the nested Product Batch API: /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches. - products move from Laboratory to the … | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​product-batch-management                  | f959dac   | docs(batch): document the environment-scoped frontend modules                                                                       | The Laboratory, Inventory and Product Batch frontend diagrams now show environments and the remembered environment per feature, the inventory kept per environment, products and … | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices                     | 86351b3   | refactor​(shared): place shared helpers by DDD layer                                                                                 | - The stock quantity rule (three decimals, whole counted units) is domain knowledge shared by Inventory and Product Batch: it now lives in shared/​domain/​model/​stock-unit.ts, mir… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices                     | fb0b313   | feat​(equipment): manage equipment and IoT devices per laboratory and environment                                                    | Uses the nested API (TS31-TS40): equipment list with environment, type filter and IoT device type; registration of equipment (quality roles) and of ESP32 environmental devices a… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices                     | 415cb2e   | feat​(tracking): show only IoT devices and their connection status (TS41)                                                            | Telemetry views select among environmental devices and container monitors, and the dashboard reads the connection status from /​laboratories/​{laboratory​Id}/​environments/​{environm… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices                     | 1f87478   | docs​(equipment): document the equipment, IoT device and tracking frontend                                                           | Updates the Equipment and Tracking frontend class diagrams and the overall frontend diagram: IoT device types, location per environment, status changes, nested maintenance, the … | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices                     | ce36f24   | refactor​(equipment): align the equipment list with the operations pages                                                             | The list now uses the shared operations page layout of inventory and batches: heading with actions, a summary of process equipment, IoT devices and equipment in maintenance or o… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-iot-devices                     | 13355de   | refactor​(i18n): name the translation files en.json and es.json                                                                      | Renames public/​i18n/​en_​US.json and es_419.json to en.json and es.json and uses the en and es language codes in the translate configuration, the application bootstrap and the lan… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts                            | 0f2d1ff   | feat(iam): staff accounts sign in with their own credentials                                                                        | Public sign-up only creates quality manager accounts; operators and auditors use the account their quality manager creates. A staff account with a temporary password must change… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts                            | e2e71ea   | feat(staff): register operators and auditors and see what they did                                                                  | The staff form asks for the job title, the e-mail (their username) and whether the person is an operator or an auditor, and shows how the credentials were delivered: by e-mail, … | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts                            | 6b5136c   | feat(staff): choose technicians and batch staff from the staff list                                                                 | The maintenance form picks the technician among the active operators of the laboratory (technician​Staff​Id) instead of a typed name; an operator can only choose themselves. In a … | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts                            | 03cc0e8   | feat(iam): read-only views for auditors and no subscription for staff                                                               | Auditors no longer see the forms that register or change records: status changes, maintenance and BPM limits of an equipment, new batches, raw material usage and participants, r… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​staff-accounts                            | bbe83df   | docs(staff): document staff accounts in the frontend diagrams                                                                       | IAM (onboarding states, password change, role guards), Laboratory (staff access role, credentials delivery, staff detail), Equipment and Product Batch (staff pickers), RA (staff… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​tracking-environmental-profiles           | f4c6f67   | feat​(tracking): monitor environments and configure environmental profiles                                                           | Tracking now works per environment with the environmental device and the container monitors located in it: - Monitoring: latest reading per metric with its NORMAL/​WARNING/​CRITIC… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​tracking-environmental-profiles           | 7a8a98a   | docs​(tracking): document environmental monitoring and profiles in the frontend diagrams                                             | Tracking frontend diagram with the environmental profiles, readings, actions and the three views; the dashboard is documented with its view-scoped store and the BPM note reflect… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | f845485   | refactor: add the API paths of the reviewed routes                                                                                  | Paths for alert acknowledgements and resolutions, report content and subscription cancellation requests; the equipment record paths now live under the laboratory; unused billing… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | 9aaab1b   | refactor​(ca): acknowledge and resolve alerts as sub-resources                                                                       | Alerts and compliance events of an equipment are read under its laboratory; acknowledging and resolving post to /​acknowledgements and /resolutions without the user id, which the… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | 4dbef42   | refactor​(ra): download reports after creating them and nest equipment records                                                       | Reports are created (201) and their PDF or CSV is then downloaded from /​reports/​{report​Id}/​content. The equipment log is exported from the environment where the equipment is loc… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | db7e5af   | refactor​(equipment): save BPM ranges per parameter                                                                                  | The BPM form replaces the range of the parameter with PUT /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name} and receives the saved range; the unu… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | 931a0bb   | refactor​(subscription): cancel through a cancellation request                                                                       | Billing summary cancels with POST /​subscriptions/​{subscription​Id}/​cancellation-requests and reads the active subscription from the filtered list of the laboratory.                | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | f38c77e   | refactor​(batch): read the legacy material history under the laboratory                                                              | The usages of a raw material registered before Inventory are read from /​laboratories/​{laboratory​Id}/​raw-materials/​{legacy​Raw​Material​Id}/​usages.                                    | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | 05b0bcc   | docs: document the reviewed API routes in the frontend diagrams                                                                     | Compliance, reporting, equipment, subscription, batch, inventory and laboratory diagrams show the new routes and requests without user ids; the message response is removed.       | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency                    | 1255785   | fix(shared): use one naming convention in the sidebar                                                                               | The menu reads only nav.* labels instead of page titles, subtitles and buttons: English in Title Case and Spanish with an initial capital, the American spelling Catalog, section… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency                    | 7cdc45b   | feat​(shared): lead the logo and name to home or to the dashboard                                                                    | Before signing in, the QualiTrack logo and name of the toolbar lead to the home page; once signed in, they lead to the dashboard, also from the application layout. The link has … | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency                    | 320c116   | docs​(shared): document the brand link and the menu labels                                                                           | The shared frontend diagram shows where the logo and name lead and the naming convention of the sidebar.                                                                           | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​rest-controllers-review                   | 47eb194   | refactor: keep the equipment record paths together                                                                                  | After Tracking, the API paths of the records of an equipment (BPM ranges, deviation trends and alerts, compliance events, audit logs and log reports) are listed together again, … | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​navigation-consistency                    | 4292ff8   | fix(shared): name the tracking menu entries with nav labels                                                                         | With the Tracking views in develop, the sidebar names environmental monitoring, telemetry history and environmental profiles with nav.* labels in the same convention as the rest… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments                     | e33589e   | feat​(tracking): open the history of a device from a link                                                                            | /​tracking/​history accepts environment​Id and deviceId query parameters, used to show the conditions of the container where a lot or batch is stored.                                | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments                     | 539ee9e   | feat​(inventory): store raw material lots in monitored containers                                                                    | The lots of a raw material show their container and, in raw material storage environments, operators and quality managers store them in an operational container monitor of the e… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments                     | 3db79f3   | feat(batch): store product batches in monitored containers                                                                          | New Storage tab in the batch detail: operators and quality managers store the batch in an operational container monitor of a product storage environment, grouped by environment,​… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​container-assignments                     | 97458c1   | docs​(diagrams): add container assignments to the frontend diagrams                                                                  | Inventory detail and store, batch storage tab and API, and the tracking history deep link.                                                                                         | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​compliance-environment-alerts             | 0543bff   | feat(ca): list and attend the alerts of an environment                                                                              | Alerts are read per environment (US85, TS74) with their origin, variable, value and limit, deviations of the incident and return to normal. The Active Alerts and Alert History v… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​compliance-environment-alerts             | c9c2658   | docs​(diagrams): add environment alerts to the frontend diagrams                                                                     | Compliance store, API, alert table and views, and the dashboard alerts of the shared diagram.                                                                                      | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators          | c766ac8   | feat(ra): indicator periods, environment trends and inventory report clients                                                        | The KPI dashboard is requested for a period and an optional environment, deviation trends per environment with their time in range and deviations, the environmental report per e… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators          | f3813bf   | feat(ra): environmental summary, deviation indicators and inventory report views                                                    | Environmental summary of the last 24 hours, 7 or 31 days for every environment or one; deviation indicators per device and variable of an environment with a chart of the reading… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators          | 4a8f13d   | feat(i18n): texts of the reporting indicators and reports                                                                           | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators          | 56a5d19   | docs​(diagrams): reporting frontend with indicators and inventory report                                                             | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​reporting-environment-indicators          | cc1c9cd   | fix(ra): show the all environments option and hide the formula without readings                                                     | mat-select shows no option for a null value, so "All environments" uses the value 0 in the environmental summary and the environmental and inventory reports; the summary explain… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | 419698d   | feat(iam): account e-mail at sign-up and password recovery with a code                                                              | The sign-up asks for the e-mail and explains a duplicated username or e-mail; the sign-in links to the recovery, a two-step view that requests the 6-digit code and sets the new … | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | 11830a6   | feat​(subscription): cancel the renewal from the billing summary                                                                     | Cancel renewal asks for confirmation and keeps the subscription with its access until the end of the period, shown as Active until with a notice (US23, TS11).                     | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | f5b3dd7   | feat(i18n): texts of the password recovery and the renewal cancellation                                                             | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​account-recovery-and-renewal-cancellation | 3ea0003   | docs​(diagrams): password recovery and renewal cancellation in the frontend                                                          | The relations that used classes of the IAM diagram before their declaration no longer duplicate them.                                                                              | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications                 | 0ff02bf   | feat(iam): change the username and e-mail of the account                                                                            | Iam​Store.update​Account sends PUT /users/me with the current password and keeps the session with the token the platform issues again, since the token names the user.               | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications                 | f14b391   | feat​(profile): add the profile page and the profile in the toolbar and staff detail                                                 | New Profile bounded context: the name in the toolbar shows the photo and full name and opens /profile, where each person edits the photo (JPG, PNG or WebP up to 2 MB), personal … | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications                 | 96f22a3   | feat(ca): add the notification bell and e-mail a critical alert on demand                                                           | The bell of the toolbar counts the unread notifications every 30 seconds and opens a panel over the current view with the latest ones; opening one marks it as read and shows the… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile-and-notifications                 | 467c2b7   | docs​(diagrams): profile, notification bell and account changes                                                                      | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​mobile-toolbar-user                       | d329842   | fix(shared): keep the user in the toolbar on phones                                                                                 | Up to 720px wide the brand of the toolbar is hidden so the photo, name and role of the user stay visible next to the sign-out button; up to 480px the language switcher drops its… | 05/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​mobile-toolbar-user                       | 453962a   | docs​(diagrams): toolbar on narrow screens                                                                                           | —                                                                                                                                                                                  | 05/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-domain-tsdoc                           | 4c864b2   | docs(ca): document deviation alert entity                                                                                           | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-domain-tsdoc                           | 9137203   | docs(ca): document notification entity                                                                                              | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-domain-tsdoc                           | b68f21e   | docs(ca): fix example indentation in compliance event and preference models                                                         | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | 92f0461   | docs(ca): document alert assembler                                                                                                  | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | 691ccf8   | docs(ca): document alert resources                                                                                                  | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | 3d57843   | docs(ca): document alert api endpoint                                                                                               | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | 25092df   | docs(ca): document compliance event api endpoint                                                                                    | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | 013dfe1   | docs(ca): document notification assembler                                                                                           | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | b2ea0e3   | docs(ca): document notification resources                                                                                           | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | e375ae2   | docs(ca): document notification api endpoint                                                                                        | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | dafda67   | docs(ca): document notification preference api endpoint                                                                             | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | b778287   | docs(ca): fix resolve alert request documentation                                                                                   | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-infrastructure-tsdoc                   | 2116dc6   | docs(ca): complete ca api facade documentation                                                                                      | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-application-tsdoc                      | 7b3180c   | docs(ca): document notification store                                                                                               | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-application-tsdoc                      | 9335ac5   | docs(ca): document ca store                                                                                                         | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc                     | cc1ee21   | docs(ca): document ca routes                                                                                                        | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc                     | 4558790   | docs(ca): document alert table                                                                                                      | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc                     | 33d51ba   | docs(ca): document alert dashboard                                                                                                  | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc                     | 5663cb7   | docs(ca): document alert history                                                                                                    | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc                     | 8e765d3   | docs(ca): document deviation detail                                                                                                 | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc                     | 6923e29   | docs(ca): document notification bell                                                                                                | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca-presentation-tsdoc                     | 29e9b12   | docs(ca): document notification preferences form                                                                                    | —                                                                                                                                                                                  | 06/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | fad621d   | feat​(inventory): add inventory movement entity                                                                                      | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 8731e99   | feat​(inventory): add legacy material interface                                                                                      | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 4837314   | feat​(inventory): add raw material entity                                                                                            | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 429db31   | feat​(inventory): add raw material batch entity                                                                                      | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 2b9b510   | feat​(inventory): add recieve raw material batch command                                                                             | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 62cd24d   | feat​(inventory): add review raw material batch command interface                                                                    | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | f8f8639   | feat​(inventory): add save raw material command interface.                                                                           | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | ab10d61   | feat​(inventory): add inventory movement resource and response interfaces                                                            | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | bc30e45   | feat​(inventory): add inventory movement assembler                                                                                   | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | e14e7eb   | feat​(inventory): add legacy inventory response interface.                                                                           | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | b061dcc   | feat​(inventory): add save raw material request interface                                                                            | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | e9141d7   | feat​(inventory): add raw material resource and response interfaces.                                                                 | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | a1da7db   | feat​(inventory): add raw material assembler                                                                                         | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 9b587b5   | feat​(inventory): add raw material batch request interface                                                                           | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | caed8fe   | feat​(inventory): add raw material batch response interface                                                                          | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | ae77176   | feat​(inventory): add raw material batch assembler                                                                                   | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | b1bd6e5   | feat​(inventory-movement): add api endpoint for inventory movement                                                                   | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 769c43e   | feat​(legacy-inventory): add api endpoint for legacy inventory                                                                       | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 591cd8b   | feat​(raw-material): add api endpoint for raw material                                                                               | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | deebba8   | feat​(raw-material-batch): add api endpoint for raw material batch                                                                   | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | 109aeb1   | feat​(inventory-api): implements api for inventory management.                                                                       | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory                                 | fb7a33e   | feat​(inventory-store): implements inventory store raw material management                                                           | —                                                                                                                                                                                  | 07/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | ba52769   | feat​(tracking): improve IoT device state management and telemetry handling                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 836e4a1   | feat​(tracking): improve IoT actuation event management and traceability                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 8169ac0   | feat​(tracking): improve IoT device connectivity state management                                                                    | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 3b7227f   | feat​(tracking): improve IoT monitoring metric management                                                                            | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | fb6bfe3   | feat​(tracking): improve environmental profile management and automation rules                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 0f26f3e   | feat​(tracking): improve IoT device connection data mapping                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | e8b7f4e   | feat​(tracking): improve IoT device telemetry response handling                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 0f574f9   | feat​(tracking): improve IoT telemetry API integration management                                                                    | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 2168ac8   | feat​(tracking): improve IoT telemetry endpoint management                                                                           | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | a51f8a4   | feat​(tracking): improve IoT telemetry resource data management                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 1a31d2f   | feat​(profile): improve profile API endpoint integration management                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 468355a   | feat​(profile): improve profile API facade operations                                                                                | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 775fb19   | feat​(profile): improve profile resource data mapping                                                                                | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 53ce8f1   | docs​(profile): document profile resource                                                                                            | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | fcc2bbd   | docs​(profile): document update profile request                                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | e49ba29   | feat​(profile): improve profile entity data model                                                                                    | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | ec28c8c   | feat​(profile): improve profile update command workflow                                                                              | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 35f46bc   | feat​(profile): improve profile state management and photo handling                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | acb590d   | feat​(profile): improve profile page personal data workflow                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | c0dcd54   | feat​(profile): improve profile routing configuration                                                                                | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 3085458   | feat(iam): improve session state management and onboarding handling                                                                 | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 82ae3e6   | feat​(tracking): improve IoT actuation rules configuration workflow                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 9c935ef   | feat(iam): improve onboarding state resolution workflow                                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 9fba06f   | feat(iam): improve account update command workflow                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 1fea386   | feat(iam): improve IAM API integration management                                                                                   | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 96968fc   | feat(iam): improve authentication interceptor request handling                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 3af49cf   | feat(iam): improve onboarding guards access workflow                                                                                | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 19234ff   | feat(iam): improve password recovery endpoint management                                                                            | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 215b6b1   | feat(iam): improve password recovery request data management                                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | aff8eb8   | docs(iam): document password recovery resources                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 6057507   | docs(iam): document update account request                                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | a2fccab   | feat(iam): improve onboarding view navigation workflow                                                                              | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 70c4692   | feat(iam): improve user session section display management                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 60aa9d5   | feat(iam): improve change password form validation workflow                                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | ac651ae   | feat(iam): improve sign-up request data management                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 48c4f5a   | feat(iam): improve sign-in form password reset handling                                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | 28bd2bf   | feat(iam): improve password recovery view workflow                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​angular-configuration                     | da13a74   | build​(angular): raise initial bundle budget error limit to 1.2MB                                                                    | Production build failed because the initial bundle (1.06 MB) exceeded the 1 MB maximumError budget.                                                                                | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam-profile-tsdoc                         | f47ec51   | docs​(diagrams): add iam guard and dedupe guards in iam diagram                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 0c70460   | feat​(tracking): improve environmental threshold configuration workflow                                                              | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | b491394   | feat​(tracking): improve environmental monitoring workflow                                                                           | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 3170437   | feat​(tracking): improve environmental profile management workflow                                                                   | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | 20cb9a3   | feat​(tracking): improve IoT telemetry history analysis workflow                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​environment-production-configuration      | 615a3df   | build​(environment): point production api to azure container apps backend                                                            | Replace the localhost server​Base​Path in the production environment with the deployed backend URL so the Firebase Hosting build can reach the API.                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | de2eb55   | feat​(tracking): improve IoT telemetry domain data mapping                                                                           | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​Trackingand​Telemetry                      | a86ec29   | feat​(tracking): improve IoT device connectivity endpoint handling                                                                   | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory                                | f19dd08   | feat​(laboratory): documentation for BC laboratory/​aplication                                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory                                | e45ce77   | feat​(laboratory): documentation for BC laboratory/​domain/​model                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory                                | dc11012   | feat​(laboratory): documentation for BC laboratory/​infrastructure first half                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory                                | e5e9dc3   | feat​(laboratory): documentation for BC laboratory/​infrastructure second half                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory                                | b9eb2ae   | feat​(laboratory): documentation for BC laboratory/​presentation/​components and views for environment-form.ts and environment-list.ts | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory                                | c6c9a4a   | feat​(laboratory): documentation for BC laboratory/​presentation/​view                                                                 | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​firebase-hosting-ci                       | 7bd7ac5   | ci: deploy to Firebase Hosting on push to main                                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 7e902bd   | feat​(equipment): add TSDoc documentation to Bpm​Parameter​Config entity                                                               | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | e7b74cf   | feat​(equipment): add TSDoc documentation to Change​Equipment​Status​Command                                                            | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 768512a   | feat​(equipment): add TSDoc documentation to Configure​Bpm​Command                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 8e3fef0   | feat​(equipment): add TSDoc documentation to Equipment entity                                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | e162209   | feat​(equipment): enhance TSDoc documentation for Equipment​Status and related constants                                              | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | f843e50   | feat​(equipment): add TSDoc documentation for Iot​Device​Type and IOT_​DEVICE_​TYPES                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 028f67f   | feat​(equipment): add TSDoc documentation for Maintenance​Record entity and environment​Id property                                    | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | a403819   | feat​(equipment): add TSDoc documentation for Register​Equipment​Command interface                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | d59508c   | feat​(equipment): add TSDoc documentation for Register​Iot​Device​Command interface                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 037edc5   | feat​(equipment): add TSDoc documentation for Register​Maintenance​Command interface                                                   | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 7b710af   | feat​(equipment): update TSDoc example formatting in Configure​Bpm​Request                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 72e1730   | feat​(equipment): enhance TSDoc documentation for Bpm​Config​Api​Endpoint methods                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 383f9c3   | feat​(equipment): enhance TSDoc documentation for BPM configuration methods                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 46c4317   | feat​(equipment): improve TSDoc example formatting in bpm-config-response.ts                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | ca9df8e   | feat​(equipment): enhance TSDoc documentation for equipment and device request interfaces                                            | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 3d02d62   | feat​(equipment): enhance TSDoc documentation for EquipmentApi methods and endpoints                                                 | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 6b0cb82   | feat​(equipment): enhance TSDoc documentation for Equipment​Api​Endpoint methods                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 807351d   | feat​(equipment): enhance TSDoc documentation for equipment assembler methods                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | e35912b   | feat​(equipment): enhance TSDoc documentation for Equipment​Resource and Equipments​Response interfaces                                | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 7e9fa63   | feat​(equipment): enhance TSDoc documentation for Register​Maintenance​Request interface                                               | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | f541b63   | feat​(equipment): enhance TSDoc documentation for Maintenance​Api​Endpoint methods                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 844d2d4   | feat​(equipment): enhance TSDoc documentation for maintenance assembler methods                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | eaf7fed   | feat​(equipment): add TSDoc documentation to maintenance resource and response                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 5e9054c   | feat​(equipment): enhance TSDoc documentation for Equipment​Store methods                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | develop                                           | 8158b66   | feat​(equipment): enhance TSDoc documentation for lazy loading functions in equipment routes                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 40f3c86   | feat(batch): add batch entity.                                                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | d9cf0fa   | feat(batch): add batch request.                                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 2339438   | feat(batch): add batch store.                                                                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 56c7f43   | feat(batch): add batch api.                                                                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 7eb4faa   | feat(batch): add batch api endpoint.                                                                                                | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | afdd92f   | feat(batch): add batch api assembler.                                                                                               | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 8f384b5   | feat(batch): add batch detail view template.                                                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 4ee6d98   | feat(batch): add batch detail view logic.                                                                                           | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 9b741d8   | feat(batch): add batch form view logic.                                                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 6af5263   | feat(batch): add batch home view logic.                                                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | e61f5af   | feat(batch): add batch list view logic.                                                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 6ce6b70   | feat(batch): add batch participants view logic.                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 35f0c8e   | feat(batch): add batch redirect view logic.                                                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 81863d8   | feat(batch): add batch reject form view logic.                                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 98c94fb   | feat(batch): add batch release form view logic.                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 2d0f007   | feat(batch): add batch storage view logic.                                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | afc244f   | feat(batch): add batch traceability view logic.                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 0830c4b   | feat(batch): add batch catalog view logic.                                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 29332ee   | feat(batch): add product detail view logic.                                                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 916c39a   | feat(batch): add product form view logic.                                                                                           | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 8d96151   | feat(batch): add raw material usage view logic.                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 3d9ba12   | feat(batch): add raw material usage view template.                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 05252c2   | feat(batch): add product form view template.                                                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 367cfe4   | feat(batch): add product detail view template.                                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | fb5f8f7   | feat(batch): add product catalog view template.                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 89d2b28   | feat(batch): add batch traceability view template.                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 24cd12a   | feat(batch): add batch storage view template.                                                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 2aae348   | feat(batch): add batch release form view template.                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 28cae7f   | feat(batch): add batch reject form view template.                                                                                   | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 3243869   | feat(batch): add batch list view template.                                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 8dd2097   | feat(batch): add batch participants view template.                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | b2646a9   | feat(batch): add batch form view template.                                                                                          | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 9b4b756   | feat(batch): add batch routes.                                                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | c45225b   | feat(batch): add product store.                                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | e7d3212   | feat(batch): add raw material consumption store.                                                                                    | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 1e88e4c   | feat(batch): add batch participation entity.                                                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | fca3801   | feat(batch): add batch traceability entity.                                                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | be62231   | feat(batch): add raw material usage entity.                                                                                         | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | aae349c   | feat(batch): add pharmaceutical product entity.                                                                                     | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 703855d   | feat(batch): add create batch command.                                                                                              | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 058d928   | feat(batch): add create product command.                                                                                            | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | d900abe   | feat(batch): add reject batch command.                                                                                              | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 2e6c568   | feat(batch): add release batch command.                                                                                             | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | f2c80e4   | feat(batch): add register raw material usage command.                                                                               | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 9893009   | feat(batch): add batch response.                                                                                                    | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | e97a39e   | feat(batch): add product response.                                                                                                  | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 3dfcbea   | feat(batch): add raw material usage response.                                                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 9714321   | feat(batch): add product request.                                                                                                   | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | cc9a3f9   | feat(batch): add raw material usage request.                                                                                        | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | c9da3d7   | feat(batch): add raw material usage api endpoint.                                                                                   | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 69a06b9   | feat(batch): add raw material usage assembler.                                                                                      | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 86c6fd5   | feat(batch): add product assembler.                                                                                                 | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch                                     | 71b6291   | feat(batch): add product api endpoint.                                                                                              | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​app-metadata                              | bead0ba   | fix(ui): correct application favicon                                                                                                | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​app-metadata                              | 5d4ad45   | fix(seo): add missing meta description                                                                                              | Added a meta description for the QualiTrack platform.                                                                                                                              | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​app-metadata                              | 5a5c357   | fix(i18n): add Spanish hero image description                                                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​app-metadata                              | f9ae415   | fix(i18n): add English hero image description                                                                                       | —                                                                                                                                                                                  | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​app-metadata                              | 0859764   | fix(a11y): localize home hero image alt text                                                                                        | Updated image tag to use translation for alt text.                                                                                                                                 | 08/10/2026          |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​app-metadata                              | b070443   | perf(home): define hero image dimensions                                                                                            | Updated image tag to include translation and attributes.                                                                                                                           | 08/10/2026          |

---

#### 6.2.1.5. Testing Suite Evidence for Sprint Review

El alcance del Sprint 1 comprende la Landing Page y la Web Application. Para estos productos no se elaboró una suite de
pruebas automatizadas en este sprint: su verificación se realizó de forma manual en el navegador, recorriendo los
escenarios de los criterios de aceptación de cada User Story e inspeccionando las peticiones HTTP con las herramientas
de desarrollo del navegador.

Las funcionalidades de la Web Application consumen el RESTful API de QualiTrack, cuyos servicios cuentan con pruebas
automatizadas desarrolladas con JUnit 5 y Spring Boot Test en el
repositorio [IoTech-2620-8741/qualitrack-platform](https://github.com/IoTech-2620-8741/qualitrack-platform/tree/develop/src/test/java/com/iotech/qualitrack/platform).
La suite contiene 36 clases de prueba (17 de pruebas unitarias del dominio y 19 de pruebas de integración con el
contexto de Spring y la base de datos de prueba) y 164 métodos de prueba; como tres de ellos son parametrizados, Maven
ejecuta 172 casos de prueba con `mvn test`, todos aprobados en el workflow de integración continua. En este sprint no se
elaboraron pruebas de aceptación BDD con archivos `.feature`.

La siguiente tabla relaciona cada clase de prueba con el Bounded Context, los comportamientos que verifica y las User
Stories que soporta.

| Clase de prueba                        | Tipo        | Bounded Context                             | Comportamientos verificados (métodos de prueba)                                                                                                                                                                                                         | User Stories relacionadas                                  |
|----------------------------------------|-------------|---------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------|
| Account​Recovery​Domain​Tests             | Unitaria    | IAM                                         | the code expires after fifteen minutes and is used once; five wrong codes revoke the recovery; a new code waits one minute and replaces the previous one; (+3 más)                                                                                      | US14, US15                                                 |
| Account​Recovery​Integration​Tests        | Integración | IAM / Payments & Subscriptions              | sign up requires a unique email; the password is reset with the code sent to the email; the answer does not reveal which accounts exist; (+2 más)                                                                                                       | US14, US15, US23                                           |
| Batch​Lifecycle​Tests                    | Unitaria    | Product Batch Management                    | the first raw material consumption starts a pending batch; closed batches are not started again                                                                                                                                                         | US77, US79, US85, US86                                     |
| Batch​Report​Pdf​Tests                    | Unitaria    | Reporting & Audit                           | empty deviations produce a short record without fabricated scores; included alerts produce counts charts and traceable details; excluded alerts are not leaked into summary or details; (+1 más)                                                        | US102                                                      |
| Compliance​Alerts​Integration​Tests       | Integración | Compliance & Alerting                       | an incident detected by tracking is one alert with its actions until it is resolved; deviations confirmed through the api open or join the alert of their device                                                                                        | US89, US90, US91, US92                                     |
| Compliance​Scope​Tests                   | Unitaria    | Compliance & Alerting                       | matching numeric ids do not mix events from different resource types                                                                                                                                                                                    | US89                                                       |
| Container​Assignment​Integration​Tests    | Integración | Inventory / Product Batch                   | raw material lots are stored in containers of their raw material storage environment; product batches are stored in containers of product storage environments                                                                                          | US45, US46, US82, US83                                     |
| Environmental​Profile​Tests              | Unitaria    | Tracking & Telemetry                        | a value is normal inside the normal range warning up to the critical limits and critical beyond; contradictory or incomplete limits are rejected; an environment only configures the metrics of its environmental device; (+3 más)                      | US60, US61, US62, US63                                     |
| Environment​Domain​Tests                 | Unitaria    | Laboratory Management                       | registration normalizes code and starts without usage; registration rejects missing or oversized data; usage can change but not be reassigned to the same value; (+1 más)                                                                               | US30, US31                                                 |
| Environment​Integration​Tests            | Integración | Laboratory Management                       | quality manager registers lists updates and classifies environments; environments of another laboratory are not available; laboratory operator can consult but not change environments                                                                  | US30, US31, US32, US33                                     |
| Environment​Inventory​Integration​Tests   | Integración | Inventory Management                        | quality manager registers raw materials and reviews their lots; low stock and near expiry filters identify materials and lots; raw materials are scoped to their environment and laboratory; (+2 más)                                                   | US37, US38, US39, US40                                     |
| Equipment​Domain​Tests                   | Unitaria    | Equipment Management                        | iot device is an equipment with type and identity; equipment is located only in environments of its laboratory; status change keeps the history and rejects the current status                                                                          | US48, US51                                                 |
| Equipment​Integration​Tests              | Integración | Equipment Management                        | quality manager registers and lists equipment of the laboratory; equipment is located in an environment of the same laboratory; status changes are traceable and rejected when not allowed; (+3 más)                                                    | US48, US49, US50, US51, US52, US53, US54, US55, US56, US57 |
| Inventory​Domain​Tests                   | Unitaria    | Inventory Management                        | receipt requires review and preserves received quantity after consumption; rejects overdraft without changing stock; rejects different units without conversion; (+12 más)                                                                              | US39, US41, US42, US44                                     |
| Inventory​Persistence​Tests              | Integración | Inventory Management                        | only quality reviewer in same laboratory can release; simultaneous retries record only one consumption; quarantine review consumption and affected batch history persist; (+6 más)                                                                      | US37, US39, US42, US47                                     |
| Notification​Domain​Tests                | Unitaria    | Compliance & Alerting                       | preferences decide which notices reach the bell and the email; a notification is read once and alert notices carry their severity                                                                                                                       | US96, US97                                                 |
| Onboarding​Integration​Tests             | Integración | IAM / Payments & Subscriptions / Laboratory | account must pay then create laboratory and cannot create twice; expired and unverified subscriptions do not unlock the api; account cannot register in another laboratory or self assign administrator; (+11 más)                                      | US12, US13, US24, US25, US26, US27                         |
| Open​Api​Documentation​Tests              | Integración | Shared (documentación)                      | groups every operation by the first segment after the api version                                                                                                                                                                                       | Documentación OpenAPI                                      |
| Period​Report​Tests                      | Unitaria    | Reporting & Audit                           | environmental pdf shows indicators alerts actions and method; inventory pdf shows stock lots expiration and containers; inventory csv has one column per value; (+5 más)                                                                                | US101, US103, US104                                        |
| Product​Batch​Integration​Tests           | Integración | Product Batch Management                    | quality manager registers lists and reads products of an environment; product codes and names are unique in the laboratory only; only quality roles register products and other laboratories cannot read them; (+5 más)                                 | US75, US76, US77, US78, US80, US81, US84                   |
| Profile​And​Notification​Integration​Tests | Integración | Profile / Compliance & Alerting             | each person keeps a profile that the quality manager sees in the staff list; a person changes the username and email of the account with the current password; the laboratory is notified of what others do with its alerts and batches                 | US18, US96, US106, US107, US108                            |
| Profile​Domain​Tests                     | Unitaria    | Profile                                     | personal data is validated and blank optional values are cleared; the profile tells when the name changed; only real images up to two megabytes are accepted as photos                                                                                  | US106, US107                                               |
| Qualitrack​Platform​Application​Tests     | Integración | Shared                                      | context loads                                                                                                                                                                                                                                           | Arranque de la aplicación                                  |
| Reporting​Indicators​Integration​Tests    | Integración | Reporting & Audit                           | indicators summarize the readings of the period with time in range and deviations; the environmental report combines indicators alerts and actions of each environment; the inventory report lists raw materials lots and quantities; (+1 más)          | US99, US100                                                |
| Reporting​Tests                         | Unitaria    | Reporting & Audit                           | empty repository produces no invented metric or health score; counts use only the requested laboratory records; time in range weighs each evaluated reading until the next one; (+4 más)                                                                | US98, US101                                                |
| Rest​Api​Integration​Tests                | Integración | Shared (convenciones REST)                  | alerts are acknowledged and resolved as sub resources by the authenticated user; bpm parameter ranges are resources of the equipment identified by their name; created laboratories and users answer with their location                                | Todas las US con API                                       |
| Staff​Account​Integration​Tests           | Integración | Laboratory Management / IAM                 | registered staff signs in with temporary credentials and must change the password; only quality managers register staff and emails are unique; staff cannot manage the subscription and auditors only consult; (+2 más)                                 | US17, US34, US35, US36                                     |
| Staff​Credentials​Email​Tests             | Integración | Laboratory Management                       | credentials are emailed to the staff member; a failed delivery leaves the temporary password for the quality manager                                                                                                                                    | US34                                                       |
| Stock​Rollback​Tests                     | Integración | Inventory Management                        | a failed usage write rolls back the inventory consumption                                                                                                                                                                                               | US79                                                       |
| Stock​Unit​Tests                         | Unitaria    | Inventory Management                        | accepts unit aliases but never implicitly converts mass to volume; registration does not round stock or allow fractional countable units                                                                                                                | US37, US42                                                 |
| Stripe​Webhook​Tests                     | Unitaria    | Payments & Subscriptions                    | unpaid checkout never grants access; paid checkout waits for active stripe subscription; active paid checkout persists subscription and payment without laboratory; (+4 más)                                                                            | US20                                                       |
| Subscription​Access​Tests                | Unitaria    | Payments & Subscriptions                    | active future period allows access before laboratory creation; expired or unknown periods never grant access; cancelled or unpaid subscription does not grant access; (+3 más)                                                                          | US21, US23, US24                                           |
| Subscription​Plan​Seed​Integration​Tests   | Integración | Payments & Subscriptions                    | startup creates the catalog plans only once; stored plans are not changed and a taken stripe price is not reused                                                                                                                                        | US19                                                       |
| Subscription​Plan​Tests                  | Unitaria    | Payments & Subscriptions                    | preserves finite equipment allowances; represents unlimited equipment without an invented numeric limit; rejects negative equipment limits; (+2 más)                                                                                                    | US19                                                       |
| Tracking​Integration​Tests               | Integración | Tracking & Telemetry                        | a quality manager configures the air quality of an environment with its environmental device; a container monitor has thresholds and actuation rules that need them; readings are evaluated and the deviations of an incident share one alert; (+2 más) | US60, US61, US63, US64, US67, US69                         |
| Tracking​Query​Tests                     | Unitaria    | Tracking & Telemetry                        | an action of the device also counts as communication; device requires review when silent for longer than the expected period                                                                                                                            | US58                                                       |

Ejecución de la suite de pruebas del backend:

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/backend-test-suite.jpg" alt="Ejecución de la suite de pruebas del backend" width="90%">
  <p><em>Figura: Ejecución de la suite de pruebas del backend en GitHub Actions. Esta evidencia muestra el workflow de integración continua que ejecuta con Maven las 172 pruebas unitarias y de integración del RESTful API, todas aprobadas (BUILD SUCCESS).</em></p>
</div>

Commits relacionados con las pruebas en este sprint:

| Repository                           | Branch                                            | Commit Id | Commit Message                                                                           | Commit Message Body                                                                                                                                                                | Committed on (Date) |
|--------------------------------------|---------------------------------------------------|-----------|------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding                     | 517e573   | test(iam): verify onboarding and subscription access                                     | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding                     | 1b0a85a   | test​(subscription): verify plans and Stripe webhook processing                           | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding                     | 3744cde   | test​(inventory): verify stock units and transactional rollback                           | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding                     | 34d9ba9   | test​(reporting): verify scoped reports PDFs and telemetry queries                        | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation               | a6d62be   | test​(inventory): cover receipt eligibility and stock invariants                          | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation               | 350a97e   | feat​(inventory): implement reviewed receipts and atomic stock consumption                | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​laboratory-environments                   | 49a3973   | test​(laboratory): cover environment rules and API                                        | Domain tests for code normalization and usage transitions; integration tests for TS15-TS18 status codes, tenant isolation and role restrictions.                                   | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials       | f0915e0   | feat​(shared): return Location headers for created resources                              | Add Response​Entity​Assembler.to​Created​Response​Entity​From​Result so POST endpoints that create resources answer 201 Created with a Location header; apply it to environment registra… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials       | 1fece4d   | feat​(inventory): manage raw materials and lots per environment                           | Raw materials belong to an environment and expose TS21-TS28 under /​api/​v1/​laboratories/​{laboratory​Id}/​environments/​{environment​Id}: raw-materials (stock​Status=LOW filter), stock… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials       | ed7b47b   | test​(inventory): cover environment inventory API                                         | Integration tests for TS21-TS28 and TS79: status codes, Location header, stock and expiration filters, environment and laboratory isolation, and quality role restrictions.        | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | 49e3f1b   | docs​(openapi): group operations by root resource                                         | Swagger UI now lists each operation under the first path segment after /api/v1 (Laboratories, Batches, Equipments...) through a shared OpenAPI customizer, so resources nested un… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | e97e23b   | feat(batch): register pharmaceutical products per environment                            | Pharmaceutical products move from Laboratory to Product Batch Management, which owns the product catalog according to the bounded context definition, and are now registered insi… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | ca42723   | feat(batch): manage product batches under their product                                  | Product batches are now addressed through /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches: - POST and GET for the batches of a product and… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | 33e8ac1   | feat(batch): register raw material usages from the product batch                         | POST .../​products/​{product​Id}/​batches/​{batch​Id}/​raw-material-usages (TS65) asks Inventory Management to consume a released lot and returns the recorded usage with 201; retrying … | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | bc5fd6e   | feat(batch): record equipment and staff taking part in a batch                           | POST .../​batches/​{batch​Id}/​equipment-usages (TS66) associates an operational equipment of the laboratory and answers 409 when it is in maintenance, out of service or inactive (U… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | add2496   | feat(batch): reconstruct the traceability of a product batch                             | GET .../​products/​{product​Id}/​batches/​{batch​Id}/​traceability (TS70) returns in one response the batch and its product, the raw material lots it consumed with the environment wher… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | 019f2da   | test(batch): register the fixture environment without an ignored usage                   | Environment registration does not take a usage (it is assigned through usage-assignments), so the production fixture no longer sends one.                                          | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-iot-devices                     | a9cc765   | feat​(equipment): manage equipment and IoT devices per laboratory and environment         | Implements US45-US54 (TS31-TS40) under /​api/​v1/​laboratories/​{laboratory​Id}: - equipments: register (quality roles, unique serial number), list and read. - devices/​environmental-… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-iot-devices                     | 0909fb5   | feat​(tracking): report whether an IoT device is communicating (TS41)                     | GET /​api/​v1/​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​telemetry-status answers CONNECTED when the environmental device or container monitor sen… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts                            | 0c1315c   | feat(staff): sign-in accounts for the operators and auditors a quality manager registers | - POST /​laboratories/​{laboratory​Id}/​staff (quality roles) registers an OPERATOR or AUDITOR and creates their IAM account: the e-mail is the username and a temporary password is … | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts                            | da82eea   | feat(staff): keep auditors out of operations and the laboratory profile                  | Auditors only consult the records, so they cannot be chosen as the technician of a maintenance or take part in a batch (400). The staff reference shared with other contexts carr… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts                            | 861752a   | feat(staff): link the credentials e-mail to the deployed web front                       | The sign-in link of the credentials e-mail follows the web front URL (APPLICATION_​FRONTEND_​URL) unless QUALITRACK_​WEB_​SIGN_​IN_​URL is set. The prod profile points the front URL a… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking-environmental-profiles           | 6c20e1f   | feat​(tracking): environmental profiles, readings and actuation events per environment    | Tracking follows the Report (US56-US69, TS42-TS45, TS54-TS60): - Environmental​Profile: versioned air quality thresholds of an environment and temperature, humidity and luminosit… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking-environmental-profiles           | ccc13d6   | test​(tracking): cover environmental profiles, readings and actuation events              | Domain tests for the threshold and profile rules and integration tests for the profile endpoints, reading evaluation and idempotency, deviation alerts only when the state worsen… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review                   | bbc3724   | refactor​(ra): create reports with 201 and nest equipment records under the laboratory    | Report generation answers 201 with the stored report and Location /​api/​v1/​reports/​{report​Id}; its PDF or CSV is downloaded from /​reports/​{report​Id}/​content (TS83, TS84, TS87). E… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review                   | 1718793   | refactor​(subscription): request cancellations as a sub-resource and list subscriptions   | POST /​subscriptions/​{subscription​Id}/​cancellation-requests (TS11) replaces the PATCH, answers 201 with the subscription and 409 when it is not active, and records the authentica… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review                   | fe6b425   | test: cover the reviewed REST conventions                                                | Alert acknowledgements and resolutions with 201, 409 and 405 for the removed PATCH, BPM ranges by parameter, Location of new laboratories and users, subscriptions as a filtered … | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review                   | 84b1780   | test​(tracking): read deviation alerts from the laboratory equipment route                | The flat /​equipments/​{id}/​deviation-alerts route no longer exists; the tracking tests read the alerts of the monitors from /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​container-assignments                     | 4b78e3d   | test: cover container assignments of raw material lots and product batches               | Checks the storage area rules (404, 400, 409 for other environments, unknown monitors, monitors in maintenance and environments with another usage), idempotent reassignment, the… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​compliance-environment-alerts             | 4105c6a   | feat(ca): one alert per incident of an environment or container                          | Deviation alerts keep their laboratory, environment, origin (environment or container), measurements, number of deviations, return to normal and attention and resolution times. … | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​compliance-environment-alerts             | 27202ad   | test: cover the alerts of environments and containers                                    | Correlated incidents from Tracking, related actions, return to normal, attention and resolution by operators, read-only auditors, tenant isolation, TS73 deviations through the A… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​reporting-environment-indicators          | 300a77f   | test(ra): cover environmental indicators and reports                                     | Time in range, deviations and measurement summaries, the indicators and environmental, inventory and batch reports through the API, and the updated report documents.              | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​reporting-environment-indicators          | 3ff7db0   | test(ra): integration tests of the reporting indicators and reports                      | Indicators of a laboratory and of an environment, environmental report per environment, inventory report and batch report with container and release through the REST API.         | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​account-recovery-and-renewal-cancellation | 3265260   | test: account recovery, e-mail provider and renewal cancellation                         | Recovery codes (expiry, single use, attempts, resend interval), account e-mail rules, Resend request and SMTP fallback, the recovery and reset endpoints, unique e-mail at sign-u… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​profile-and-notifications                 | 429e549   | test: cover profiles, account changes and notifications                                  | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​subscription-plan-seed                    | 9d14dc0   | test​(subscription): cover the subscription plan seed                                     | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch-in-progress                         | be46afe   | test(batch): cover the start of a batch with its first consumption                       | —                                                                                                                                                                                  | 05/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​timezone-independent-tests                | 7edc50f   | test: compute today in Lima time so tests do not depend on the machine time zone         | Tests sent Local​Date.now​() in the JVM zone to endpoints validated against the America/Lima clocks of equipment and inventory, so on a UTC machine between 00:00 and 05:00 UTC the… | 07/10/2026          |

---

#### 6.2.1.6. Execution Evidence for Sprint Review

En este sprint se publicó la primera versión de la Landing Page y de la Web Application. La Landing Page permite a los
visitantes conocer la propuesta de valor, el funcionamiento, los beneficios, el equipo y los planes de QualiTrack en
inglés o español. La Web Application permite al responsable de calidad crear su cuenta, contratar su plan y registrar su
laboratorio; y a todo el personal supervisar las condiciones ambientales, el inventario, los equipos, los lotes y las
alertas según su rol.

La revisión del sprint verificó que un visitante pueda recorrer la Landing Page, comprender la propuesta de valor y
llegar a la Web Application desde sus llamadas a la acción; y que, dentro de la aplicación, cada rol complete sus flujos
principales con datos reales del laboratorio de demostración SENKA LAB, en inglés y en español.

- **Landing
  Page:** [https://iotech-2620-8741.github.io/qualitrack-landing-page/](https://iotech-2620-8741.github.io/qualitrack-landing-page/)
- **Web Application:** [https://qualitrack-iotech.web.app](https://qualitrack-iotech.web.app)
- **Video de Execution Evidence del Sprint 1:** [https://shorturl.at/gppVX](https://shorturl.at/gppVX)

**Landing Page**

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-header.png" alt="Landing Page - Navigation bar" width="90%">
  <p><em>Figura: Encabezado y barra de navegación de la Landing Page. Esta vista evidencia el acceso directo a las secciones Home, Features, Benefits, About Us y Plans, el selector de idioma y el botón que lleva a la Web Application.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-home.png" alt="Landing Page - Home" width="90%">
  <p><em>Figura: Sección Home. Esta pantalla valida la comunicación inicial de la propuesta de valor, The Future of Pharmaceutical Quality Management, y presenta en tarjetas lo que ofrece QualiTrack: monitoreo IoT en tiempo real, cumplimiento BPM automatizado y registros de auditoría inmutables.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-features.png" alt="Landing Page - Features" width="90%">
  <p><em>Figura: Sección Features. Esta evidencia muestra en un acordeón las funcionalidades clave de la plataforma, como la integración de telemetría IoT, el motor de cumplimiento BPM, las alertas instantáneas de desviación y el panel de analítica y KPI.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-benefits.png" alt="Landing Page - Benefits" width="90%">
  <p><em>Figura: Sección Benefits. Esta vista presenta las ventajas de QualiTrack para la manufactura farmacéutica, como la reducción del tiempo de preparación de auditorías de DIGEMID y la eliminación de errores humanos en los registros críticos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-about.png" alt="Landing Page - About Us" width="90%">
  <p><em>Figura: Sección About Us. Esta evidencia presenta la visión de QualiTrack de digitalizar la supervisión de los procesos de manufactura y el cumplimiento de las Buenas Prácticas de Manufactura exigidas por DIGEMID, sus pilares (integración IoT, trazabilidad inmutable y cumplimiento regulatorio) y los perfiles de los integrantes del equipo de IoTech.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-plans.png" alt="Landing Page - Plans" width="90%">
  <p><em>Figura: Sección Plans. Esta vista permite comparar los planes Standard Lab y Enterprise con su precio, periodicidad y características, alternando entre la modalidad mensual y anual.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-testimonials.png" alt="Landing Page - Testimonials" width="90%">
  <p><em>Figura: Sección de testimonios y llamada final a la acción. Esta evidencia muestra las opiniones de responsables de calidad y producción sobre QualiTrack y el botón Get Started que lleva a la Web Application.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-footer.png" alt="Landing Page - Footer" width="90%">
  <p><em>Figura: Footer de la Landing Page. Esta evidencia muestra el cierre de la navegación con accesos a las secciones, los datos de contacto (correo, teléfono y ubicación) y los enlaces a los Términos de Servicio y la Política de Privacidad.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-legal.png" alt="Landing Page - Terms of Service and Privacy Policy" width="90%">
  <p><em>Figura: Páginas de Términos de Servicio y Política de Privacidad. Esta vista evidencia la información legal que el visitante puede consultar antes de contratar el servicio.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-es-mobile.png" alt="Landing Page - Spanish and mobile view" width="90%">
  <p><em>Figura: Landing Page en español en un dispositivo móvil. Esta evidencia valida el cambio de idioma entre inglés y español y la adaptación del diseño a pantallas pequeñas en la portada, la sección de servicios y los planes.</em></p>
</div>

**Web Application**

*Acceso y configuración inicial*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-sign-in.png" alt="Web Application - Sign In" width="90%">
  <p><em>Figura: Inicio de sesión. Esta pantalla valida el acceso del responsable de calidad, el personal operativo y los auditores con su usuario o correo, con mensajes claros cuando las credenciales no son válidas.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-sign-up.png" alt="Web Application - Sign Up" width="90%">
  <p><em>Figura: Registro de cuenta del responsable de calidad. Esta evidencia muestra los datos que se validan antes de crear la cuenta: usuario, correo único para recuperar la contraseña y contraseña con su confirmación.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-password-recovery.png" alt="Web Application - Password recovery" width="90%">
  <p><em>Figura: Recuperación de contraseña. Esta vista evidencia la solicitud con el usuario o el correo de la cuenta, a cuyo correo se envía un código de seis dígitos para restablecer la contraseña.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-onboarding-plans.jpg" alt="Web Application - Plan selection" width="90%">
  <p><em>Figura: Selección del plan de suscripción. Esta evidencia muestra los planes Standard Lab y Enterprise en modalidad mensual y anual, con sus cuentas de usuario y dispositivos conectados, que el responsable de calidad elige antes de usar las funciones operativas.</em></p>
</div>

*Panel de control*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-dashboard.jpg" alt="Web Application - Dashboard" width="90%">
  <p><em>Figura: Panel de control del laboratorio. Esta evidencia reúne en una sola vista los equipos operativos, los lotes en proceso, las alertas abiertas, las materias primas con stock bajo, la telemetría reciente y el estado de la suscripción.</em></p>
</div>

*Laboratorio, ambientes y personal*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-lab-profile.jpg" alt="Web Application - Laboratory profile" width="90%">
  <p><em>Figura: Perfil del laboratorio. Esta vista muestra los datos registrados de la instalación y permite actualizarlos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-environments.jpg" alt="Web Application - Environments" width="90%">
  <p><em>Figura: Ambientes del laboratorio. Esta evidencia muestra el registro de ambientes y la definición de su uso (laboratorio, producción, almacén de materias primas o de producto), que determina qué se puede almacenar en cada uno.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-staff.jpg" alt="Web Application - Staff" width="90%">
  <p><em>Figura: Personal del laboratorio. Esta pantalla muestra el registro de operarios y auditores, su cargo, su estado y la consulta de su actividad registrada.</em></p>
</div>

*Inventario de materias primas*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-inventory-catalogue.jpg" alt="Web Application - Raw materials" width="90%">
  <p><em>Figura: Catálogo de materias primas por ambiente. Esta vista evidencia el stock utilizable y físico de cada material y resalta los que están por debajo del stock mínimo.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-inventory-detail.jpg" alt="Web Application - Raw material detail" width="90%">
  <p><em>Figura: Detalle de una materia prima. Esta evidencia muestra sus lotes recibidos con estado y vencimiento, su contenedor, el historial de movimientos y los lotes de producto que la consumieron.</em></p>
</div>

*Equipos y dispositivos IoT*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-equipment-list.jpg" alt="Web Application - Equipment" width="90%">
  <p><em>Figura: Equipos y dispositivos IoT. Esta pantalla lista los equipos del laboratorio con su ambiente y estado operativo, e identifica los dispositivos ambientales y monitores de contenedor con su estado de conexión.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-equipment-detail.jpg" alt="Web Application - Equipment detail" width="90%">
  <p><em>Figura: Detalle de un equipo. Esta evidencia reúne sus datos generales, la reubicación entre ambientes, el registro de cambios de su estado operativo y su historial de mantenimiento con el técnico responsable.</em></p>
</div>

*Monitoreo ambiental*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-telemetry-monitoring.jpg" alt="Web Application - Telemetry dashboard" width="90%">
  <p><em>Figura: Monitoreo ambiental en tiempo real. Esta vista muestra las lecturas actuales de calidad de aire, temperatura, humedad y luminosidad con su estado (normal, advertencia o crítico) frente a los rangos del perfil vigente.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-telemetry-history.jpg" alt="Web Application - Telemetry history" width="90%">
  <p><em>Figura: Historial de telemetría. Esta evidencia grafica las lecturas de un periodo de hasta 31 días junto con los rangos normal y crítico, resaltando las desviaciones.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-environmental-profiles.jpg" alt="Web Application - Environmental profiles" width="90%">
  <p><em>Figura: Perfiles ambientales. Esta pantalla evidencia la configuración versionada de los límites normal y crítico por ambiente y por contenedor, que clasifican cada lectura como normal, advertencia o crítica.</em></p>
</div>

*Productos y lotes*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-products.jpg" alt="Web Application - Products" width="90%">
  <p><em>Figura: Catálogo de productos farmacéuticos por ambiente. Esta vista muestra los productos registrados que pueden fabricarse en el laboratorio.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batches.jpg" alt="Web Application - Production batches" width="90%">
  <p><em>Figura: Lotes de producción. Esta evidencia lista los lotes con su producto, cantidad y estado (pendiente, en proceso, liberado o rechazado).</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batch-detail.jpg" alt="Web Application - Batch detail" width="90%">
  <p><em>Figura: Detalle de un lote en proceso. Esta pantalla muestra el registro de consumos de materia prima desde un lote liberado de un ambiente, que descuenta el stock del inventario, y el historial de consumos del lote.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batch-traceability.jpg" alt="Web Application - Batch traceability" width="90%">
  <p><em>Figura: Trazabilidad de un lote liberado. Esta evidencia reúne las materias primas con sus lotes de origen, los equipos, el personal, el contenedor donde se almacenó el producto y la decisión de calidad firmada con su hash SHA-256.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batch-release.jpg" alt="Web Application - Batch release" width="90%">
  <p><em>Figura: Liberación de un lote. Esta vista evidencia que el responsable de calidad libera el lote con su fecha y sus notas de calidad, y que la liberación queda firmada con su usuario y ya no permite modificar el lote.</em></p>
</div>

*Alertas y avisos*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-alerts.jpg" alt="Web Application - Deviation alerts" width="90%">
  <p><em>Figura: Panel de alertas de desviación. Esta pantalla muestra las alertas por estado y severidad, con el ambiente, el dispositivo y la cantidad de desviaciones de cada incidente.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-alert-detail.jpg" alt="Web Application - Alert detail" width="90%">
  <p><em>Figura: Detalle de una alerta. Esta evidencia muestra la inspección técnica de la desviación, las acciones automáticas del contenedor y las acciones para atenderla y resolverla con notas.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-notifications.jpg" alt="Web Application - Notifications" width="90%">
  <p><em>Figura: Campana de avisos y preferencias de notificación. Esta vista evidencia los avisos de alertas y lotes con su contador de no leídos, y la elección de qué avisos llegan a la aplicación y al correo.</em></p>
</div>

*Indicadores, reportes y auditoría*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-kpi-dashboard.jpg" alt="Web Application - Environmental summary" width="90%">
  <p><em>Figura: Resumen ambiental. Esta pantalla muestra, para el periodo elegido (24 horas, 7 o 31 días) y por ambiente, la cantidad de lecturas, el promedio, el mínimo, el máximo y la última lectura de cada variable de los dispositivos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-reports.jpg" alt="Web Application - Reports" width="90%">
  <p><em>Figura: Generación de reportes. Esta evidencia muestra los reportes de lote, ambiental y de inventario en PDF, y la exportación del historial técnico y de mantenimiento de los equipos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-audit-log.jpg" alt="Web Application - Audit log" width="90%">
  <p><em>Figura: Registro de auditoría. Esta vista evidencia quién realizó cada acción y cuándo, con filtros por equipo, lote y periodo.</em></p>
</div>

*Perfil y suscripción*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-profile.jpg" alt="Web Application - Profile" width="90%">
  <p><em>Figura: Perfil del usuario. Esta pantalla muestra los datos personales y la foto de perfil, junto con la información de la cuenta (los datos de identidad y teléfono se ocultaron en la imagen).</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-billing.jpg" alt="Web Application - Billing summary" width="90%">
  <p><em>Figura: Resumen de la suscripción. Esta evidencia muestra el plan vigente, el periodo de facturación, el historial de pagos y la opción de cancelar la renovación.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-language-es.jpg" alt="Web Application - Spanish interface" width="90%">
  <p><em>Figura: Interfaz en español. Esta vista valida la internacionalización de la Web Application en inglés y español con el selector de idioma.</em></p>
</div>

En conjunto, estas evidencias muestran que el Sprint 1 entregó una Landing Page navegable y bilingüe que comunica la
propuesta de valor de QualiTrack, y una Web Application desplegada e integrada con el RESTful API que cubre el ciclo
completo del laboratorio: configuración inicial, inventario, equipos y dispositivos IoT, monitoreo ambiental,
trazabilidad y liberación de lotes, atención de alertas y generación de reportes.

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

La Web Application del Sprint 1 consume el RESTful API de QualiTrack, desarrollado con Spring Boot y documentado con
OpenAPI mediante Swagger UI. La documentación agrupa las operaciones por recurso raíz y describe, para cada una, su
propósito, parámetros, cuerpo de la petición y posibles respuestas, incluidos los errores con la estructura
`ErrorResource {code, message, details}`. Todas las rutas comienzan con `/api/v1` y, salvo las de autenticación,
requieren el encabezado `Authorization: Bearer <JWT>`.

- **Documentación desplegada (Swagger
  UI):** [Qualitrack Swagger Documentation](https://iotech-qualitrack-api.wonderfulocean-c1f38f8b.chilecentral.azurecontainerapps.io/swagger-ui/index.html)
- **Documentación local:** `http://localhost:8080/swagger-ui/index.html` (especificación en `/v3/api-docs`)
- **Repositorio:** [IoTech-2620-8741/qualitrack-platform](https://github.com/IoTech-2620-8741/qualitrack-platform)

En total se documentan 124 operaciones. Las siguientes tablas las presentan por Bounded Context con su verbo HTTP, la
sintaxis de llamada, sus parámetros y los códigos de respuesta (con el recurso devuelto en las respuestas exitosas).

**IAM**

| Endpoint                                            | Acción                                        | Parámetros                     | Respuestas                                     |
|-----------------------------------------------------|-----------------------------------------------|--------------------------------|------------------------------------------------|
| **POST** /​authentication/​password-recovery-requests | Request a password recovery                   | body: Password​Recovery​Request  | 202 (Password​Recovery​Accepted), 400            |
| **POST** /​authentication/​password-resets            | Reset the password with the verification code | body: Password​Reset​Request     | 200 (Password​Reset​Completed), 400              |
| **POST** /​authentication/​sign-in                    | User sign-in                                  | body: Sign​In​Resource           | 200                                            |
| **POST** /​authentication/​sign-up                    | User sign-up                                  | body: Sign​Up​Resource           | 200                                            |
| **GET** /roles                                      | Get roles                                     | —                              | 200 (Role​Resource[])                           |
| **GET** /users                                      | Get users                                     | —                              | 200 (User​Resource[])                           |
| **GET** /​users/​{user​Id}                             | Get a user                                    | userId (path)                  | 200 (User​Resource), 403, 404                   |
| **PUT** /​users/​{user​Id}/​roles/​{role​Name}            | Assign a role to a user                       | userId (path), roleName (path) | 200 (User​Resource), 400, 404                   |
| **GET** /users/me                                   | Get the account of the authenticated user     | —                              | 200 (User​Resource), 401                        |
| **PUT** /users/me                                   | Update the username and the e-mail            | body: Update​Account​Request     | 200 (Authenticated​User​Resource), 400, 401, 409 |
| **GET** /​users/​me/​onboarding                        | Get current user's onboarding state           | —                              | 200 (User​Onboarding​Resource), 401              |
| **POST** /​users/​me/​password-changes                 | Change the password                           | body: Change​Password​Request    | 204, 400, 401                                  |

**Payments & Subscriptions**

| Endpoint                                                       | Acción                                | Parámetros                                    | Respuestas                                |
|----------------------------------------------------------------|---------------------------------------|-----------------------------------------------|-------------------------------------------|
| **GET** /​laboratories/​{laboratory​Id}/​subscriptions             | Get the subscriptions of a laboratory | laboratoryId (path), status (query, opcional) | 200 (Subscription​Resource[])              |
| **POST** /​stripe/​webhooks                                      | Process Stripe webhook                | Stripe-Signature (query), body: string        | 200 (Stripe​Webhook​Resource)               |
| **POST** /​subscription-checkout-sessions                       | Create subscription checkout session  | body: Create​Checkout​Session​Resource           | 200                                       |
| **GET** /​subscription-plans                                    | Get subscription plans                | —                                             | 200 (Subscription​Plan​Resource[])          |
| **POST** /​subscriptions/​{subscription​Id}/​cancellation-requests | Cancel the renewal of a subscription  | subscription​Id (path)                         | 201 (Subscription​Resource), 403, 404, 409 |
| **GET** /​subscriptions/​{subscription​Id}/​payments               | Get the payments of a subscription    | subscription​Id (path)                         | 200 (Subscription​Payment​Resource[])       |

**Laboratory Management**

| Endpoint                                                                             | Acción                                | Parámetros                                                                     | Respuestas                                                   |
|--------------------------------------------------------------------------------------|---------------------------------------|--------------------------------------------------------------------------------|--------------------------------------------------------------|
| **POST** /​laboratories                                                               | Create a new laboratory               | body: Create​Laboratory​Request                                                  | 201 (Laboratory​Response), 400, 409                           |
| **GET** /​laboratories/​{laboratory​Id}                                                 | Get laboratory by ID                  | laboratoryId (path)                                                            | 200 (Laboratory​Response), 404                                |
| **PUT** /​laboratories/​{laboratory​Id}                                                 | Update laboratory profile             | laboratoryId (path), body: Update​Laboratory​Request                             | 200 (Laboratory​Response), 403, 404                           |
| **GET** /​laboratories/​{laboratory​Id}/​environments                                    | List the environments of a laboratory | laboratoryId (path)                                                            | 200 (Environment​Response[]), 403, 404                        |
| **POST** /​laboratories/​{laboratory​Id}/​environments                                   | Register an environment               | laboratoryId (path), body: Create​Environment​Request                            | 201 (Environment​Response), 400, 403, 404, 409                |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}                    | Get an environment of a laboratory    | laboratoryId (path), environment​Id (path)                                      | 200 (Environment​Response), 403, 404                          |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}                    | Update an environment                 | laboratoryId (path), environment​Id (path), body: Update​Environment​Request      | 200 (Environment​Response), 400, 403, 404, 409                |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​usage-assignments | Assign the usage of an environment    | laboratoryId (path), environment​Id (path), body: Assign​Environment​Usage​Request | 201 (Environment​Usage​Assignment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​staff                                           | List staff                            | laboratoryId (path)                                                            | 200 (Staff​Member​Response[]), 403                             |
| **POST** /​laboratories/​{laboratory​Id}/​staff                                          | Register a staff member               | laboratoryId (path), body: Register​Staff​Request                                | 201 (Registered​Staff​Response), 400, 403, 409                 |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}                                 | Get a staff member                    | laboratoryId (path), staffId (path)                                            | 200 (Staff​Member​Response), 403, 404                          |
| **POST** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​deactivations                  | Deactivate a staff member             | laboratoryId (path), staffId (path)                                            | 201 (Staff​Member​Response), 403, 404, 409                     |

**Inventory Management**

| Endpoint                                                                                                                                          | Acción                                                                    | Parámetros                                                                                                                               | Respuestas                                               |
|---------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------|
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-material-batches                                                            | List the raw material lots of an environment                              | laboratoryId (path), environment​Id (path), expiration​Status (query, opcional), withinDays (query, opcional)                              | 200 (Raw​Material​Batch​Response[]), 400, 404               |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-material-imports                                                           | Import a legacy raw material into the environment                         | laboratoryId (path), environment​Id (path), body: Import​Raw​Material​Request                                                                | 201 (Raw​Material​Response), 404, 409                      |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials                                                                   | List raw materials                                                        | laboratoryId (path), environment​Id (path), stockStatus (query, opcional)                                                                 | 200 (Raw​Material​Response[]), 400, 404                    |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials                                                                  | Register a raw material                                                   | laboratoryId (path), environment​Id (path), body: Save​Raw​Material​Resource                                                                 | 201 (Raw​Material​Response), 400, 403, 404, 409            |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}                                                   | Get a raw material                                                        | laboratoryId (path), environment​Id (path), raw​Material​Id (path)                                                                          | 200 (Raw​Material​Response), 404                           |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}                                                   | Update a raw material                                                     | laboratoryId (path), environment​Id (path), raw​Material​Id (path), body: Save​Raw​Material​Resource                                           | 200 (Raw​Material​Response), 400, 404, 409                 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches                                           | List the lots of a raw material                                           | laboratoryId (path), environment​Id (path), raw​Material​Id (path), usable (query, opcional)                                                | 200 (Raw​Material​Batch​Response[]), 404                    |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches                                          | Register a received raw material lot                                      | laboratoryId (path), environment​Id (path), raw​Material​Id (path), body: Receive​Raw​Material​Batch​Resource                                   | 201 (Raw​Material​Batch​Response), 400, 404, 409            |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}                      | Get a raw material lot                                                    | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path)                                               | 200 (Raw​Material​Batch​Response), 404                      |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​container-assignment | Get the container of a raw material lot                                   | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path)                                               | 200 (Raw​Material​Batch​Container​Response), 404             |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​container-assignment | Store a raw material lot in a container                                   | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path), body: Assign​Raw​Material​Batch​Container​Request | 200 (Raw​Material​Batch​Container​Response), 400, 404, 409   |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​reviews             | Review a raw material lot                                                 | laboratoryId (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path), body: Review​Raw​Material​Batch​Resource         | 201 (Raw​Material​Batch​Review​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​movements                                         | List the stock and review movements of a raw material                     | laboratoryId (path), environment​Id (path), raw​Material​Id (path)                                                                          | 200 (Inventory​Movement​Resource[])                        |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​stock                                             | Get the usable stock of a raw material                                    | laboratoryId (path), environment​Id (path), raw​Material​Id (path)                                                                          | 200 (Raw​Material​Stock​Response), 404                      |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​usages                                            | List the product batches that used a raw material                         | laboratoryId (path), environment​Id (path), raw​Material​Id (path)                                                                          | 200 (Raw​Material​Usage​Response[]), 403, 404               |
| **GET** /​laboratories/​{laboratory​Id}/​inventory/​legacy-materials                                                                                   | Preview pre-Inventory records pending explicit import into an environment | laboratoryId (path)                                                                                                                      | 200 (Legacy​Material​Resource[])                           |
| **GET** /​laboratories/​{laboratory​Id}/​raw-materials                                                                                                |                                                                           | laboratoryId (path), lowStock (query, opcional)                                                                                          | 200 (Raw​Material​Response[])                              |
| **GET** /​laboratories/​{laboratory​Id}/​raw-materials/​{legacy​Raw​Material​Id}/​usages                                                                   | Get material consumption history                                          | laboratoryId (path), legacy​Raw​Material​Id (path)                                                                                          | 200 (Raw​Material​Usage​Response[])                         |

**Equipment Management**

| Endpoint                                                                                                        | Acción                                                 | Parámetros                                                                                        | Respuestas                                         |
|-----------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|---------------------------------------------------------------------------------------------------|----------------------------------------------------|
| **POST** /​laboratories/​{laboratory​Id}/​devices/​container-monitors                                                | Register a container monitor                           | laboratoryId (path), body: Register​Iot​Device​Request                                               | 201 (Equipment​Response), 400, 403, 409             |
| **POST** /​laboratories/​{laboratory​Id}/​devices/​environmental-devices                                             | Register an environmental device                       | laboratoryId (path), body: Register​Iot​Device​Request                                               | 201 (Equipment​Response), 400, 403, 409             |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors                           | Associate a container monitor with the environment     | laboratoryId (path), environment​Id (path), body: Assign​Device​Request                              | 201 (Equipment​Response), 400, 403, 404             |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-devices                        | Associate an environmental device with the environment | laboratoryId (path), environment​Id (path), body: Assign​Device​Request                              | 201 (Equipment​Response), 400, 403, 404, 409        |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments                                   | Associate an equipment with the environment            | laboratoryId (path), environment​Id (path), body: Assign​Equipment​Request                           | 201 (Equipment​Response), 400, 403, 404, 409        |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records  | List maintenance records                               | laboratoryId (path), environment​Id (path), equipmentId (path)                                     | 200 (Maintenance​Record​Response[]), 403, 404        |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records | Register a maintenance                                 | laboratoryId (path), environment​Id (path), equipmentId (path), body: Register​Maintenance​Request   | 201 (Maintenance​Record​Response), 400, 403, 404     |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​status-changes      | Register a status change                               | laboratoryId (path), environment​Id (path), equipmentId (path), body: Change​Equipment​Status​Request | 201 (Equipment​Status​Change​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments                                                                 | List equipment                                         | laboratoryId (path)                                                                               | 200 (Equipment​Response[]), 403                     |
| **POST** /​laboratories/​{laboratory​Id}/​equipments                                                                | Register an equipment                                  | laboratoryId (path), body: Register​Equipment​Request                                               | 201 (Equipment​Response), 400, 403, 409             |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}                                                   | Get an equipment                                       | laboratoryId (path), equipmentId (path)                                                           | 200 (Equipment​Response), 403, 404                  |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs                                       | Get the BPM parameter ranges of an equipment           | laboratoryId (path), equipmentId (path)                                                           | 200 (Bpm​Parameter​Config​Response[])                 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name}                       | Get the range of a BPM parameter of an equipment       | laboratoryId (path), equipmentId (path), parameter​Name (path)                                     | 200 (Bpm​Parameter​Config​Response), 404              |
| **PUT** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name}                       | Configure the range of a BPM parameter of an equipment | laboratoryId (path), equipmentId (path), parameter​Name (path), body: Configure​Bpm​Request          | 200 (Bpm​Parameter​Config​Response), 400, 403         |

**Tracking & Telemetry**

| Endpoint                                                                                                                              | Acción                                                 | Parámetros                                                                                                                         | Respuestas                                           |
|---------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​actuation-events                      | Get the actions of the container monitor               | laboratoryId (path), environment​Id (path), deviceId (path), from (query, opcional), to (query, opcional)                           | 200 (Actuation​Event[]), 400, 403, 404                |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​actuation-events                     | Record an action of the container monitor              | laboratoryId (path), environment​Id (path), deviceId (path), body: Record​Actuation​Event​Request                                      | 200 (Actuation​Event), 201 (Actuation​Event), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile                 | Get the environmental profile of the container monitor | laboratoryId (path), environment​Id (path), deviceId (path)                                                                         | 200 (Environmental​Profile), 403, 404                 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​actuation-rules | Save the actuation rules of the container monitor      | laboratoryId (path), environment​Id (path), deviceId (path), body: Update​Actuation​Rules​Request                                      | 200 (Environmental​Profile), 400, 403                 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​thresholds      | Save the thresholds of the container monitor           | laboratoryId (path), environment​Id (path), deviceId (path), body: Update​Thresholds​Request                                          | 200 (Environmental​Profile), 400, 403                 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​telemetry-measurements                | Get the readings of the container monitor              | laboratoryId (path), environment​Id (path), deviceId (path), from (query, opcional), to (query, opcional), metric (query, opcional) | 200 (Measurement[]), 400, 403, 404                   |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​telemetry-measurements               | Record a reading of the container monitor              | laboratoryId (path), environment​Id (path), deviceId (path), body: Record​Measurement​Request                                         | 200 (Measurement), 201 (Measurement), 400, 403       |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​environmental-profile                            | Get the profile the device applies                     | laboratoryId (path), environment​Id (path), deviceId (path)                                                                         | 200 (Environmental​Profile), 403, 404                 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​telemetry-status                                 | Get the connection status of a device                  | laboratoryId (path), environment​Id (path), deviceId (path)                                                                         | 200 (Device​Telemetry​Status​Response), 403, 404        |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-profile                                               | Get the environmental profile of the environment       | laboratoryId (path), environment​Id (path)                                                                                          | 200 (Environmental​Profile), 403, 404                 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-profile/​thresholds                                    | Save the thresholds of the environment                 | laboratoryId (path), environment​Id (path), body: Update​Thresholds​Request                                                           | 200 (Environmental​Profile), 400, 403                 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​telemetry-measurements                                              | Get the readings of the environmental device           | laboratoryId (path), environment​Id (path), from (query, opcional), to (query, opcional), metric (query, opcional)                  | 200 (Measurement[]), 400, 403, 404                   |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​telemetry-measurements                                             | Record a reading of the environmental device           | laboratoryId (path), environment​Id (path), body: Record​Measurement​Request                                                          | 200 (Measurement), 201 (Measurement), 400, 403       |

**Product Batch Management**

| Endpoint                                                                                                                       | Acción                               | Parámetros                                                                                                           | Respuestas                                              |
|--------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|----------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| **GET** /​laboratories/​{laboratory​Id}/​batches                                                                                   | Get laboratory batches               | laboratoryId (path)                                                                                                  | 200 (Batch​Response[]), 400                              |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products                                                     | List products                        | laboratoryId (path), environment​Id (path)                                                                            | 200 (Pharmaceutical​Product​Response[]), 403              |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products                                                    | Register a product                   | laboratoryId (path), environment​Id (path), body: Create​Product​Request                                                | 201 (Pharmaceutical​Product​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}                                         | Get a product                        | laboratoryId (path), environment​Id (path), productId (path)                                                          | 200 (Pharmaceutical​Product​Response), 403, 404           |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches                                 | List product batches                 | laboratoryId (path), environment​Id (path), productId (path)                                                          | 200 (Batch​Response[]), 403, 404                         |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches                                | Register a product batch             | laboratoryId (path), environment​Id (path), productId (path), body: Create​Batch​Request                                | 201 (Batch​Response), 400, 403, 404, 409                 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}                       | Get a product batch                  | laboratoryId (path), environment​Id (path), productId (path), batchId (path)                                          | 200 (Batch​Response), 403, 404                           |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment  | Get the container of a product batch | laboratoryId (path), environment​Id (path), productId (path), batchId (path)                                          | 200 (Batch​Container​Response), 403, 404                  |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment  | Store a product batch in a container | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Assign​Batch​Container​Request       | 200 (Batch​Container​Response), 400, 403, 404, 409        |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​equipment-usages     | Register an equipment usage          | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Register​Equipment​Usage​Request     | 201 (Equipment​Usage​Response), 400, 403, 404, 409        |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​raw-material-usages  | Register a raw material usage        | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Register​Raw​Material​Usage​Request   | 201 (Raw​Material​Usage​Response), 400, 403, 404, 409      |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​rejections           | Reject a product batch               | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Reject​Batch​Request                | 201 (Batch​Rejection​Response), 400, 403, 404, 409        |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​releases             | Release a product batch              | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Release​Batch​Request               | 201 (Batch​Release​Response), 400, 403, 404, 409          |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​staff-participations | Register a staff participation       | laboratoryId (path), environment​Id (path), productId (path), batchId (path), body: Register​Staff​Participation​Request | 201 (Staff​Participation​Response), 400, 403, 404, 409    |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​traceability          | Get the traceability of a batch      | laboratoryId (path), environment​Id (path), productId (path), batchId (path)                                          | 200 (Batch​Traceability​Response), 403, 404               |

**Compliance & Alerting**

| Endpoint                                                                            | Acción                                                        | Parámetros                                                                                                                                            | Respuestas                                                                |
|-------------------------------------------------------------------------------------|---------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| **GET** /​batches/​{batch​Id}/​compliance-events                                        | Get the compliance events of a batch                          | batchId (path)                                                                                                                                        | 200 (Compliance​Event​Resource[])                                           |
| **GET** /​deviation-alerts/​{alert​Id}                                                 | Get a deviation alert                                         | alertId (path)                                                                                                                                        | 200 (Deviation​Alert​Detail​Response), 403, 404                              |
| **POST** /​deviation-alerts/​{alert​Id}/​acknowledgements                               | Acknowledge a deviation alert                                 | alertId (path)                                                                                                                                        | 201 (Deviation​Alert​Response), 403, 404, 409                               |
| **POST** /​deviation-alerts/​{alert​Id}/​email-notifications                            | E-mail a critical alert to the laboratory                     | alertId (path)                                                                                                                                        | 201 (Alert​Email​Notification), 403, 404, 409, 502                          |
| **POST** /​deviation-alerts/​{alert​Id}/​resolutions                                    | Resolve a deviation alert                                     | alertId (path), body: Resolve​Alert​Request                                                                                                             | 201 (Deviation​Alert​Response), 400, 403, 404, 409                          |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-alerts  | Get the deviation alerts of an environment                    | laboratoryId (path), environment​Id (path), status (query, opcional), severity (query, opcional), deviceId (query, opcional), active (query, opcional) | 200 (Deviation​Alert​Response[]), 400, 403, 404                             |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-alerts | Register a deviation of an environment or container           | laboratoryId (path), environment​Id (path), body: Create​Deviation​Alert​Request                                                                          | 200 (Deviation​Alert​Response), 201 (Deviation​Alert​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​compliance-events     | Get the compliance events of an equipment                     | laboratoryId (path), equipmentId (path)                                                                                                               | 200 (Compliance​Event​Resource[])                                           |
| **GET** /​users/​me/​notification-preferences                                          | Get the notification preferences of the authenticated user    | —                                                                                                                                                     | 200 (Notification​Preference​Resource)                                      |
| **PUT** /​users/​me/​notification-preferences                                          | Update the notification preferences of the authenticated user | body: Update​Notification​Preference​Request                                                                                                             | 200 (Notification​Preference​Resource), 400                                 |
| **GET** /​users/​me/​notifications                                                     | Get the notifications of the authenticated user               | unread (query, opcional), limit (query, opcional)                                                                                                     | 200 (Notification[]), 400                                                 |
| **POST** /​users/​me/​notifications/​{notification​Id}/​read-receipts                     | Mark a notification as read                                   | notification​Id (path)                                                                                                                                 | 201 (Notification), 404                                                   |
| **POST** /​users/​me/​notifications/​read-receipts                                      | Mark every notification as read                               | —                                                                                                                                                     | 201 (Notifications​Read)                                                   |
| **GET** /​users/​me/​notifications/​unread-count                                        | Count the unread notifications of the authenticated user      | —                                                                                                                                                     | 200 (Unread​Notifications)                                                 |

**Reporting & Audit**

| Endpoint                                                                                                | Acción                                         | Parámetros                                                                                         | Respuestas                                    |
|---------------------------------------------------------------------------------------------------------|------------------------------------------------|----------------------------------------------------------------------------------------------------|-----------------------------------------------|
| **GET** /​batches/​{batch​Id}/​audit-logs                                                                   | Get the audit log of a batch                   | batchId (path), dateFrom (query, opcional), dateTo (query, opcional)                               | 200 (Audit​Log​Entry​Resource[])                 |
| **GET** /​batches/​{batch​Id}/​reports                                                                      | Get the reports of a batch                     | batchId (path)                                                                                     | 200 (Audit​Report​Resource[])                   |
| **POST** /​batches/​{batch​Id}/​reports                                                                     | Generate a batch traceability report           | batchId (path), body: Generate​Batch​Report​Resource                                                  | 201 (Audit​Report​Resource), 400, 403           |
| **POST** /​laboratories/​{laboratory​Id}/​compliance-reports                                                | Generate the environmental report of a period  | laboratoryId (path), body: Generate​Compliance​Report​Resource                                        | 201 (Audit​Report​Resource), 400, 403           |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-trends                      | Get the deviation indicators of an environment | laboratoryId (path), environment​Id (path), from (query, opcional), to (query, opcional)            | 200 (Deviation​Trend​Response[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​log-reports | Generate a log report of an equipment          | laboratoryId (path), environment​Id (path), equipmentId (path), body: Export​Equipment​Log​Resource    | 201 (Audit​Report​Resource), 400, 403, 404      |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​audit-logs                                | Get the audit log of an equipment              | laboratoryId (path), equipmentId (path), dateFrom (query, opcional), dateTo (query, opcional)      | 200 (Audit​Log​Entry​Resource[])                 |
| **POST** /​laboratories/​{laboratory​Id}/​inventory/​reports                                                 | Generate the inventory report                  | laboratoryId (path), body: Generate​Inventory​Report​Request                                          | 201 (Audit​Report​Resource), 400, 403           |
| **GET** /​laboratories/​{laboratory​Id}/​kpi-dashboards                                                     | Get the indicators of the laboratory           | laboratoryId (path), from (query, opcional), to (query, opcional), environment​Id (query, opcional) | 200 (Kpi​Dashboard​Response), 400, 403, 404     |
| **GET** /​laboratories/​{laboratory​Id}/​reports                                                            | Get the reports generated in the laboratory    | laboratoryId (path)                                                                                | 200 (Audit​Report​Resource[])                   |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​audit-logs                                         | Get the activity of a staff member             | laboratoryId (path), staffId (path)                                                                | 200 (Audit​Log​Entry​Resource[]), 403, 404       |
| **GET** /​reports/​{report​Id}                                                                             | Get audit report by ID                         | reportId (path)                                                                                    | 200                                           |
| **GET** /​reports/​{report​Id}/​content                                                                     | Download a stored report                       | reportId (path)                                                                                    | 200                                           |

**Profile**

| Endpoint                                                           | Acción                                       | Parámetros                          | Respuestas                   |
|--------------------------------------------------------------------|----------------------------------------------|-------------------------------------|------------------------------|
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​profile       | Get the profile of a staff member            | laboratoryId (path), staffId (path) | 200 (Profile), 403, 404      |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​profile/​photo | Get the photo of a staff member              | laboratoryId (path), staffId (path) | 200 (string), 403, 404       |
| **GET** /​users/​me/​profile                                          | Get the profile of the authenticated user    | —                                   | 200 (Profile), 401           |
| **PUT** /​users/​me/​profile                                          | Update the profile of the authenticated user | body: Update​Profile​Request          | 200 (Profile), 400, 401      |
| **GET** /​users/​me/​profile/​photo                                    | Get the photo of the authenticated user      | —                                   | 200 (string), 404            |
| **PUT** /​users/​me/​profile/​photo                                    | Replace the photo of the authenticated user  | body: string                        | 200 (Profile), 400, 413, 415 |
| **DELETE** /​users/​me/​profile/​photo                                 | Remove the photo of the authenticated user   | —                                   | 204, 401                     |

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
  "roles": [
    "ROLE_QA_MANAGER"
  ],
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

Mediciones de un ambiente en un periodo
(`GET /api/v1/laboratories/1/environments/1/telemetry-measurements?from=2026-10-05T00:00:00.000Z&to=2026-10-06T00:00:00.000Z&metric=AIR_QUALITY`),
respuesta `200 OK` con el estado evaluado por el perfil ambiental vigente:

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
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/services-documentation-evidence/swagger-ui-overview.png" alt="Swagger UI - QualiTrack API" width="90%">
  <p><em>Figura: Documentación del RESTful API en Swagger UI. Esta vista muestra las operaciones agrupadas por recurso raíz, con su verbo HTTP, ruta y descripción.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/services-documentation-evidence/swagger-ui-sign-in.png" alt="Swagger UI - Sign In" width="90%">
  <p><em>Figura: Operación de inicio de sesión en Swagger UI. Esta evidencia muestra su descripción, el cuerpo de la petición con el usuario y la contraseña, y la respuesta exitosa, que devuelve el usuario autenticado con su token JWT.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/services-documentation-evidence/swagger-ui-telemetry.png" alt="Swagger UI - Telemetry Measurements" width="90%">
  <p><em>Figura: Consulta de mediciones de telemetría de un ambiente en Swagger UI. Esta evidencia muestra los parámetros del laboratorio, el ambiente, el periodo y la métrica, y las respuestas documentadas con el estado de cada lectura y los errores posibles.</em></p>
</div>

Commits relacionados con la documentación de los servicios en este sprint:

| Repository                           | Branch                                            | Commit Id | Commit Message                                                                         | Commit Message Body                                                                                                                                                                | Committed on (Date) |
|--------------------------------------|---------------------------------------------------|-----------|----------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-platform | feature/​foundation-onboarding                     | f346796   | docs​(architecture): add bounded context and database diagrams                          | —                                                                                                                                                                                  | 12/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation               | c5da809   | docs​(inventory): document domain boundaries and rollout                                | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation               | 4ef1328   | docs​(inventory): document backend classes and database relationships                   | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-domain-foundation               | 1d8b662   | docs​(inventory): remove superseded foundation diagram                                  | —                                                                                                                                                                                  | 13/09/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​laboratory-environments                   | a30c371   | docs​(laboratory): document environments model and migration                            | Update the laboratory backend and database PlantUML diagrams and add the MySQL migration script for profiles without ddl-auto.                                                     | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory-environment-raw-materials       | 3e2c746   | docs​(inventory): document environment-scoped inventory                                 | Update inventory backend and database PlantUML diagrams with environment ownership, new queries, value objects and endpoints.                                                      | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | 49e3f1b   | docs​(openapi): group operations by root resource                                       | Swagger UI now lists each operation under the first path segment after /api/v1 (Laboratories, Batches, Equipments...) through a shared OpenAPI customizer, so resources nested un… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​product-batch-management                  | 5835ed5   | docs(batch): document products and batches per environment                             | The Product Batch diagrams now show the products moved from Laboratory, batches nested under their product, raw material usages with their operation id, equipment and staff part… | 02/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-iot-devices                     | 5c24faa   | docs​(equipment): document equipment per environment, IoT devices and connection status | Adds the MySQL migration for the environment, device type, firmware and unique device identity of equipment, the environment of maintenance records and the equipment_​status_​chan… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts                            | af385ed   | docs(staff): document staff accounts, auditor permissions and staff activity           | Adds the MySQL migration for the temporary password flag of IAM users, the access role and account of staff members and the technician of maintenance records, and updates the IA… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​staff-accounts                            | 4f1cf1f   | docs(staff): document the staff access role shared with other contexts                 | —                                                                                                                                                                                  | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking-environmental-profiles           | 3b05064   | docs​(tracking): document environmental profiles in the backend and database diagrams   | Tracking class and database diagrams with the profiles, readings and actuation events; the global, equipment, compliance and audit diagrams show the new integration events and t… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​rest-controllers-review                   | 8ad6dff   | docs: document the REST review in the backend diagrams                                 | Compliance, reporting, equipment, IAM, subscription, batch, shared and global diagrams show the nested routes, the sub-resource actions, the report creation with Location and th… | 03/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​container-assignments                     | 7aaaf06   | docs​(diagrams): add container assignments to the backend diagrams                      | Inventory, Product Batch, Equipment, Laboratory, RA and global class diagrams, and the inventory_​receipts and batches container columns in the database diagrams.                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​compliance-environment-alerts             | 15cc2e7   | docs​(diagrams): add environment alerts to the backend diagrams                         | Compliance class and database diagrams, Tracking facade and normalization event, RA audit of the escalation and the global diagrams.                                               | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​reporting-environment-indicators          | b60f742   | docs​(diagrams): reporting indicators, facades and declaration order                    | Reporting calculates the indicators on request and reads the other contexts through their facades; the stored KPI tables leave the database diagrams. Relations that used a class… | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​account-recovery-and-renewal-cancellation | eae6905   | docs​(diagrams): password recovery, e-mail provider and renewal cancellation            | IAM, subscription, shared and global diagrams with the account e-mail, the password recoveries, the e-mail senders and cancel_​at_​period_​end.                                       | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​profile-and-notifications                 | 28ef10c   | docs​(diagrams): profile context, notifications and account changes                     | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​subscription-plan-seed                    | 0b8f807   | docs​(diagrams): subscription plan seed at startup                                      | —                                                                                                                                                                                  | 04/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch-in-progress                         | 8bbd7e5   | docs​(diagrams): batch started by its first raw material consumption                    | —                                                                                                                                                                                  | 05/10/2026          |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.0.1                                    | c52d7c8   | docs: add README and stop ignoring it                                                  | —                                                                                                                                                                                  | 08/10/2026          |

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

En esta sección, se mostrarán las evidencias guardadas y documentadas sobre el despliegue del software que nosotros
hemos incluido en el alcance de este primer sprint. Es importante documentar las acciones de despliegue para replicarlas
y/o mejorarlas en los siguientes sprints.

**Despliegue de la aplicación backend, incluyendo base de datos**:

Nombre del repositorio en la organización: qualitrack-platform

Previo a iniciar los pasos:

* Para el uso del servicio SMTP con Gmail, debes tener creado una contraseña de aplicacion en tu cuenta de correo a
  usar:

1) En myaccount.google.com, buscamos **Contraseñas de aplicaciones** o entramos
   a [Contraseñas de aplicaciones](https://myaccount.google.com/apppasswords):

2) Ingresas el nombre de la aplicación, en este caso, escribimos **iotech-qualitrack**:

![Previous Step 1 - Ingreso del nombre de la aplicación](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-previous-step-1.png)

3) Finalmente, mostrará la contraseña para la aplicación, que nos permitirá usar la cuenta de correo para las
   aplicaciones externas:

![Previous Step 2 - Contraseña de aplicación generada](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-previous-step-2.png)

**Paso 1: Registro de proveedores en Azure:**

1) En [Portal de Azure](https://portal.azure.com/), buscamos en la barra de navegación **Suscripciones**:

![Step 1-1 - Búsqueda en el portal de Azure](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-1.png)

2) Seleccionamos la suscripción que tenemos:

![Step 1-2 - Selección de la suscripción](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-2.png)

3) Vamos a Configuración y después Proveedores de Recursos:

![Step 1-3 - Proveedores de recursos](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-3.png)

4) Seleccionamos los siguientes recursos: Microsoft.App, Microsoft.OperationalInsights, Microsoft.ContainerRegistry,
   Microsoft.DBforMySQL y Microsoft.ManagedIdentity y le damos a registrar.

![Step 1-4 - Registro de los proveedores de recursos](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-1-4.png)

**Paso 2: Creación de grupo de recursos, identidad en GitHub y permisos:**

1) Buscamos **Grupos de recursos**:

![Step 2-1 - Búsqueda de grupos de recursos](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-1.png)

2) Le damos a Crear grupo de recursos:

![Step 2-2 - Creación del grupo de recursos](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-2.png)

3) Ingresamos el nombre y la región del grupo de recursos a crear:

![Step 2-3 - Nombre y región del grupo de recursos](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-3.png)

4) Le damos a crear grupo de recursos:

![Step 2-4 - Confirmación de creación del grupo](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-4.png)

![Step 2-5 - Grupo de recursos creado](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-5.png)

5) Ahora, vamos a **Identidades administradas**:

![Step 2-6 - Acceso a identidades administradas](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-6.png)

6) Le damos a crear, seleccionamos nuestro grupo, el nombre y la región para la identidad:

![Step 2-7 - Datos de la identidad administrada](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-7.png)

![Step 2-8 - Datos de la identidad administrada (región)](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-8.png)

7) Creamos la identidad administrada:

![Step 2-9 - Creación de la identidad administrada](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-9.png)

8) Dentro de la identidad, vamos a Configuración y después Credenciales federadas:

![Step 2-10 - Credenciales federadas](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-10.png)

9) Agregaremos una credencial para Github Actions que nos permitirá realizar CI/CD con todos los valores que nos piden:

![Step 2-11 - Credencial para GitHub Actions](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-11.png)

10) Volvemos a grupos de recursos, entramos a Control de Acceso (IAM) y agregamos una asignación de roles con rol de
    **Colaborador**, en miembros, seleccionamos la credencial dentro de la identidad administrada:

![Step 2-12 - Asignación de rol Colaborador en IAM](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-12.png)

![Step 2-13 - Selección de la identidad como miembro](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-2-13.png)

**Paso 3: Registro de imagen de contenedor**

1) Buscamos y entramos a **Container registries** y creamos un registro, seleccionando nuestro grupo e ingresando un
   nombre con una región y un plan de precios y lo creamos:

![Step 3-1 - Búsqueda de Container registries](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-1.png)

![Step 3-2 - Botón Crear en Container registries](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-2.png)

![Step 3-3 - Datos básicos del registro de contenedor](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-3.png)

![Step 3-4 - Revisión y validación del registro de contenedor](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-3-4.png)

**Paso 4: Creación de la base de datos MySQL**

1) Buscamos y entramos a **Azure Database for MySQL servers**:

![Step 4-1 - Búsqueda de Azure Database for MySQL](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-1.png)

2) Le damos a Crear y seleccionamos la opción **Servidor flexible**:

![Step 4-2 - Opción Servidor flexible](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-2.png)

3) En Datos básicos, seleccionamos nuestro grupo de recursos **iotech-qualitrack-rg**, ingresamos el nombre
   **iotech-qualitrack-mysql**, la región **Chile Central** y la versión **8.4**:

![Step 4-3 - Datos básicos del servidor flexible](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-3.png)

4) En Carga de trabajo, seleccionamos **Desarrollo o aficionado** y verificamos que quede el tamaño **Burstable B1ms**
   con **20 GiB** de almacenamiento. Además, dejamos desactivada la opción de Alta disponibilidad:

![Step 4-4 - Proceso, almacenamiento y alta disponibilidad](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-4.png)

5) En Autenticación, seleccionamos únicamente **MySQL**, ingresamos el usuario **iotechadmin** y una contraseña segura.
   Es importante guardar esta contraseña, ya que no se puede recuperar después:

![Step 4-5 - Autenticación del servidor](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-5.png)

6) En la pestaña Redes, seleccionamos como método de conectividad **Acceso público** y marcamos la opción **Permitir
   acceso público desde cualquier servicio de Azure dentro de Azure a este servidor**, lo que permitirá que nuestra
   Container App se conecte a la base de datos. Opcionalmente, podemos agregar nuestra IP actual si queremos conectarnos
   desde MySQL Workbench:

![Step 4-6 - Configuración de redes](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-6.png)

7) Le damos a Revisar y crear, verificamos que la validación sea superada y creamos el servidor. Este proceso puede
   tardar varios minutos:

![Step 4-7 - Revisión de la configuración del servidor](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-7.png)

![Step 4-8 - Implementación completada](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-8.png)

8) Cuando termine el despliegue, entramos al servidor, vamos a **Bases de datos** y le damos a Agregar:

![Step 4-9 - Lista de bases de datos del servidor](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-9.png)

9) Ingresamos el nombre de la base de datos **iotech_qualitrack** y la guardamos:

![Step 4-10 - Creación de la base de datos iotech_qualitrack](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-10.png)

10) Finalmente, en **Información general**, copiamos el nombre del servidor, que termina en
    **.mysql.database.azure.com**, ya que lo usaremos más adelante para la configuración del back-end:

![Step 4-11 - Nombre del servidor en Información general](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-4-11.png)

**Paso 5: Creación en Container Apps con imagen temporal**

1) Creamos una aplicación contenedora de Container Apps, lo crearemos desde bash porque la creación mediante la GUI de
   Azure crea una versión que no admite secretos:

* Registramos las variables del nombre de grupo de recursos y región:

![Step 5-1 - Variables de grupo de recursos y región](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-1.png)

* Creamos el entorno para la aplicación de contenedores en el grupo de recursos y región:

![Step 5-2 - Creación del entorno de Container Apps](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-2.png)

![Step 5-3 - Entorno de Container Apps creado](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-3.png)

* Creamos la aplicación de contenedores dentro del entorno creado:

![Step 5-4 - Creación de la aplicación contenedora](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-5-4.png)

**Paso 6: Agregación de identidad, permisos, secretos y variables**

1) Para la agregación de identidad, usaremos Shell:

* Obtener el ID de la identidad de la aplicación de contenedor dentro del grupo de recursos:

![Step 6-1 - Obtención del ID de la identidad de la aplicación](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-1.png)

* Asigna permisos para descargar imágenes de contenedores en el ACR:

![Step 6-2 - Asignación del rol AcrPull en el registro de contenedores](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-2.png)

* Configura la identidad administrada por el sistema de la aplicación de contenedor:

![Step 6-3 - Configuración de la identidad del sistema en el registro](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-3.png)

2) Para los secretos, ingresamos desde la aplicación de contenedor a seguridad, secretos y agregamos los secretos que
   necesitamos:

![Step 6-4 - Secretos de la aplicación contenedora](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-4.png)

3) Configuramos la entrada en Redes, entradas y cambiamos el puerto de entrada a 8080 (el que escucha Spring Boot):

![Step 6-5 - Configuración de la entrada en el puerto 8080](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-5.png)

4) Ingresaremos las variables de entorno para la aplicación, en este caso, haremos referencia a los secretos para
   algunas variables de entorno:

![Step 6-6 - Variables de entorno de la aplicación](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-6-6.png)

**Paso 7: Ingreso de secretos en el repositorio**

1) Entramos en nuestro repositorio, opciones, secretos y variables y agregamos los secretos de repositorio para conexión
   a Azure:

* Los datos AZURE_SUBSCRIPTION_ID y AZURE_TENANT_ID se consiguen con este comando:

```bash
az account show --query "{tenant:tenantId, subscription:id}" -o table
```

* El AZURE_CLIENT_ID es del paso 2

![Step 7-1 - Sección de secretos y variables de GitHub Actions](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-7-1.png)

![Step 7-2 - Secretos de repositorio para la conexión a Azure](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-7-2.png)

**Paso 8: Creación de rama en repositorio para CI-CD junto a Azure**

1) Creamos una nueva rama feature para la integración de workflows:

![Step 8-1 - Creación de la rama feature/ci-cd-azure](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-1.png)

2) Creamos los archivos deploy.yml y ci.yml dentro de .github/workflows

![Step 8-2 - Workflow deploy.yml](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-2.png)

![Step 8-3 - Workflow ci.yml](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-3.png)

3) Hacemos push a la rama feature, creamos un PR, esperamos que el test de CI termine y hacemos merge:

![Step 8-4 - Pull request fusionado con el CI aprobado](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-8-4.png)

* Para que funcionen correctamente los workflows creados, deben restringir los merge sin previa creación de un PR.

**Paso 9: Creación de rama release versión 1.0.0**

1) Creamos nuestra rama release, en la versión 1.0.0 y la pasamos a remoto:

![Step 9-1 - Creación y push de la rama release/v1.0.0](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-1.png)

2) Creamos nuestro PR hacia main:

* Previo a la creación del PR, verificamos que todo lo creado en Azure funcione correctamente.

![Step 9-2 - Creación del pull request hacia main](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-2.png)

3) Esperamos a que las pruebas y el despliegue integrados en workflows terminen:

![Step 9-3 - Verificaciones del pull request en curso](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-3.png)

![Step 9-4 - Verificaciones del pull request aprobadas](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-4.png)

4) Después de aceptar y realizar el merge a main, esperamos a que termine el workflow de despliegue hacia Azure
   Container Apps que hemos creado:

* Posteriormente, se realizó un hotfix (**hotfix/deploy-image-flag**) hacia main para corregir la construcción de la
  imagen Docker en el workflow de despliegue. Este es el workflow que terminó correctamente:

![Step 9-6 - Workflow de despliegue completado](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-9-5.png)

**Paso 10: Verificaciones y pasos finales**

1) Entramos a la aplicación del contenedor, dentro, entramos a revisiones y réplicas:

![Step 10-1 - Revisiones y réplicas de la aplicación contenedora](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-1.png)

2) Verificamos que podemos entrar a la documentación Swagger con el
   link: [Qualitrack Swagger Documentation](https://iotech-qualitrack-api.wonderfulocean-c1f38f8b.chilecentral.azurecontainerapps.io/swagger-ui/index.html)

![Step 10-2 - Documentación Swagger de la API desplegada](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-2.png)

3) Verificamos la base de datos usando MySQL Workbench mediante una conexión remota y si existen las tablas:

![Step 10-3 - Conexión exitosa en MySQL Workbench](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-3.png)

![Step 10-4 - Tablas de la base de datos iotech_qualitrack](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-4.png)

4) Etiquetamos la rama main con la nueva versión de lanzamiento:

![Step 10-5 - Lista de releases del repositorio](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-5.png)

![Step 10-6 - Creación de la release v1.0.0](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-6.png)

![Step 10-7 - Release v1.0.0 publicada](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-7.png)

* También eliminamos las ramas release y hotfix, cumpliendo el estándar Gitflow

5) En nuestra aplicación de contenedores, en la sección aplicaciones, contenedores y variables de entorno quitamos
   SPRING_JPA_HIBERNATE_DDL_AUTO para evitar cambios de esquema:

![Step 10-8 - Variable SPRING_JPA_HIBERNATE_DDL_AUTO a eliminar](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-backend-db-deployment-step-10-8.png)

**Despliegue de la aplicación web**

**Pasos previos**

1) Para el despliegue en producción, cambiamos la url base de nuestra api a la desplegada para que nuestra aplicación
   web funcione con nuestro backend en Azure:

![Frontend Previous Step 1-1 - URL base de la API en environment.ts](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-previous-step-1-1.png)

2) Creamos un pull request hacia develop con el cambio de la configuración de producción:

![Frontend Previous Step 1-2 - Creación del pull request hacia develop](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-previous-step-1-2.png)

3) Finalmente, el pull request fue fusionado en develop:

![Frontend Previous Step 1-3 - Pull request fusionado](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-previous-step-1-3.png)

**Paso 1: Creación de proyecto en Firebase**

1) Creamos nuestro proyecto llamado **iotech-qualitrack** en Firebase:

![Frontend Step 1-1 - Nombre del proyecto en Firebase](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-1-1.png)

![Frontend Step 1-2 - Creación del proyecto con Google Analytics](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-1-2.png)

**Paso 2: Inicializar Firebase en el repositorio**

1) Desde develop, creamos una rama feature para inicializar firebase

* Realizamos los siguientes comandos:

```bash
npm ci
npx firebase-tools login
npx firebase-tools init hosting
```

![Frontend Step 2-1 - Instalación de firebase-tools en el login](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-1.png)

2) Se crean 2 archivos: .firebaserc y firebase.json:

![Frontend Step 2-2 - Archivos creados](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-2.png)

3) Conectamos GitHub con Firebase:

![Frontend Step 2-3 - Inicialización de hosting con GitHub](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-3.png)

![Frontend Step 2-4 - Inicialización de hosting con GitHub completada](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-4.png)

4) Hacemos push a la rama feature y realizamos un PR a develop para el release.

![Frontend Step 2-4 - Pull request hacia develop con el workflow de despliegue](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-2-5.png)

**Paso 3: Release y despliegue a Firebase**

1) Realizamos un release version 1.0.0 y realizamos un PR a main:

![Frontend Step 3-1 - Creación de la rama release/v1.0.0](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-1.png)

![Frontend Step 3-2 - Pull request del release hacia main](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-2.png)

2) Esperamos a que el despliegue configurado en workflows termine:

![Frontend Step 3-3 - Despliegue en progreso en GitHub Actions](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-3.png)

3) Cuando ya termino, accedemos al link de nuestra aplicación web:

![Frontend Step 3-4 - Despliegue completado en GitHub Actions](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-4.png)

![Frontend Step 3-5 - Aplicación web desplegada en Firebase Hosting](../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-frontend-deployment-step-3-5.png)

**Despliegue de la Landing Page**

Nombre del repositorio en la organización: qualitrack-landing-page

La Landing Page es un sitio estático (`index.html` y la carpeta `public`), por lo que se publica directamente desde su
repositorio con GitHub Pages.

**Paso 1: Publicación con GitHub Pages**

1) En el repositorio, vamos a Settings y después Pages. En Build and deployment seleccionamos **Deploy from a branch**,
   la rama **main** y la carpeta **/ (root)**, y guardamos:

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-1-1.jpg" alt="Configuración de GitHub Pages" width="90%">
  <p><em>Figura: Configuración de GitHub Pages en el repositorio de la Landing Page. Esta vista evidencia el sitio publicado y su publicación desde la rama main y la carpeta raíz del repositorio.</em></p>
</div>

2) Con cada push a main, el workflow **pages-build-deployment** de GitHub Actions publica el sitio:

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-1-2.jpg" alt="Workflow de publicación de la Landing Page" width="90%">
  <p><em>Figura: Ejecuciones del workflow pages-build-deployment en GitHub Actions. Esta evidencia muestra las publicaciones de la Landing Page realizadas desde la rama main.</em></p>
</div>

**Paso 2: Verificaciones**

1) Ingresamos a la Landing Page
   en [https://iotech-2620-8741.github.io/qualitrack-landing-page/](https://iotech-2620-8741.github.io/qualitrack-landing-page/)
   y recorremos sus secciones en inglés y en español:

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-2-1.png" alt="Landing Page publicada" width="90%">
  <p><em>Figura: Landing Page publicada en GitHub Pages. Esta evidencia confirma que el sitio es accesible públicamente desde la URL de la organización.</em></p>
</div>

2) Verificamos que los botones Get started y los de cada plan lleven a la Web Application publicada en Firebase Hosting:

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/deployment-evidence/sprint-1-landing-deployment-step-2-2.png" alt="Enlace de la Landing Page a la Web Application" width="90%">
  <p><em>Figura: Llamada a la acción de la Landing Page abierta en la Web Application. Esta evidencia muestra la conexión entre el sitio público y la aplicación desplegada.</em></p>
</div>

#### 6.2.1.9. Team Collaboration Insights during Sprint

Durante el Sprint 1 el equipo trabajó con GitFlow: cada funcionalidad se desarrolló en una rama `feature/*` creada desde
`develop`, se integró en `develop` con un merge sin fast-forward y las versiones estables se publicaron en `main`
mediante ramas `release/*` con su etiqueta. Los mensajes de commit siguen Conventional Commits.

Todos los integrantes del equipo participaron en la implementación de los productos del sprint, organizados según la
matriz de liderazgo y colaboración: cada líder desarrolló las funcionalidades de su aspecto y los colaboradores apoyaron
en la implementación de vistas, la integración con el RESTful API, la documentación del código y la revisión de los
cambios antes de integrarlos en `develop`.

**Landing Page.** En el repositorio de la Landing Page, los 24 commits de implementación del sprint fueron realizados
por Huapaya Galindo, Dyron (MaineMa). El trabajo se desarrolló en las ramas `feature/previous-landing-page` y
`feature/team-members` y `feature/landing-page`, que se integraron en `develop` y luego en `main`, e incluye la
estructura y estilos del sitio, el cambio de idioma con sus traducciones, las páginas legales y los perfiles del equipo.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/team-collaboration-insights/insights-landing-page.png" alt="GitHub Insights - Landing Page" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio de la Landing Page en GitHub Insights. Esta evidencia muestra los commits realizados durante el sprint e integrados en la rama main.</em></p>
</div>

**Web Application.** Cada Bounded Context del core business fue desarrollado por su líder con el apoyo del resto del
equipo: Laboratory Management por Ruiz Madrid, Billy Jake; Inventory Management y Product Batch Management por Cutiri
Agüero, Fabrizio Alexander; Equipment Management por Guzmán Cabrejos, Yaku Mateo; Tracking & Telemetry por Torres
Apolinario, Giovany Smith; y Compliance & Alerting por Lopez Roman, Franco Mauricio. Los contextos de soporte
(Identity & Access Management, Payments & Subscriptions, Reporting & Audit y Profile) se trabajaron de forma
transversal, y la documentación del código con TSDoc se distribuyó entre los integrantes por módulo.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/team-collaboration-insights/insights-web-app.png" alt="GitHub Insights - Web Application" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio de la Web Application en GitHub Insights. Esta evidencia muestra la participación de los integrantes en la implementación de los módulos del sprint, con los commits integrados en la rama main.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/team-collaboration-insights/insights-web-app-network.png" alt="GitHub Network - Web Application" width="90%">
  <p><em>Figura: Gráfico de red del repositorio de la Web Application. Esta vista evidencia las ramas feature creadas desde develop y su integración mediante merges, siguiendo GitFlow.</em></p>
</div>

**Interpretación.** Los analíticos de contribución de GitHub contabilizan los commits integrados en la rama main de cada
repositorio, mientras que el gráfico de red muestra las ramas de funcionalidad en las que los integrantes desarrollaron
sus aspectos antes de integrarlos en `develop`. El uso de ramas `feature/*`, merges hacia `develop` y commits
convencionales permitió integrar el trabajo de cada miembro de forma ordenada y mantener un historial trazable de quién
implementó cada funcionalidad. Como oportunidad de mejora, el equipo se propone distribuir los commits de manera más
uniforme a lo largo del sprint y publicar en main con mayor frecuencia, evitando concentrar la integración del trabajo
en los días previos a la entrega.

### 6.2.2. Sprint 2

En esta sección se detalla el proceso de trabajo realizado por el equipo durante el segundo sprint del proyecto QualiTrack.

Este sprint se centra en llevar QualiTrack de una primera versión visual a una solución IoT integrada de punta a punta. Para ello se construye la primera versión del backend (Cloud REST API), del Edge API, de las Embedded Apps de ambos dispositivos y de la aplicación móvil, junto con la segunda versión de la Landing Page y de la aplicación web, que pasa a consumir los servicios reales del backend.

A diferencia del Sprint 1, el trabajo se organiza por bounded context: cada integrante es responsable de un contexto del core del negocio en todos los productos donde ese contexto aparece (backend, web, móvil, edge o embedded).


#### 6.2.2.1. Sprint Planning 2

La reunión de Sprint Planning 2 se realizó al cierre del Sprint 1, con la participación de los nueve integrantes del equipo. Antes de definir el nuevo alcance, el equipo revisó lo entregado en el Sprint 1 y las observaciones recibidas, y a partir de esa revisión acordó los cambios en la forma de trabajo para esta iteración.

En la siguiente tabla se resumen los datos de la reunión, el resumen del sprint anterior, el objetivo del Sprint 2 y los story points comprometidos.

<table>
<tr>
<td>Sprint #</td>
<td>Sprint 2</td>
</tr>
<tr>
<td colspan="2"><strong>Sprint Planning Background</strong></td>
</tr>
<tr>
<td>Date</td>
<td>2026-10-20</td>
</tr>
<tr>
<td>Time</td>
<td>05:00 PM (GMT-5)</td>
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
<td>Sprint 1 Review Summary</td>
<td>In Sprint 1 the team completed all 101 planned user stories (190 story points), split into 182 tasks and 561 hours of work. The Landing Page was delivered and deployed on GitHub Pages, and the first version of the Web App was deployed on Firebase Hosting, with the screens for the business bounded contexts. An initial backend was also published on Azure with MySQL and a CI/CD pipeline.

The instructor pointed out that the Web App had only been verified manually and that the backend was an incomplete demo version, so its technical stories are treated as pending work for this sprint.</td>
</tr>
<tr>
<td>Sprint 1 Retrospective Summary</td>
<td>What went well: the use of GitFlow and Conventional Commits, splitting the work by screens, and the early deployment of the Landing Page and the Web App.




What to improve: the Web App had no automated tests, the backend did not cover every bounded context, the Edge used an operator's account instead of its own credentials, and the physical prototype of the devices had not been built.




Actions for Sprint 2: organize the work by bounded context so that each owner connects their context end to end, add tests to the Web App services, give each device its own credentials with the Edge, agree on the Edge–Cloud JSON contract at the start of the sprint, and merge into develop at least twice a week.</td>
</tr>
<tr>
<td colspan="2"><strong>Sprint Goal & User Stories</strong></td>
</tr>
<tr>
<td>Sprint 2 Goal</td>
<td>
Our focus is on building the first integrated version of QualiTrack: the Cloud REST API with the business bounded contexts, the Edge API receiving telemetry from the devices, the Embedded Apps for the Environment Monitor and the Container Monitor, and the first version of the Mobile App. At the same time, the Web App and the Landing Page move to a new version connected to the real services.




We believe it delivers to quality managers the ability to supervise the environmental conditions of their laboratories and containers in real time, receive alerts when a reading goes out of range and check traceability from the web or mobile app, while operational staff get devices that react locally to a deviation.




This will be confirmed when a reading taken by a physical device reaches the Edge, is synchronized with the backend and is shown in the Web App and the Mobile App, and when an out-of-range reading generates an alert that the quality manager can see.
</td>
</tr>
<tr>
<td>Sprint 2 Velocity</td>
<td>219</td>
</tr>
<tr>
<td>Sum of Story Points</td>
<td>219</td>
</tr>
</table>

#### 6.2.2.2. Aspect Leaders and Collaborators

Durante el Sprint 2 cada integrante lideró un bounded context del core del negocio en todos los productos donde aparece. Tracking & Telemetry y Compliance & Alerting tienen dos líderes cada uno por su carga de trabajo. Los contextos que no son core (IAM, Profile Management y Payments & Subscriptions) quedaron con quien ya los venía trabajando.

| Team Member (Last Name, First Name) / GitHub User­name | Tracking & Telemetry  | Compliance & Alerting  | Product Batch Management  | Equipment Management  | Laboratory Management  | Inventory Management  | Reporting & Audit |
|-------------------------------------------------------|----------------------|-------------------------------|------------------------------|------------------------------|------------------------------|----------------------------------|-------------------------------|
| Baca Camargo, Vitaly Arturo<br>(Mr-Code-star)         | C                    | C                             | C                            | C                            | C                            | C                                | L                             |
| Cutiri Agüero, Fabrizio Alexander<br>(Fabrizio​Cutiri) | C                    | C                             | C                            | C                            | C                            | L                                | C                             |
| Guzmán Cabrejos, Yaku Mateo<br>(yakumateo)            | C                    | C                             | C                            | L                            | C                            | C                                | C                             |
| Huapaya Galindo, Dyron<br>(Maine​Ma)                   | C                    | L                             | C                            | C                            | C                            | C                                | C                             |
| Lopez Roman, Franco Mauricio<br>(Franco​Lopez00)       | C                    | C                             | L                            | C                            | C                            | C                                | C                             |
| Montes Ramos, Henry Jaredt<br>(jahen17)               | C                    | C                             | C                            | C                            | L                            | C                                | C                             |
| Ruiz Madrid, Billy Jake<br>(BJRM03)                   | L                    | C                             | C                            | C                            | C                            | C                                | C                             |
| Torres Apoli­nario, Giovany Smith<br>(giovanydevv)     | C                    | L                             | C                            | C                            | C                            | C                                | C                             |
| Quiroz Caceres, Adrian Alonso<br>(Aqc1019)            | L                    | C                             | C                            | C                            | C                            | C                                | C                             |



Donde:

- **L (Leader):** responsable principal del aspecto.
- **C (Collaborator):** miembro de apoyo en la implementación.

#### 6.2.2.3. Sprint Backlog 2

El objetivo del Sprint 2 es construir la primera versión integrada de QualiTrack: el Cloud REST API con los Bounded Contexts del negocio, el Edge API que recibe la telemetría de los dispositivos, las Embedded Applications del Monitor de Ambiente y del Monitor de Contenedor y la primera versión de la Mobile Application, junto con la nueva versión de la Web Application conectada a los servicios reales. Para ello el equipo seleccionó 115 historias con 219 Story Points en el sprint QT Sprint 2 de Jira: 79 Technical Stories del Cloud REST API (146 Story Points), 7 del Edge API (14 Story Points), 18 historias de las Embedded Applications (38 Story Points: 15 Maker Stories y 3 User Stories del dispositivo), 2 User Stories de la Mobile Application (4 Story Points) y 9 Spike Stories (17 Story Points).

Cada historia se descompuso en tareas según el producto donde se implementa: las Technical Stories del Cloud REST API en dominio y aplicación, infraestructura JPA, endpoint documentado en Swagger, pruebas y conexión con la Web Application; las del Edge API en la ruta Flask, la persistencia en SQLite, la validación del dispositivo y la prueba con dispositivos simulados; las Maker Stories en el montaje, el firmware, la integración con el perfil ambiental y la prueba física; y las Spike Stories en la investigación, la prueba de concepto y el registro de la decisión. Cada tarea quedó asignada al responsable del Bounded Context según la matriz de liderazgo y colaboración.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/jira-sprint-2-board.jpg" alt="Sprint 2 en Jira" width="90%">
  <p><em>Figura: Historias del Sprint 2 en Jira. Esta vista evidencia el sprint QT Sprint 2 del proyecto QualiTrack con sus 115 historias y 219 Story Points, organizadas por épica y asignadas a los responsables de cada Bounded Context.</em></p>
</div>

**Enlace público al tablero:** [QT Sprint 2 - Jira](https://iotech-2620.atlassian.net/jira/software/projects/QT/boards/68/backlog)

En total el sprint comprende 521 tareas y 690 horas estimadas. El estado de cada tarea corresponde a lo implementado en los repositorios al cierre del sprint: 435 tareas se encuentran en Done, 2 en In-Process y 84 en To-do. Las tareas pendientes corresponden a las Embedded Applications, cuyo firmware aún no se encuentra en un repositorio de la organización, a las pruebas de concepto de los spikes de hardware y de Firebase, y al caché local y la distribución de la Mobile Application.

<table>
<tr>
<th colspan="8">Sprint # Sprint 2</th>
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
<tr><td colspan="8"><strong>Cloud REST API: Identity &amp; Access Management</strong></td></tr>
<tr><td rowspan="5">TS01</td><td rowspan="5">Registrar usuarios mediante la API</td><td>QT-1517</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para registrar usuarios.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1518</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1519</td><td>Endpoint REST y Swagger</td><td>POST /​authentication/​sign-up, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1520</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos y usuario o correo en uso.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1521</td><td>Web app v2: conectar al backend real</td><td>Vista de Identity &amp; Access Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="5">TS02</td><td rowspan="5">Autenticar usuarios mediante la API</td><td>QT-1522</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para autenticar usuarios.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1523</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1524</td><td>Endpoint REST y Swagger</td><td>POST /​authentication/​sign-in, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1525</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y credenciales inválidas.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1526</td><td>Web app v2: conectar al backend real</td><td>Vista de Identity &amp; Access Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="5">TS03</td><td rowspan="5">Solicitar recuperación de contraseña mediante la API</td><td>QT-1527</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para solicitar recuperación de contraseña.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1528</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1529</td><td>Endpoint REST y Swagger</td><td>POST /​authentication/​password-recovery-requests, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1530</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y dato faltante.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1531</td><td>Web app v2: conectar al backend real</td><td>Vista de Identity &amp; Access Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="5">TS04</td><td rowspan="5">Confirmar restablecimiento de contraseña mediante la API</td><td>QT-1532</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para confirmar restablecimiento de contraseña.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1533</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1534</td><td>Endpoint REST y Swagger</td><td>POST /​authentication/​password-resets, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1535</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y código o contraseña inválidos.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1536</td><td>Web app v2: conectar al backend real</td><td>Vista de Identity &amp; Access Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="4">TS05</td><td rowspan="4">Validar permisos por rol</td><td>QT-1537</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para validar permisos por rol.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1538</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1539</td><td>Endpoint REST y Swagger</td><td>Respuestas 401, 403 documentadas en Swagger para las rutas protegidas.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1540</td><td>Pruebas unitarias y de integración</td><td>Escenarios: acceso autorizado, sin sesión, rol sin permiso o laboratorio ajeno y auditor.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="5">TS06</td><td rowspan="5">Consultar la configuración inicial mediante la API</td><td>QT-1541</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para consultar la configuración inicial.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1542</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1543</td><td>Endpoint REST y Swagger</td><td>GET /​users/​me/​onboarding, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1544</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y sin sesión.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1545</td><td>Web app v2: conectar al backend real</td><td>Vista de Identity &amp; Access Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="5">TS07</td><td rowspan="5">Cambiar la contraseña mediante la API</td><td>QT-1546</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para cambiar la contraseña.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1547</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1548</td><td>Endpoint REST y Swagger</td><td>POST /​users/​me/​password-changes, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1549</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y contraseña incorrecta o inválida.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1550</td><td>Web app v2: conectar al backend real</td><td>Vista de Identity &amp; Access Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="5">TS08</td><td rowspan="5">Actualizar la cuenta mediante la API</td><td>QT-1551</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Identity &amp; Access Management para actualizar la cuenta.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1552</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Identity &amp; Access Management en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1553</td><td>Endpoint REST y Swagger</td><td>PUT /​users/​me, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1554</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos o contraseña incorrectos y usuario o correo en uso.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1555</td><td>Web app v2: conectar al backend real</td><td>Vista de Identity &amp; Access Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Payments &amp; Subscriptions</strong></td></tr>
<tr><td rowspan="4">TS09</td><td rowspan="4">Crear una sesión de pago</td><td>QT-1489</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Payments &amp; Subscriptions para crear una sesión de pago.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1490</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Payments &amp; Subscriptions en MySQL.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1491</td><td>Endpoint REST y Swagger</td><td>POST /​subscription-checkout-sessions, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1492</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, plan o ciclo inválido y otro usuario.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="4">TS10</td><td rowspan="4">Procesar confirmaciones del proveedor de pagos</td><td>QT-1493</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Payments &amp; Subscriptions para procesar confirmaciones del proveedor de pagos.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1494</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Payments &amp; Subscriptions en MySQL.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1495</td><td>Endpoint REST y Swagger</td><td>POST /​stripe/​webhooks, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1496</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y firma inválida.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS11</td><td rowspan="5">Consultar la suscripción mediante la API</td><td>QT-1497</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Payments &amp; Subscriptions para consultar la suscripción.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1498</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Payments &amp; Subscriptions en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1499</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​subscriptions, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1500</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y laboratorio ajeno.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1501</td><td>Web app v2: conectar al backend real</td><td>Vista de Payments &amp; Subscriptions conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS12</td><td rowspan="5">Cancelar la renovación mediante la API</td><td>QT-1502</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Payments &amp; Subscriptions para cancelar la renovación.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1503</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Payments &amp; Subscriptions en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1504</td><td>Endpoint REST y Swagger</td><td>POST /​subscriptions/​{subscription​Id}/​cancellation-requests, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1505</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, suscripción ajena, suscripción inexistente y no cancelable.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1506</td><td>Web app v2: conectar al backend real</td><td>Vista de Payments &amp; Subscriptions conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS13</td><td rowspan="5">Consultar planes mediante la API</td><td>QT-1507</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Payments &amp; Subscriptions para consultar planes.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1508</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Payments &amp; Subscriptions en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1509</td><td>Endpoint REST y Swagger</td><td>GET /​subscription-plans, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1510</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y sin sesión.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1511</td><td>Web app v2: conectar al backend real</td><td>Vista de Payments &amp; Subscriptions conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS14</td><td rowspan="5">Consultar pagos mediante la API</td><td>QT-1512</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Payments &amp; Subscriptions para consultar pagos.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1513</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Payments &amp; Subscriptions en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1514</td><td>Endpoint REST y Swagger</td><td>GET /​subscriptions/​{subscription​Id}/​payments, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1515</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y suscripción ajena.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1516</td><td>Web app v2: conectar al backend real</td><td>Vista de Payments &amp; Subscriptions conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Profile Management</strong></td></tr>
<tr><td rowspan="5">TS100</td><td rowspan="5">Consultar y actualizar el perfil mediante la API</td><td>QT-1474</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Profile Management para consultar y actualizar el perfil.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1475</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Profile Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1476</td><td>Endpoint REST y Swagger</td><td>GET /​users/​me/​profile, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1477</td><td>Pruebas unitarias y de integración</td><td>Escenarios: consulta, actualización y datos inválidos.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1478</td><td>Web app v2: conectar al backend real</td><td>Vista de Profile Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS101</td><td rowspan="5">Gestionar la foto de perfil mediante la API</td><td>QT-1479</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Profile Management para gestionar la foto de perfil.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1480</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Profile Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1481</td><td>Endpoint REST y Swagger</td><td>PUT /​users/​me/​profile/​photo, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1482</td><td>Pruebas unitarias y de integración</td><td>Escenarios: subida, consulta, eliminación, archivo no válido, archivo muy pesado, tipo no soportado y sin foto.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1483</td><td>Web app v2: conectar al backend real</td><td>Vista de Profile Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS102</td><td rowspan="5">Consultar el perfil de un miembro del personal mediante la API</td><td>QT-1484</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Profile Management para consultar el perfil de un miembro del personal.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1485</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Profile Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1486</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​profile, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1487</td><td>Pruebas unitarias y de integración</td><td>Escenarios: perfil, foto, sin permiso y sin cuenta o sin foto.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1488</td><td>Web app v2: conectar al backend real</td><td>Vista de Profile Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Laboratory Management</strong></td></tr>
<tr><td rowspan="5">TS15</td><td rowspan="5">Registrar una instalación mediante la API</td><td>QT-1159</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para registrar una instalación.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1160</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1161</td><td>Endpoint REST y Swagger</td><td>POST /​laboratories, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1162</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos y laboratorio existente.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1163</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS18</td><td rowspan="5">Registrar un ambiente mediante la API</td><td>QT-1164</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para registrar un ambiente.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1165</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1166</td><td>Endpoint REST y Swagger</td><td>POST …/​laboratories/​{laboratory​Id}/​environments, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1167</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad y código repetido.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1168</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS19</td><td rowspan="5">Registrar el uso de un ambiente mediante la API</td><td>QT-1169</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para registrar el uso de un ambiente.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1170</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1171</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​usage-assignments, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1172</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, uso no permitido, sin rol de calidad, ambiente inexistente y uso repetido.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1173</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS20</td><td rowspan="5">Consultar ambientes mediante la API</td><td>QT-1174</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para consultar ambientes.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1175</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1176</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​environments, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1177</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y laboratorio ajeno.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1178</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS22</td><td rowspan="5">Registrar personal mediante la API</td><td>QT-1179</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para registrar personal.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1180</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1181</td><td>Endpoint REST y Swagger</td><td>POST …/​laboratories/​{laboratory​Id}/​staff, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1182</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad y correo en uso.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1183</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS23</td><td rowspan="5">Consultar personal mediante la API</td><td>QT-1184</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para consultar personal.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1185</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1186</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​staff, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1187</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y laboratorio ajeno.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1188</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS24</td><td rowspan="5">Consultar la actividad del personal mediante la API</td><td>QT-1189</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para consultar la actividad del personal.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1190</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1191</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​audit-logs, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1192</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, sin permiso y persona ajena.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1193</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS25</td><td rowspan="5">Desactivar personal mediante la API</td><td>QT-1194</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para desactivar personal.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1195</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1196</td><td>Endpoint REST y Swagger</td><td>POST …/​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​deactivations, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1197</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, sin rol de calidad, persona inexistente y ya inactiva.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1198</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS16</td><td rowspan="5">Consultar una instalación mediante la API</td><td>QT-1199</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para consultar una instalación.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1200</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1201</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1202</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y laboratorio inexistente.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1203</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS17</td><td rowspan="5">Actualizar una instalación mediante la API</td><td>QT-1204</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para actualizar una instalación.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1205</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1206</td><td>Endpoint REST y Swagger</td><td>PUT …/​laboratories/​{laboratory​Id}, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1207</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad y laboratorio inexistente.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1208</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td rowspan="5">TS21</td><td rowspan="5">Actualizar un ambiente mediante la API</td><td>QT-1209</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Laboratory Management para actualizar un ambiente.</td><td>2</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1210</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Laboratory Management en MySQL.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1211</td><td>Endpoint REST y Swagger</td><td>PUT …/​environments/​{environment​Id}, documentado en Swagger.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1212</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad, ambiente inexistente y código en uso.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td>QT-1213</td><td>Web app v2: conectar al backend real</td><td>Vista de Laboratory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Montes Ramos, Henry Jaredt</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Inventory Management</strong></td></tr>
<tr><td rowspan="5">TS26</td><td rowspan="5">Registrar una materia prima mediante la API</td><td>QT-1035</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para registrar una materia prima.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1036</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1037</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​raw-materials, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1038</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad, ambiente inexistente y código repetido.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1039</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS27</td><td rowspan="5">Consultar materias primas mediante la API</td><td>QT-1040</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para consultar materias primas.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1041</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1042</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-materials, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1043</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, filtro desconocido y ambiente inexistente.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1044</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS28</td><td rowspan="5">Registrar un lote de materia prima mediante la API</td><td>QT-1045</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para registrar un lote de materia prima.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1046</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1047</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1048</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, materia prima inexistente y lote duplicado.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1049</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS29</td><td rowspan="5">Consultar lotes de materia prima mediante la API</td><td>QT-1050</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para consultar lotes de materia prima.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1051</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1052</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1053</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y materia prima inexistente.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1054</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS30</td><td rowspan="5">Cambiar el estado de un lote mediante la API</td><td>QT-1055</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para cambiar el estado de un lote.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1056</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1057</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{batch​Id}/​reviews, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1058</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos incompletos, sin rol de calidad, lote inexistente y transición no permitida.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1059</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS31</td><td rowspan="5">Calcular el stock utilizable mediante la API</td><td>QT-1060</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para calcular el stock utilizable.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1061</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1062</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​stock, documentado en Swagger.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1063</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y materia prima inexistente.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1064</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS32</td><td rowspan="5">Consultar materias primas con stock bajo mediante la API</td><td>QT-1065</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para consultar materias primas con stock bajo.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1066</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1067</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-materials?stock​Status=LOW, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1068</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, valor desconocido y ambiente inexistente.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1069</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS33</td><td rowspan="5">Consultar lotes próximos a vencer mediante la API</td><td>QT-1070</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para consultar lotes próximos a vencer.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1071</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1072</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-material-batches?expiration​Status=NEAR_​EXPIRY, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1073</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, valor inválido y ambiente inexistente.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1074</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS34</td><td rowspan="5">Asignar materia prima a un contenedor mediante la API</td><td>QT-1075</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para asignar materia prima a un contenedor.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1076</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1077</td><td>Endpoint REST y Swagger</td><td>PUT …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{batch​Id}/​container-assignment, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1078</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, monitor faltante, lote inexistente y contenedor no válido.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1079</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS35</td><td rowspan="5">Consultar el contenedor de una materia prima mediante la API</td><td>QT-1080</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para consultar el contenedor de una materia prima.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1081</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1082</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{batch​Id}/​container-assignment, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1083</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y sin contenedor.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1084</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td rowspan="5">TS36</td><td rowspan="5">Consultar movimientos de materia prima mediante la API</td><td>QT-1085</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Inventory Management para consultar movimientos de materia prima.</td><td>2</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1086</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Inventory Management en MySQL.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1087</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​movements, documentado en Swagger.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1088</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y materia prima inexistente.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td>QT-1089</td><td>Web app v2: conectar al backend real</td><td>Vista de Inventory Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Cutiri Agüero, Fabrizio Alexander</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Equipment Management</strong></td></tr>
<tr><td rowspan="5">TS37</td><td rowspan="5">Registrar equipos mediante la API</td><td>QT-1214</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para registrar equipos.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1215</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1216</td><td>Endpoint REST y Swagger</td><td>POST …/​laboratories/​{laboratory​Id}/​equipments, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1217</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad y serie registrada.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1218</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS38</td><td rowspan="5">Consultar equipos mediante la API</td><td>QT-1219</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para consultar equipos.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1220</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1221</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​equipments, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1222</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y laboratorio ajeno.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1223</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS39</td><td rowspan="5">Asociar equipos con ambientes mediante la API</td><td>QT-1224</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para asociar equipos con ambientes.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1225</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1226</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​equipments, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1227</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad, equipo o ambiente ajeno y dispositivo ambiental repetido.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1228</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS40</td><td rowspan="5">Registrar cambio de estado de equipos mediante la API</td><td>QT-1229</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para registrar cambio de estado de equipos.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1230</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1231</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​status-changes, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1232</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, estado no permitido y equipo fuera del ambiente.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1233</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS43</td><td rowspan="5">Registrar dispositivos ambientales mediante la API</td><td>QT-1234</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para registrar dispositivos ambientales.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1235</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1236</td><td>Endpoint REST y Swagger</td><td>POST …/​laboratories/​{laboratory​Id}/​devices/​environmental-devices, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1237</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad y dispositivo registrado.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1238</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS44</td><td rowspan="5">Asociar dispositivos ambientales con ambientes mediante la API</td><td>QT-1239</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para asociar dispositivos ambientales con ambientes.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1240</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1241</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​environmental-devices, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1242</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad, dispositivo o ambiente inexistente y ambiente ocupado.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1243</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS45</td><td rowspan="5">Registrar monitores de contenedor mediante la API</td><td>QT-1244</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para registrar monitores de contenedor.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1245</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1246</td><td>Endpoint REST y Swagger</td><td>POST …/​laboratories/​{laboratory​Id}/​devices/​container-monitors, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1247</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad y monitor registrado.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1248</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS46</td><td rowspan="5">Asociar monitores de contenedor con ambientes mediante la API</td><td>QT-1249</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para asociar monitores de contenedor con ambientes.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1250</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1251</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​container-monitors, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1252</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad y monitor o ambiente inexistente.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1253</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS47</td><td rowspan="5">Consultar el estado de conexión de dispositivos mediante la API</td><td>QT-1254</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para consultar el estado de conexión de dispositivos.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1255</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1256</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​devices/​{device​Id}/​telemetry-status, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1257</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y dispositivo inexistente.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1258</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS48</td><td rowspan="5">Configurar parámetros BPM mediante la API</td><td>QT-1259</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para configurar parámetros BPM.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1260</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1261</td><td>Endpoint REST y Swagger</td><td>PUT …/​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name}, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1262</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, rango inválido y equipo ajeno.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1263</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS41</td><td rowspan="5">Registrar mantenimientos mediante la API</td><td>QT-1464</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para registrar mantenimientos.</td><td>2</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1465</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1466</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1467</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, otro técnico y equipo o técnico ajeno.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1468</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td rowspan="5">TS42</td><td rowspan="5">Consultar mantenimientos mediante la API</td><td>QT-1469</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Equipment Management para consultar mantenimientos.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1470</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Equipment Management en MySQL.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1471</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records, documentado en Swagger.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1472</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y equipo fuera del ambiente.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td>QT-1473</td><td>Web app v2: conectar al backend real</td><td>Vista de Equipment Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Guzmán Cabrejos, Yaku Mateo</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Tracking &amp; Telemetry</strong></td></tr>
<tr><td rowspan="5">TS49</td><td rowspan="5">Guardar el rango de calidad de aire mediante la API</td><td>QT-1345</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Tracking &amp; Telemetry para guardar el rango de calidad de aire.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1346</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Tracking &amp; Telemetry en MySQL.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1347</td><td>Endpoint REST y Swagger</td><td>PUT …/​environments/​{environment​Id}/​environmental-profile/​thresholds, documentado en Swagger.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1348</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, rangos inválidos y sin rol de calidad.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1349</td><td>Web app v2: conectar al backend real</td><td>Vista de Tracking &amp; Telemetry conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="5">TS50</td><td rowspan="5">Guardar rangos de temperatura y humedad de contenedores mediante la API</td><td>QT-1350</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Tracking &amp; Telemetry para guardar rangos de temperatura y humedad de contenedores.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1351</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Tracking &amp; Telemetry en MySQL.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1352</td><td>Endpoint REST y Swagger</td><td>PUT …/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​thresholds, documentado en Swagger.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1353</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, rangos inválidos y sin rol de calidad.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1354</td><td>Web app v2: conectar al backend real</td><td>Vista de Tracking &amp; Telemetry conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="5">TS51</td><td rowspan="5">Guardar el rango de luminosidad mediante la API</td><td>QT-1355</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Tracking &amp; Telemetry para guardar el rango de luminosidad.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1356</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Tracking &amp; Telemetry en MySQL.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1357</td><td>Endpoint REST y Swagger</td><td>PUT …/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​thresholds, documentado en Swagger.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1358</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, rangos inválidos y sin rol de calidad.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1359</td><td>Web app v2: conectar al backend real</td><td>Vista de Tracking &amp; Telemetry conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="5">TS52</td><td rowspan="5">Guardar reglas de actuación de contenedores mediante la API</td><td>QT-1360</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Tracking &amp; Telemetry para guardar reglas de actuación de contenedores.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1361</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Tracking &amp; Telemetry en MySQL.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1362</td><td>Endpoint REST y Swagger</td><td>PUT …/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​actuation-rules, documentado en Swagger.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1363</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, regla inválida y sin rol de calidad.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1364</td><td>Web app v2: conectar al backend real</td><td>Vista de Tracking &amp; Telemetry conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="5">TS65</td><td rowspan="5">Consultar telemetría ambiental mediante la API</td><td>QT-1377</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Tracking &amp; Telemetry para consultar telemetría ambiental.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1378</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Tracking &amp; Telemetry en MySQL.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1379</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​telemetry-measurements, documentado en Swagger.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1380</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, periodo o métrica inválidos y sin dispositivo ambiental.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1381</td><td>Web app v2: conectar al backend real</td><td>Vista de Tracking &amp; Telemetry conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="5">TS66</td><td rowspan="5">Consultar telemetría de contenedores mediante la API</td><td>QT-1382</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Tracking &amp; Telemetry para consultar telemetría de contenedores.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1383</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Tracking &amp; Telemetry en MySQL.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1384</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​telemetry-measurements, documentado en Swagger.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1385</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, periodo o métrica inválidos y monitor inexistente.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1386</td><td>Web app v2: conectar al backend real</td><td>Vista de Tracking &amp; Telemetry conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="5">TS67</td><td rowspan="5">Consultar eventos de actuación mediante la API</td><td>QT-1387</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Tracking &amp; Telemetry para consultar eventos de actuación.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1388</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Tracking &amp; Telemetry en MySQL.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1389</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​actuation-events, documentado en Swagger.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1390</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, periodo inválido y monitor inexistente.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1391</td><td>Web app v2: conectar al backend real</td><td>Vista de Tracking &amp; Telemetry conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Product Batch Management</strong></td></tr>
<tr><td rowspan="5">TS68</td><td rowspan="5">Registrar un producto mediante la API</td><td>QT-1090</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para registrar un producto.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1091</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1092</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​products, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1093</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad, ambiente inexistente y producto existente.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1094</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS69</td><td rowspan="5">Consultar productos mediante la API</td><td>QT-1095</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para consultar productos.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1096</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1097</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​products, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1098</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y laboratorio ajeno.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1099</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS70</td><td rowspan="5">Registrar un lote de producto mediante la API</td><td>QT-1100</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para registrar un lote de producto.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1101</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1102</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​products/​{product​Id}/​batches, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1103</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, producto inexistente y número en uso.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1104</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS71</td><td rowspan="5">Consultar lotes de producto mediante la API</td><td>QT-1105</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para consultar lotes de producto.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1106</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1107</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​products/​{product​Id}/​batches, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1108</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y producto inexistente.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1109</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS72</td><td rowspan="5">Registrar consumo de materia prima mediante la API</td><td>QT-1110</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para registrar consumo de materia prima.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1111</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1112</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​raw-material-usages, documentado en Swagger.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1113</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, reintento, cantidad o unidad inválidas, lote inexistente y consumo no permitido.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1114</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS73</td><td rowspan="5">Asociar equipos con un lote mediante la API</td><td>QT-1115</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para asociar equipos con un lote.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1116</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1117</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​equipment-usages, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1118</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, lote o equipo inexistente y asociación no permitida.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1119</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS74</td><td rowspan="5">Asociar personal con un lote mediante la API</td><td>QT-1120</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para asociar personal con un lote.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1121</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1122</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​staff-participations, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1123</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, persona auditora, asignación de otra persona, lote o persona inexistente y participación no permitida.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1124</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS75</td><td rowspan="5">Asignar un lote de producto a un contenedor mediante la API</td><td>QT-1125</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para asignar un lote de producto a un contenedor.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1126</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1127</td><td>Endpoint REST y Swagger</td><td>PUT …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1128</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, monitor faltante, lote inexistente y contenedor no válido.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1129</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS76</td><td rowspan="5">Consultar el contenedor de un lote de producto mediante la API</td><td>QT-1130</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para consultar el contenedor de un lote de producto.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1131</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1132</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1133</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y sin contenedor.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1134</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS77</td><td rowspan="5">Consultar trazabilidad de lotes mediante la API</td><td>QT-1135</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para consultar trazabilidad de lotes.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1136</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1137</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​traceability, documentado en Swagger.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1138</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y lote inexistente.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1139</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS78</td><td rowspan="5">Liberar un lote mediante la API</td><td>QT-1140</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para liberar un lote.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1141</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1142</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​releases, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1143</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, datos inválidos, sin rol de calidad, lote inexistente y lote cerrado.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1144</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS79</td><td rowspan="5">Rechazar un lote mediante la API</td><td>QT-1145</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para rechazar un lote.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1146</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1147</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​rejections, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1148</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, sin motivo, sin rol de calidad, lote inexistente y lote cerrado.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1149</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td rowspan="5">TS80</td><td rowspan="5">Consultar los lotes del laboratorio mediante la API</td><td>QT-1150</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Product Batch Management para consultar los lotes del laboratorio.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1151</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Product Batch Management en MySQL.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1152</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​batches, documentado en Swagger.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1153</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y laboratorio ajeno.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1154</td><td>Web app v2: conectar al backend real</td><td>Vista de Product Batch Management conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Compliance &amp; Alerting</strong></td></tr>
<tr><td rowspan="4">TS87</td><td rowspan="4">Consultar lotes afectados por trazabilidad</td><td>QT-1155</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Compliance &amp; Alerting para consultar lotes afectados por trazabilidad.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1156</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Compliance &amp; Alerting en MySQL.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1157</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​usages, documentado en Swagger.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1158</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y materia prima inexistente.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="4">TS81</td><td rowspan="4">Crear alertas a partir de desviaciones</td><td>QT-1420</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Compliance &amp; Alerting para crear alertas a partir de desviaciones.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1421</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Compliance &amp; Alerting en MySQL.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1422</td><td>Endpoint REST y Swagger</td><td>POST …/​environments/​{environment​Id}/​deviation-alerts, documentado en Swagger.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1423</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, alerta abierta existente, datos inválidos y ambiente inexistente.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="5">TS82</td><td rowspan="5">Consultar alertas mediante la API</td><td>QT-1432</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Compliance &amp; Alerting para consultar alertas.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1433</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Compliance &amp; Alerting en MySQL.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1434</td><td>Endpoint REST y Swagger</td><td>GET …/​environments/​{environment​Id}/​deviation-alerts, documentado en Swagger.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1435</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, filtro desconocido y ambiente inexistente.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1436</td><td>Web app v2: conectar al backend real</td><td>Vista de Compliance &amp; Alerting conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="5">TS88</td><td rowspan="5">Consultar el detalle de una alerta mediante la API</td><td>QT-1437</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Compliance &amp; Alerting para consultar el detalle de una alerta.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1438</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Compliance &amp; Alerting en MySQL.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1439</td><td>Endpoint REST y Swagger</td><td>GET /​deviation-alerts/​{alert​Id}, documentado en Swagger.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1440</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, alerta ajena y alerta inexistente.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1441</td><td>Web app v2: conectar al backend real</td><td>Vista de Compliance &amp; Alerting conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td rowspan="5">TS83</td><td rowspan="5">Registrar atención de una alerta mediante la API</td><td>QT-1442</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Compliance &amp; Alerting para registrar atención de una alerta.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1443</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Compliance &amp; Alerting en MySQL.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1444</td><td>Endpoint REST y Swagger</td><td>POST /​deviation-alerts/​{alert​Id}/​acknowledgements, documentado en Swagger.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1445</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, sin permiso, alerta inexistente y alerta ya atendida.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1446</td><td>Web app v2: conectar al backend real</td><td>Vista de Compliance &amp; Alerting conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td rowspan="5">TS84</td><td rowspan="5">Registrar resolución de una alerta mediante la API</td><td>QT-1447</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Compliance &amp; Alerting para registrar resolución de una alerta.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1448</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Compliance &amp; Alerting en MySQL.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1449</td><td>Endpoint REST y Swagger</td><td>POST /​deviation-alerts/​{alert​Id}/​resolutions, documentado en Swagger.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1450</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, sin notas, sin permiso, alerta inexistente y alerta ya resuelta.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1451</td><td>Web app v2: conectar al backend real</td><td>Vista de Compliance &amp; Alerting conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Cloud REST API: Reporting &amp; Audit</strong></td></tr>
<tr><td rowspan="5">TS91</td><td rowspan="5">Consultar auditoría mediante la API</td><td>QT-1455</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Reporting &amp; Audit para consultar auditoría.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1456</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Reporting &amp; Audit en MySQL.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1457</td><td>Endpoint REST y Swagger</td><td>GET /​batches/​{batch​Id}/​audit-logs, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1458</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida y lote ajeno.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1459</td><td>Web app v2: conectar al backend real</td><td>Vista de Reporting &amp; Audit conectada al endpoint real, con estados de carga y error.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td rowspan="4">TS92</td><td rowspan="4">Calcular resumen estadístico ambiental</td><td>QT-1460</td><td>Dominio y aplicación</td><td>Comando o consulta y reglas de negocio de Reporting &amp; Audit para calcular resumen estadístico ambiental.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1461</td><td>Infraestructura JPA y MySQL</td><td>Repositorio Spring Data JPA y mapeo de las entidades de Reporting &amp; Audit en MySQL.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1462</td><td>Endpoint REST y Swagger</td><td>GET …/​laboratories/​{laboratory​Id}/​kpi-dashboards, documentado en Swagger.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1463</td><td>Pruebas unitarias y de integración</td><td>Escenarios: solicitud válida, periodo inválido y ambiente ajeno.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Edge API</strong></td></tr>
<tr><td rowspan="4">TS53</td><td rowspan="4">Autenticar dispositivos ambientales en Edge</td><td>QT-1320</td><td>Endpoint Flask y esquema JSON</td><td>POST /​api/​v1/​auth/​sign-in (device_​id y X-API-Key), con su esquema JSON.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1321</td><td>Modelo Peewee y persistencia en SQLite</td><td>Modelo Peewee y almacenamiento en SQLite sin duplicados (dispositivo, métrica y momento).</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1322</td><td>Validación del dispositivo y errores</td><td>Rechazo con 401 o 400 de nodos no registrados o de datos mal formados.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1323</td><td>Prueba con dispositivo simulado</td><td>Pruebas automatizadas que simulan el Monitor de Ambiente y el Monitor de Contenedor.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="4">TS54</td><td rowspan="4">Autenticar monitores de contenedor en Edge</td><td>QT-1324</td><td>Endpoint Flask y esquema JSON</td><td>POST /​api/​v1/​auth/​sign-in (device_​id y X-API-Key), con su esquema JSON.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1325</td><td>Modelo Peewee y persistencia en SQLite</td><td>Modelo Peewee y almacenamiento en SQLite sin duplicados (dispositivo, métrica y momento).</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1326</td><td>Validación del dispositivo y errores</td><td>Rechazo con 401 o 400 de nodos no registrados o de datos mal formados.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1327</td><td>Prueba con dispositivo simulado</td><td>Pruebas automatizadas que simulan el Monitor de Ambiente y el Monitor de Contenedor.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="4">TS55</td><td rowspan="4">Recibir telemetría del dispositivo ambiental en Edge</td><td>QT-1328</td><td>Endpoint Flask y esquema JSON</td><td>POST /​api/​v1/​monitoring/​environment-readings, con su esquema JSON.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1329</td><td>Modelo Peewee y persistencia en SQLite</td><td>Modelo Peewee y almacenamiento en SQLite sin duplicados (dispositivo, métrica y momento).</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1330</td><td>Validación del dispositivo y errores</td><td>Rechazo con 401 o 400 de nodos no registrados o de datos mal formados.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1331</td><td>Prueba con dispositivo simulado</td><td>Pruebas automatizadas que simulan el Monitor de Ambiente y el Monitor de Contenedor.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="4">TS56</td><td rowspan="4">Recibir telemetría del monitor de contenedor en Edge</td><td>QT-1332</td><td>Endpoint Flask y esquema JSON</td><td>POST /​api/​v1/​monitoring/​container-readings, con su esquema JSON.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1333</td><td>Modelo Peewee y persistencia en SQLite</td><td>Modelo Peewee y almacenamiento en SQLite sin duplicados (dispositivo, métrica y momento).</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1334</td><td>Validación del dispositivo y errores</td><td>Rechazo con 401 o 400 de nodos no registrados o de datos mal formados.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1335</td><td>Prueba con dispositivo simulado</td><td>Pruebas automatizadas que simulan el Monitor de Ambiente y el Monitor de Contenedor.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="4">TS57</td><td rowspan="4">Recibir eventos de actuación del contenedor en Edge</td><td>QT-1365</td><td>Endpoint Flask y esquema JSON</td><td>POST /​api/​v1/​control/​actuation-events, con su esquema JSON.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1366</td><td>Modelo Peewee y persistencia en SQLite</td><td>Modelo Peewee y almacenamiento en SQLite sin duplicados (dispositivo, métrica y momento).</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1367</td><td>Validación del dispositivo y errores</td><td>Rechazo con 401 o 400 de nodos no registrados o de datos mal formados.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1368</td><td>Prueba con dispositivo simulado</td><td>Pruebas automatizadas que simulan el Monitor de Ambiente y el Monitor de Contenedor.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="4">TS58</td><td rowspan="4">Entregar configuración al dispositivo ambiental desde Edge</td><td>QT-1369</td><td>Endpoint Flask y esquema JSON</td><td>GET /​api/​v1/​configurations/​{device​Id}, con su esquema JSON.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1370</td><td>Modelo Peewee y persistencia en SQLite</td><td>Modelo Peewee y almacenamiento en SQLite sin duplicados (dispositivo, métrica y momento).</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1371</td><td>Validación del dispositivo y errores</td><td>Rechazo con 401 o 400 de nodos no registrados o de datos mal formados.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1372</td><td>Prueba con dispositivo simulado</td><td>Pruebas automatizadas que simulan el Monitor de Ambiente y el Monitor de Contenedor.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="4">TS59</td><td rowspan="4">Entregar configuración al monitor de contenedor desde Edge</td><td>QT-1373</td><td>Endpoint Flask y esquema JSON</td><td>GET /​api/​v1/​configurations/​{device​Id}, con su esquema JSON.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1374</td><td>Modelo Peewee y persistencia en SQLite</td><td>Modelo Peewee y almacenamiento en SQLite sin duplicados (dispositivo, métrica y momento).</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1375</td><td>Validación del dispositivo y errores</td><td>Rechazo con 401 o 400 de nodos no registrados o de datos mal formados.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1376</td><td>Prueba con dispositivo simulado</td><td>Pruebas automatizadas que simulan el Monitor de Ambiente y el Monitor de Contenedor.</td><td>1</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td colspan="8"><strong>Embedded Applications</strong></td></tr>
<tr><td rowspan="4">MS01</td><td rowspan="4">Leer calidad de aire en el dispositivo ambiental</td><td>QT-1288</td><td>Montaje y cableado</td><td>Monitor de Ambiente: montar y cablear sensor de calidad de aire MQ-135, según el circuito de 5.6.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1289</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de sensor de calidad de aire MQ-135.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1290</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1291</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="4">MS02</td><td rowspan="4">Detectar movimiento en el dispositivo ambiental</td><td>QT-1292</td><td>Montaje y cableado</td><td>Monitor de Ambiente: montar y cablear sensor de movimiento PIR, según el circuito de 5.6.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1293</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de sensor de movimiento PIR.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1294</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1295</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="4">MS05</td><td rowspan="4">Enviar telemetría ambiental al Edge API</td><td>QT-1296</td><td>Montaje y cableado</td><td>Monitor de Ambiente: montar y cablear envío de telemetría ambiental, según el circuito de 5.6.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1297</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de envío de telemetría ambiental.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1298</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1299</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="4">MS06</td><td rowspan="4">Leer temperatura y humedad en el monitor de contenedor</td><td>QT-1300</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear sensor DHT11 de temperatura y humedad, según el circuito de 5.6.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1301</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de sensor DHT11 de temperatura y humedad.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1302</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1303</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS07</td><td rowspan="4">Leer luminosidad en el monitor de contenedor</td><td>QT-1304</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear sensor de luz BH1750, según el circuito de 5.6.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1305</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de sensor de luz BH1750.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1306</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1307</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS09</td><td rowspan="4">Leer una identificación RFID en el contenedor</td><td>QT-1308</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear lector RFID RC522, según el circuito de 5.6.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1309</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de lector RFID RC522.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1310</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1311</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS12</td><td rowspan="4">Enviar telemetría del contenedor al Edge API</td><td>QT-1312</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear envío de telemetría del contenedor, según el circuito de 5.6.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1313</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de envío de telemetría del contenedor.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1314</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1315</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS14</td><td rowspan="4">Autenticar los dispositivos con Edge</td><td>QT-1316</td><td>Montaje y cableado</td><td>Ambos nodos ESP32: montar y cablear autenticación de dispositivos ante el Edge, según el circuito de 5.6.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1317</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de autenticación de dispositivos ante el Edge.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1318</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1319</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="3">US66</td><td rowspan="3">Reconocer el estado del ambiente desde el dispositivo</td><td>QT-1336</td><td>Comportamiento local en el firmware</td><td>Reconocer localmente el estado del ambiente mediante el LED y el buzzer con los indicadores del ESP32.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1337</td><td>Sincronizar el evento con el Edge</td><td>Envío del evento al Edge para la trazabilidad en el Cloud.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1338</td><td>Prueba con el operario y evidencia</td><td>Validación con un usuario del segmento operativo, con video.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="3">US71</td><td rowspan="3">Consultar localmente los datos del contenedor</td><td>QT-1339</td><td>Comportamiento local en el firmware</td><td>Visualizar en la pantalla del contenedor sus datos principales con los indicadores del ESP32.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1340</td><td>Sincronizar el evento con el Edge</td><td>Envío del evento al Edge para la trazabilidad en el Cloud.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1341</td><td>Prueba con el operario y evidencia</td><td>Validación con un usuario del segmento operativo, con video.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="3">US74</td><td rowspan="3">Reconocer una alarma local</td><td>QT-1342</td><td>Comportamiento local en el firmware</td><td>Reconocer una alarma desde el dispositivo con los indicadores del ESP32.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1343</td><td>Sincronizar el evento con el Edge</td><td>Envío del evento al Edge para la trazabilidad en el Cloud.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1344</td><td>Prueba con el operario y evidencia</td><td>Validación con un usuario del segmento operativo, con video.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS03</td><td rowspan="4">Controlar el LED del dispositivo ambiental</td><td>QT-1392</td><td>Montaje y cableado</td><td>Monitor de Ambiente: montar y cablear anillo LED NeoPixel de 16 píxeles, según el circuito de 5.6.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1393</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de anillo LED NeoPixel de 16 píxeles.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1394</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1395</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="4">MS04</td><td rowspan="4">Controlar el buzzer del dispositivo ambiental</td><td>QT-1396</td><td>Montaje y cableado</td><td>Monitor de Ambiente: montar y cablear buzzer del Monitor de Ambiente, según el circuito de 5.6.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1397</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de buzzer del Monitor de Ambiente.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1398</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1399</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="4">MS08</td><td rowspan="4">Mostrar datos en la pantalla del contenedor</td><td>QT-1400</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear pantalla OLED 0.96", según el circuito de 5.6.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1401</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de pantalla OLED 0.96".</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1402</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1403</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS10</td><td rowspan="4">Controlar la ventilación o refrigeración simulada del contenedor</td><td>QT-1404</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear ventilador / refrigeración simulada, según el circuito de 5.6.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1405</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de ventilador / refrigeración simulada.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1406</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1407</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS11</td><td rowspan="4">Controlar el servo del contenedor</td><td>QT-1408</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear servo de cierre SG90, según el circuito de 5.6.</td><td>3</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1409</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de servo de cierre SG90.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1410</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1411</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS13</td><td rowspan="4">Enviar eventos de actuación del contenedor al Edge API</td><td>QT-1412</td><td>Montaje y cableado</td><td>Monitor de Contenedor: montar y cablear envío de eventos de actuación, según el circuito de 5.6.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1413</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de envío de eventos de actuación.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1414</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1415</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="4">MS15</td><td rowspan="4">Obtener la configuración desde Edge</td><td>QT-1416</td><td>Montaje y cableado</td><td>Ambos nodos ESP32: montar y cablear descarga de configuración desde el Edge, según el circuito de 5.6.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1417</td><td>Firmware</td><td>C++ (Arduino Framework): lectura o control de descarga de configuración desde el Edge.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1418</td><td>Integración con el perfil ambiental</td><td>Reglas del perfil con histéresis y estados NORMAL, WARNING y CRITICAL; reacción local en 1 s o menos.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1419</td><td>Prueba física y evidencia</td><td>Prueba del comportamiento esperado y del fallo controlado, con foto o video.</td><td>1</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td colspan="8"><strong>Mobile Application</strong></td></tr>
<tr><td rowspan="4">US94</td><td rowspan="4">Consultar condiciones desde el móvil</td><td>QT-1424</td><td>Pantalla Flutter según mock-up</td><td>Pantalla en Flutter según los mock-ups de 5.4.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1425</td><td>Consumir el API real</td><td>Servicio con Dio que llama al Cloud REST API con el token del usuario.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>Done</td></tr>
<tr><td>QT-1426</td><td>Caché local en SQLite</td><td>Último estado conocido en la base local del móvil.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>To-do</td></tr>
<tr><td>QT-1427</td><td>Prueba en Android y distribución</td><td>Prueba en Android y publicación del APK en Firebase App Distribution.</td><td>1</td><td>Baca Camargo, Vitaly Arturo</td><td>In-Process</td></tr>
<tr><td rowspan="4">US95</td><td rowspan="4">Consultar alertas desde el móvil</td><td>QT-1428</td><td>Pantalla Flutter según mock-up</td><td>Pantalla en Flutter según los mock-ups de 5.4.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1429</td><td>Consumir el API real</td><td>Servicio con Dio que llama al Cloud REST API con el token del usuario.</td><td>2</td><td>Lopez Roman, Franco Mauricio</td><td>Done</td></tr>
<tr><td>QT-1430</td><td>Caché local en SQLite</td><td>Último estado conocido en la base local del móvil.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>To-do</td></tr>
<tr><td>QT-1431</td><td>Prueba en Android y distribución</td><td>Prueba en Android y publicación del APK en Firebase App Distribution.</td><td>1</td><td>Lopez Roman, Franco Mauricio</td><td>In-Process</td></tr>
<tr><td colspan="8"><strong>Spikes técnicos</strong></td></tr>
<tr><td rowspan="3">SP01</td><td rowspan="3">Evaluación técnica del sensor de calidad de aire y movimiento</td><td>QT-1264</td><td>Investigar alternativas</td><td>Comparar alternativas: sensor de calidad de aire y movimiento.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1265</td><td>Prueba de concepto</td><td>Prototipo mínimo: alternativas evaluadas y prototipo validado.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1266</td><td>Documentar la decisión</td><td>Registrar la opción elegida y su justificación.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="3">SP02</td><td rowspan="3">Evaluación técnica de temperatura, humedad y luminosidad del contenedor</td><td>QT-1267</td><td>Investigar alternativas</td><td>Comparar alternativas: temperatura, humedad y luminosidad del contenedor.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1268</td><td>Prueba de concepto</td><td>Prototipo mínimo: sensores evaluados y prueba validada.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1269</td><td>Documentar la decisión</td><td>Registrar la opción elegida y su justificación.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="3">SP03</td><td rowspan="3">Evaluación técnica de actuadores y alimentación del contenedor</td><td>QT-1270</td><td>Investigar alternativas</td><td>Comparar alternativas: actuadores y alimentación del contenedor.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1271</td><td>Prueba de concepto</td><td>Prototipo mínimo: circuito evaluado y prototipo validado.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1272</td><td>Documentar la decisión</td><td>Registrar la opción elegida y su justificación.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="3">SP04</td><td rowspan="3">Evaluación técnica de RFID para identificación del contenedor</td><td>QT-1273</td><td>Investigar alternativas</td><td>Comparar alternativas: rFID para identificación del contenedor.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>Done</td></tr>
<tr><td>QT-1274</td><td>Prueba de concepto</td><td>Prototipo mínimo: alternativas evaluadas y lectura validada.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td>QT-1275</td><td>Documentar la decisión</td><td>Registrar la opción elegida y su justificación.</td><td>2</td><td>Torres Apolinario, Giovany Smith</td><td>To-do</td></tr>
<tr><td rowspan="3">SP05</td><td rowspan="3">Evaluación de histéresis y recuperación para control local</td><td>QT-1276</td><td>Investigar alternativas</td><td>Comparar alternativas: histéresis y recuperación para control local.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>Done</td></tr>
<tr><td>QT-1277</td><td>Prueba de concepto</td><td>Prototipo mínimo: regla definida y comportamiento validado.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td>QT-1278</td><td>Documentar la decisión</td><td>Registrar la opción elegida y su justificación.</td><td>2</td><td>Huapaya Galindo, Dyron</td><td>To-do</td></tr>
<tr><td rowspan="3">SP06</td><td rowspan="3">Evaluación de comunicación REST de dos tipos de dispositivo con Edge</td><td>QT-1279</td><td>Investigar alternativas</td><td>Comparar alternativas: comunicación REST de dos tipos de dispositivo con Edge.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1280</td><td>Prueba de concepto</td><td>Prototipo mínimo: ambos dispositivos se comunican y fallo evaluado.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1281</td><td>Documentar la decisión</td><td>Decisión registrada en ADR-0008 del Edge Service.</td><td>2</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="3">SP07</td><td rowspan="3">Evaluación de seguridad para identificar dispositivos ante Edge</td><td>QT-1282</td><td>Investigar alternativas</td><td>Comparar alternativas: seguridad para identificar dispositivos ante Edge.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1283</td><td>Prueba de concepto</td><td>Prototipo mínimo: mecanismo seleccionado y acceso no autorizado validado.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td>QT-1284</td><td>Documentar la decisión</td><td>Decisión registrada en ADR-0003, ADR-0014 y ADR-0016 del Edge Service.</td><td>2</td><td>Ruiz Madrid, Billy Jake</td><td>Done</td></tr>
<tr><td rowspan="3">SP09</td><td rowspan="3">Evaluación del entorno físico para el Edge Service</td><td>QT-1285</td><td>Investigar alternativas</td><td>Comparar alternativas: entorno físico para el Edge Service.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1286</td><td>Prueba de concepto</td><td>Prototipo mínimo: entorno evaluado y ejecución validada.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td>QT-1287</td><td>Documentar la decisión</td><td>Decisión registrada en ADR-0010 del Edge Service.</td><td>1</td><td>Quiroz Caceres, Adrian Alonso</td><td>Done</td></tr>
<tr><td rowspan="3">SP10</td><td rowspan="3">Evaluación técnica de Firebase para distribución y notificaciones móviles</td><td>QT-1452</td><td>Investigar alternativas</td><td>Comparar alternativas: firebase para distribución y notificaciones móviles.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>To-do</td></tr>
<tr><td>QT-1453</td><td>Prueba de concepto</td><td>Prototipo mínimo: distribución validada y notificación validada.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>To-do</td></tr>
<tr><td>QT-1454</td><td>Documentar la decisión</td><td>Registrar la opción elegida y su justificación.</td><td>2</td><td>Baca Camargo, Vitaly Arturo</td><td>To-do</td></tr>
</table>

#### 6.2.2.4. Development Evidence for Sprint Review

En este sprint el equipo pasó de la primera versión visual de QualiTrack a una solución integrada: el Cloud REST API se reorganizó siguiendo Domain-Driven Design y se extendió con los Edge Gateways, la Web Application se rediseñó y quedó conectada a todos los servicios, se construyó la primera versión de la Mobile Application y del Edge Service, y la Landing Page publicó su nueva versión.

- **Landing Page (v1.1.0):** se aplicó la guía de estilos de QualiTrack, se compartieron el encabezado, el pie de página y el selector de idioma entre todas las páginas, el inglés pasó a ser el idioma por defecto, el código JavaScript se organizó en módulos documentados, se actualizaron las fotos del equipo y la publicación en GitHub Pages pasó a un workflow de GitHub Actions.
- **Web Application (v1.1.1 a v2.5.0):** se aplicaron las capas de Domain-Driven Design en cada Bounded Context, con stores por contexto y capas anticorrupción entre contextos; se agregaron validaciones de formularios y pruebas unitarias con Vitest; se rediseñaron las vistas con los componentes de la guía de estilos (encabezado común, tablas paginadas, estados vacíos y de error); se reorganizó la bandeja de alertas, los lotes de producción y los reportes; y se agregó el registro de Edge Gateways con la generación de su API key.
- **Cloud REST API (v1.1.0 y v1.2.0):** se completó la estructura táctica de Domain-Driven Design en cada Bounded Context (fachadas, servicios externos y relaciones entre contextos), se agregaron los Edge Gateways con su API key y los endpoints con los que un Edge lee sus dispositivos IoT y envía telemetría, eventos de actuación y perfiles ambientales, se documentaron los endpoints de Tracking & Telemetry en Swagger y se registraron los pagos de renovación de las suscripciones.
- **Mobile Application:** se construyó la primera versión con Flutter siguiendo la estructura de Domain-Driven Design de la Web Application: inicio de sesión, inicio con prioridades y últimas alertas, inventario, lotes de producción, alertas, monitoreo, reportes y auditoría, con correcciones de usabilidad y el registro de Edge Gateways.
- **Edge API (v0.1.0 a v0.3.1):** se implementó el Edge Service con Flask, Peewee y SQLite: autenticación de los nodos ESP32 con API key, recepción de lecturas ambientales, de contenedores y de eventos de actuación, entrega de la configuración a cada nodo, sincronización con el Cloud como Edge Gateway y despliegue con Docker Compose. Sus decisiones quedaron registradas en 16 Architecture Decision Records.
- **Embedded Applications:** el firmware de los nodos ESP32 aún no se encuentra en un repositorio de la organización, por lo que sus Maker Stories continúan en To-do en el Sprint Backlog.

Las siguientes tablas presentan los 1353 commits realizados en los repositorios de la organización desde el cierre del Sprint 1 (9 de octubre de 2026) hasta la revisión del Sprint 2 (13 de noviembre de 2026), ordenados por fecha, junto con la rama en la que se realizaron: 115 de la Landing Page, 581 de la Web Application, 217 del Cloud REST API, 314 de la Mobile Application y 126 del Edge API.

**Landing Page** ([IoTech-2620-8741/qualitrack-website](https://github.com/IoTech-2620-8741/qualitrack-website))

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-website | develop | 54da0b8 | feat​(language-switcher): add language switcher and its dependencies to privacy policy section. | — | 21/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 66354a5 | feat​(translations): add spanish and english translations for privacy policy section. | — | 21/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 1cc4050 | feat​(i18n): implements internationalization for privacy policy section. | — | 21/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 304896d | fix​(footer): remove target="_​blank" from legal links | — | 25/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​rename-translation-keys | 3e306dc | refactor​(i18n): rename translation objects in english | — | 25/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​rename-translation-keys | 7bc2850 | refactor​(i18n): rename translation objects in spanish | — | 25/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​rename-translation-keys | a97bf3a | refactor​(i18n): rename translation objects in spanish | — | 25/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​default-english-language | 5813c05 | fix​(legal): declare english as the language of the legal pages | — | 25/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​default-english-language | a2fb011 | feat​(i18n): use english as the default language | — | 25/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | d781692 | refactor​(i18n): rename offer card keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | ff138e6 | refactor​(i18n): rename features accordion keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | ab1a22d | refactor​(i18n): rename benefits card keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 139342f | refactor​(i18n): rename about section keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 7701e53 | refactor​(i18n): rename team member keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 6421c75 | refactor​(i18n): rename testimonial review keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 2bdf055 | refactor​(i18n): rename footer link keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 51e670e | refactor​(i18n): rename policy | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | c629121 | refactor​(i18n): rename es.json | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | e227890 | refactor​(main): rename keys in main | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 33c753d | refactor​(policies): rename keys | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​license-and-changelog | d9f8517 | docs​(license): add MIT license | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​license-and-changelog | 30b1189 | docs​(changelog): add changelog with version 1.0.0 | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​styles | 676d7cb | style​(website): simplify and organize css styles. | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | 8e1a133 | style​(design): use color tokens for text, borders and surfaces | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | ac30dc0 | style​(design): unify font sizes and section spacing | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | 5c6c087 | style​(design): make cards and buttons consistent | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | b9b6ef1 | style​(a11y): add visible focus and reduced motion support | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | eb050a1 | fix​(header): open the mobile menu from the menu button | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | 01e8401 | fix​(hero): replace missing background image with a gradient | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | a847fc4 | style​(design): alternate full-width section backgrounds | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​general-design | 34b3804 | style​(design): stack cta and footer on mobile | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | a83d7fe | feat​(tos): localize introduction and clauses 1-7 | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | deb7a37 | feat​(tos): localize clauses 8-14 and policy link | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 5e6e8d9 | feat​(tos): enable bilingual terms of service | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 98f8af8 | feat​(i18n): add English terms translations for clauses 1-7 | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 8783666 | feat​(i18n): add English terms translations for clauses 8-14 | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 4c86c22 | feat​(i18n): add Spanish terms translations for clauses 1-7 | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 7f3e200 | feat​(i18n): add Spanish terms translations for clauses 8-14 | Added new sections for privacy, SLA, liability, modifications, termination, jurisdiction, and contact in Spanish translations. | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 0577c16 | fix​(i18n): nest English terms clauses under tos | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-header-footer | a4bcb8e | feat​(layout): add shared header and footer partials | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-header-footer | 1b446a4 | fix​(header): open the mobile menu through its menu wrapper | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-header-footer | 8432414 | refactor​(pages): use the shared header and footer placeholders | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-header-footer | 641aaa3 | feat​(layout): load the shared header and footer from main.js | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-language-switcher | f48affe | feat​(layout): add shared language switcher partial. | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-language-switcher | f13f519 | feat​(layout): load the shared language switcher from main.js | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-language-switcher | 21cc33b | refactor​(pages): use the shared language switcher placeholder. | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​shared-language-switcher | fcc2e05 | refactor​(public): update paths. | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​footer-refactor | e816c3b | refactor​(footer): align legal links positions and center copyright. | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​html-ids-refactor | 770c493 | refactor​(pages): align _​footer.html and _​header.html names with the naming conventions | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​html-ids-refactor | cd639e6 | refactor​(pages): align _​language-switcher.html and index.html id names with the naming conventions | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​html-ids-refactor | 8b9bc9f | refactor​(pages): align policies.html and tos.html id names with the naming conventions | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​html-ids-refactor | 9ff3c2f | refactor​(pages): align main.js and style.css id names with the naming conventions | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 64eff62 | feat: add query parameters to suscription plan buttons. | — | 29/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 6c6e83c | feat: add dynamic subscription plan link updates based on billing cycle and plan type | — | 29/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-translation-keys | 30b8bcc | fix​(i18n): match about and benefits keys in index | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-translation-keys | fe0aa19 | fix​(i18n): use camel​Case keys for plan prices and features heading | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-translation-keys | 2b900a2 | fix​(i18n): match footer link keys with the translations | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-translation-keys | df4c111 | fix​(i18n): match security keys in privacy policy | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​contributing-guide | 8e2ec72 | docs​(contributing): add contributing guide | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-translation-keys | 656cab0 | fix​(footer): match default link texts with the english translation | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-translation-keys | 42311ec | fix​(layout): point shared links to the home page in public | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​github-actions-deploy | e4cb989 | fix​(layout): update SITE_​ROOT path for Git​Hub Actions deployment | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​github-actions-deploy | 76e8b31 | fix​(footer): remove redundant 'public' from asset and legal link paths | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​github-actions-deploy | ba4aec5 | ci​(deploy): deploy public/​ to Git​Hub Pages with Git​Hub Actions | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​github-actions-deploy | 189bb59 | docs​(changelog): record the Git​Hub Actions deployment in unreleased | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​github-actions-deploy | 04cf45c | docs​(contributing): add the ci type, the deploy scope and the deployment section | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​github-actions-deploy | 95bd6cb | docs​(readme): document the project structure and the deployment | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​github-actions-deploy | 6bee04a | docs​(contributing): add 'contributing' to allowed scopes in commit message guidelines | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-views | 2ce9c48 | refactor​(policies): standardize visual styling and improve design consistency in the policies view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-views | 0ac2c52 | refactor​(tos): standardize visual styling and improve design consistency in the tos view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-views | 6da6a37 | refactor​(public): standardize visual styling and improve design consistency. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-views | eea41f3 | refactor​(public): standardize visual styling and improve design consistency in the header component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-views | 6afdbf3 | feat​(i18n): add translation keys. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-views | f0d9a28 | refactor​(public): improve stylesheet. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-views | cfca84d | refactor​(assets): adjust logo. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-language-switcher-placeholder | 6a3b2be | refactor​(scripts): fix load shared layout function for language switcher. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-language-switcher-placeholder | 1912827 | refactor​(index): remove language switcher from index. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-language-switcher-placeholder | b9e2f09 | refactor: remove unnecessary div wrapper in language switcher. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​fix-language-switcher-placeholder | 53634fa | refactor: fix language switcher in header. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 2377599 | chore: update CHANGELOG for version 1.1.0 release | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 6d4e5a9 | chore: fix version titles in CHANGELOG | Updated version numbers and added new features to the changelog. | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 72ee0cf | chore: update README for version 1.1.0 release | Updated version number to 1.1.0 and revised release notes. | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | e6322c3 | feat: add constants for site configuration and language support | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | fbc0857 | feat​(i18n): implement language initialization and translation functionality | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 3f114bd | feat​(dom): implement functions for partial template loading and home page URL management | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 8fbe90a | feat​(plans): implement plan selection and toggle functionality | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 69fa39a | feat​(layout): implement mobile menu setup and language switcher loading | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | c3ed8a4 | feat​(animations): add scroll reveal functionality for visible elements | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 5dc1b84 | feat​(accordion): implement accordion setup with keyboard accessibility | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | aef3d7f | feat​(a11y): implement accessibility enhancements for navigation and language buttons | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | f1e073b | refactor​(main): streamline initialization flow and modularize setup functions | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 6c38d93 | refactor​(sections): update main.js script tag to use module type | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 6fa013b | refactor​(index): update main.js script tag to use module type | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 6ba25a9 | refactor​(constants): add documentation each const | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | ab7178d | refactor​(config): document partial loading functions in dom.js | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 1396a71 | refactor​(config): document translation functions in i18n.js | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 443c4ba | refactor​(config): document shared state object | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | b39770a | refactor​(ui): document accordion functions | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 1a10e1f | refactor​(ui): document scroll reveal animation functions | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 25a964a | refactor​(ui): document mobile menu and shared layout functions | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | c568f65 | refactor​(ui): document billing toggle and plan link functions | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 65e7763 | refactor​(utils): document accessibility helpers in a11y.js | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 30cbfbd | refactor​(main): document site entry point in main.js | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 68034f7 | refactor​(layout): remove unused language switcher fetch helper | load​Shared​Layout already downloads the partial with fetch​Partial, so the helper and the null guard in insert​Language​Switcher were never used. | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | fdeeef1 | docs​(readme): describe the modular scripts structure | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 1283fa6 | docs​(contributing): describe the modular scripts structure | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | 03336f4 | feat​(website): update team member images | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | develop | ee2574b | fix​(website): update team image references | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-ui | 1f13457 | style​(site): apply the Quali​Track style guide | - Colors of the guide become tokens (--primary-color, --secondary-color, --tertiary-color, --bg-light, --white and the functional colors), used everywhere instead of literal values - Type scale of… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-ui | e0fe74a | style​(site): size the hero like the one of the web app | The title reaches 56px, the text column 55rem and the image 52rem, the same sizes as the hero of the web app, and on a desktop the hero fills the first screen with its content centered in it. Phones… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-ui | ffb9e7a | style​(site): size the header like the one of the web app | The language switcher takes the size of the one of the web app, 40px high like every control of the header, and the name of the logo goes from 24px to 22px. The phone menu keeps its wider switcher. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-ui | 1fca71f | fix​(site): fit the page to the smallest phones | The features video and accordion kept a minimum width of 40rem, which on a 320px phone is the whole screen plus the margins of the section, so the page was laid out at 333px and the phone shrank it… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-ui | 7512c07 | feat​(site): keep Get Started in the bar on phones | On phones the call to action sits in the header between the logo and the menu button, instead of only inside the menu, which keeps the links and the language switcher. Wider screens keep the header… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-ui | bd8ebfe | Revert "feat​(site): keep Get Started in the bar on phones" | This reverts commit 7512c07d38ee72a52e76a78170606c50c0437926. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-website | feature/​refactor-ui | 6d38399 | style​(site): center Start now when the hero stacks | On phones and tablets the hero shows the text above the image, and its call to action now sits in the middle of the screen. On a desktop it stays under the text, on the left. | 12/11/2026 |

**Web Application** ([IoTech-2620-8741/qualitrack-web-app](https://github.com/IoTech-2620-8741/qualitrack-web-app))

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​restore-i18n-translations | ec55083 | fix​(i18n): restore English translation loading | — | 10/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.1.1 | ab3f045 | chore​(release): bump version to 1.1.1 | — | 10/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​shared | 8e83e43 | feat​(shared): add Peruvian RUC, DNI and phone validators | Add ruc​Validator (11 digits starting with 20), dni​Validator (8 digits, not all equal) and phone​Validator (Peruvian mobile or landline, with an optional +51 prefix). The phone validator rejects… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​shared | a9b8e9c | feat​(shared): add date, email, name and code validators | Add date validators (minimum 2020-01-01, maximum, not in the future, after a reference date and date range) that accept the text of a date input and the Date of a date picker. Add today​In​Lima so that… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | 5a11264 | fix​(laboratory): validate RUC, phone, address and staff name | Laboratory registration and profile forms now validate the RUC (11 digits starting with 20), the phone (Peruvian mobile or landline, typed characters restricted, sent as +51...), the address (not… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​shared-digits-only | 7aec84e | feat​(shared): add digits-only input directive | Add the digits​Only directive, which removes any character that is not a digit while the user types or pastes. It is meant for identifiers made only of digits, such as the RUC and the DNI. | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​profile | 9ef1fc8 | fix​(profile): validate DNI, phone, name and e-mail | The personal data form now validates the DNI (8 digits, not all equal, digits only while typing), the phone (Peruvian mobile or landline, typed characters restricted, sent as +51...), the full name… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​laboratory | 0324e53 | fix​(laboratory): restrict RUC input to digits | Apply the digits​Only directive to the RUC field of the laboratory registration form, so letters, spaces and symbols are removed while typing or pasting. | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​iam | fd2dc73 | fix​(iam): validate e-mail and username in sign-up | The sign-up form now rejects a blank username, limits it to 80 characters like the API, and requires the domain of the e-mail to have a dot. Both values are sent without surrounding spaces, and a new… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch | 32af14e | fix​(batch): validate dates and quantity by unit | The batch form now checks the quantity against the unit (whole numbers in units, at most three decimals otherwise, up to 999999999), accepts start dates from 2020 to one year ahead, and requires the… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 46048e1 | fix​(inventory): validate receipt dates and stock limits | The reception form of a raw material lot now accepts reception dates from 2020 to today and expiration dates after the reception date and up to ten years ahead; the expiration is checked again when… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment | b6bc208 | fix​(equipment): validate BPM range and maintenance date | The BPM configuration form now requires the minimum to be lower than the maximum, as the API does, limits the values to plus or minus one million, and limits the parameter name to 100 characters and… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ra | 2e5da63 | fix​(ra): validate report and audit date ranges | The report generator and the audit log viewer now check the period chosen with the date range picker: dates from 2020 to today in Lima, and an end that is not before the start. Reports also cannot… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​tracking | 947eb06 | fix​(tracking): validate threshold ranges and history period | The threshold editor now rejects limits outside the physical range of each metric (temperature from -100 to 150 degrees, humidity from 0 to 100, luminosity up to 100000 lux, air quality up to 10000… | 18/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.2.0 | 74e5271 | feat​(docs): update README with comprehensive project overview, features, technologies, and testing instructions | — | 19/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.2.0 | 4cd7323 | feat​(changelog): add CHANGELOG.md to document project updates and version history | — | 19/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.2.0 | 1ec5f60 | feat​(license): add MIT License file to the project | — | 19/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.2.0 | b288b58 | chore​(changelog): remove outdated version entries and clean up CHANGELOG.md | — | 19/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.2.0 | 9e375dc | chore​(changelog): update CHANGELOG.md with version 1.1.1 details and fixes | — | 19/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.2.0 | 75743fc | feat​(changelog): add project context and licensing information to CHANGELOG.md | — | 19/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.3.0 | 27c5390 | docs: Update CHANGELOG for version 1.2.0 changes | — | 26/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​license | 55e7664 | docs​(license): update mit license to proprietary software license | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​dependencies | 579f641 | chore​(deps): update angular core and angular cli to version 22 | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​dependencies | 6627df4 | chore​(dependencies): update angular cdk and angular material to version 22.2.4 | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​dependencies | cf4fc9f | chore​(dependencies): update ngx-translate/​core and ngx-translate/​http-loader to version 18.1.0 | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​dependencies | 83612e2 | fix​(translate): fix translate module to translate pipe | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​dependencies | 6367f98 | fix​(i18n): provide the translate service in the component specs | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ci-unit-tests | 50cce4c | ci: run the unit tests in the pull request build | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | 6d372a6 | refactor​(batch): move the batch path to the domain | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | 697a0d7 | refactor​(batch): open a batch by its identifier through the batch store | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | 8b5ae3d | refactor​(laboratory): read the staff member through the laboratory store | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | 2e045d7 | refactor​(shared): read the status of failed requests outside the views | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | a85268f | refactor​(subscription): resolve the view after the payment through the IAM store | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | cd699a2 | docs​(diagrams): keep the views away from the infrastructure | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-import-check | aec6ced | chore​(architecture): add the check of the DDD import rules | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-import-check | 2c35598 | ci: check the DDD import rules in the pull request build | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-import-check | 7c3adc8 | docs​(readme): explain how to check the DDD import rules | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | e52ac60 | chore​(architecture): remove the exceptions fixed in the layers | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | 6555a52 | chore​(architecture): check one store per bounded context | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-layer-rules | e4b9ee2 | refactor​(shared): keep the request status out of an application layer in shared | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-one-store-per-context | f62568f | refactor​(batch): keep products and raw material consumption in the batch store | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-one-store-per-context | 31fd1ea | refactor​(ca): keep the notifications of the bell in the compliance store | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-one-store-per-context | e6beef5 | chore​(architecture): remove the exceptions fixed by one store per context | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-one-store-per-context | c08c27c | refactor​(shared): provide every store in root, as in the course example | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-one-store-per-context | c5e0778 | docs​(diagrams): one store per bounded context | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-shared-without-contexts | 6bf25d5 | refactor​(shared): make the environment selector a visual component without store | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-shared-without-contexts | 5c725e1 | chore​(architecture): remove the exceptions fixed in shared | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-shared-without-contexts | 8af1801 | refactor​(ra): show the operational overview from Reporting &amp; Audit with its own models | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-shared-without-contexts | ff1b19e | docs​(diagrams): shared without contexts and the overview in Reporting &amp; Audit | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tracking-acl | 93485df | refactor​(tracking): read devices and environments through its own anti-corruption layer | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tracking-acl | 125b3bc | chore​(architecture): remove the exceptions fixed in tracking | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tracking-acl | 7f3120b | docs​(diagrams): tracking with its own devices and environments | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-equipment-acl | 7400aae | refactor​(batch): read the equipment of the batches through its own model | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-equipment-acl | 7ec6c32 | refactor​(ca): name the devices of the alerts through its own model | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-equipment-acl | c60122a | refactor​(ra): read the equipment of the reports through its own model | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-equipment-acl | c4e03e0 | refactor​(inventory): read the storage containers through its own model | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-equipment-acl | 50ec1f1 | chore​(architecture): remove the exceptions fixed by the equipment ACLs | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-equipment-acl | b157317 | docs​(diagrams): equipment read through the models of each context | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | aa3ab94 | refactor​(shared): remember the environment of each area in a shared preference | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | 3f50f55 | refactor​(batch): read environments, staff and raw material lots through its own models | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | 47d9e6e | refactor​(ca): read the environments of the alerts through its own model | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | b1d4efc | refactor​(equipment): read environments and technicians through its own models | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | b879daf | refactor​(inventory): read the environments through its own model | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | 9924793 | refactor​(ra): read the environments and batches of the reports through its own models | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | 92f30f3 | chore​(architecture): remove the exceptions fixed by the laboratory and inventory ACLs | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | 75e83e2 | refactor​(laboratory): manage the environments in the laboratory store | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | fbcd4d8 | docs​(diagrams): environments, staff and lots read through the models of each context | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-laboratory-acl | 631d7e5 | docs​(changelog): add the unreleased changes since version 1.2.0 | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-profile-user-badge | 554c997 | refactor​(profile): own the toolbar identity badge | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-profile-user-badge | 6984267 | chore​(architecture): remove IAM profile dependency exception | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-profile-user-badge | 5c53079 | refactor​(iam): keep only sign-out in the session section | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-profile-user-badge | c8fbcae | docs​(diagrams): show profile and session toolbar composition | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-profile-user-badge | e228854 | docs​(changelog): record toolbar context ownership | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-staff-detail-links | 172dd05 | refactor​(laboratory): link to staff profile and activity pages | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-staff-detail-links | 06bf385 | refactor​(profile): own the staff personal profile page | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-staff-detail-links | 5499763 | refactor​(ra): own staff activity with a laboratory ACL | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-staff-detail-links | db4b5e2 | docs​(diagrams): separate staff profile and audit activity | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-staff-detail-links | cfb6593 | chore​(architecture): remove staff detail context exceptions | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-staff-detail-links | a7e8d2d | docs​(changelog): record separate staff pages | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-notification-settings | c6240ab | refactor​(ca): own notification preferences in a dedicated page | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-notification-settings | 9fb057c | refactor​(profile): link notification preferences to Alerts | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-notification-settings | c231038 | docs​(diagrams): show notification settings ownership | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-notification-settings | 3cbe40e | chore​(architecture): remove Profile notification form exception | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-notification-settings | 8b6164c | docs​(changelog): record notification settings navigation | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-material-consumptions | 3aefd55 | chore​(architecture): remove Inventory consumption exceptions | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-material-consumptions | 5ed422b | refactor​(inventory): read material consumption through an owned ACL | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-material-consumptions | 2b25c53 | docs​(diagrams): document material consumption ACL | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-material-consumptions | 1487e80 | docs​(changelog): record Inventory consumption reads | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-legacy-raw-materials | 64fa21b | refactor​(inventory): preserve legacy material details with own models | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-legacy-raw-materials | 50692a5 | chore​(architecture): remove remaining cross-context exceptions | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-legacy-raw-materials | a2e69bd | refactor​(batch): link historical materials to inventory | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-legacy-raw-materials | c3e6631 | docs​(diagrams): document legacy inventory ownership | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-legacy-raw-materials | 905eb3d | docs​(changelog): record historical inventory migration in PR 49 | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | c5b68cf | refactor​(batch): construct participation and traceability domain models | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | 5cded20 | refactor​(inventory): construct previous balance entities | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | 6664264 | refactor​(ra): normalize report failures and preserve download messages | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | 1dbaf8b | refactor​(iam): normalize recovery errors without changing messages | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | 5ab761e | refactor​(tracking): separate telemetry endpoints and assemblers | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | 50facf8 | refactor​(routing): use context route file names consistently | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | 2426f44 | docs​(diagrams): align tactical models endpoints and route sources | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ddd-tactical-consistency | baf0c82 | docs​(changelog): record tactical consistency in PR 50 | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | chore/​local-architecture-tools | 3b24e1a | chore: keep architecture checks local and remove tracked tools | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | chore/​local-architecture-tools | dbce2ae | docs​(changelog): record local architecture tooling in PR 51 | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v1.3.0 | b8d4167 | chore​(release): prepare v1.3.0 | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 4c00751 | refactor​(batch): colocate styles with each view | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 5a8e74c | refactor​(ca): give alert views and tables their own styles | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 4d5b6a2 | refactor​(equipment): isolate list and device form styles | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 1845459 | refactor​(iam): keep each authentication view stylesheet local | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 9b5e033 | refactor​(inventory): colocate material view styles | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 6544f97 | refactor​(laboratory): isolate staff detail styles | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 5ee2e35 | refactor​(profile): keep profile page styles local | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 1a47c42 | refactor​(ra): separate reporting view styles | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | cdb4e30 | refactor​(tracking): separate view and editor styles | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | c1d3961 | docs: document view stylesheet ownership | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 7c9731b | refactor​(shared): colocate selector styles and retire page stylesheet | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​view-local-styles | 90695cc | docs​(changelog): record local view styles | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.0.0 | 382b557 | chore​(release): prepare v2.0.0 | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | c4dbf9a | test​(routes): cover the redirects from view-named paths to semantic routes | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 7fd25ed | docs​(diagrams): show the semantic routes of each bounded context | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | e5d19d0 | refactor​(equipment): use semantic routes for equipment views | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | c63ced1 | refactor​(ca): use semantic routes for alerts | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | c200cf5 | refactor​(iam): send laboratory setup to /​laboratories/​new | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | ec0087e | refactor​(ra): use semantic routes for reports | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | d38b097 | refactor​(shared): point the side menu to the semantic routes | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 9028e60 | refactor​(profile): link back to the semantic staff routes | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | c0ab9b4 | refactor​(subscription): rename the billing route | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 5aaafb2 | refactor​(tracking): rename the monitoring route | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 7d66762 | refactor​(batch): use semantic routes for batches and products | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 3c0a4f3 | refactor​(inventory): link batches through their semantic route | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 1602f0f | refactor​(laboratory): use semantic routes for laboratory and staff | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 6b4629c | test​(routes): cover the redirects from view-named paths to semantic routes | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | d83ab2e | docs​(changelog): record semantic routes | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f7e4f72 | refactor​(forms): remove Toolbar component from various forms | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 15bb998 | refactor​(forms): remove Toolbar component from various forms | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 665e34e | refactor​(app): implement composition root for cross-context projection | - App component now acts as the Composition Root, injecting Iam​Store and cross-context components. - Layout receives state via inputs and projects components (Notification​Bell, User​Profile​Badge) via… | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 182512c | refactor​(shared): decouple Layout from cross-context dependencies | - Removed imports of Iam​Store, User​Profile​Badge, User​Session​Section, and Notification​Bell. - Replaced cross-context components with &lt;ng-content&gt; projection slots. - Added @Input​() signals for… | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 767ea1e | refactor​(shared): decouple Toolbar from Iam​Store | - Removed direct dependency on Iam​Store. - Introduced is​Signed​In @Input​() to receive authentication state. - Computed brand​Link and brand​Label based on the injected input. - Ensures shared context… | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 9342e3e | refactor​(shared): decouple Home from IAM using dynamic injection | - Removed direct dependency on Authentication​Section and Toolbar. - Implemented Ng​Component​Outlet to render dynamically injected components. - Added documentation explaining the architectural… | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | ddf6aa3 | refactor​(shared): decouple Page​Not​Found from Iam​Store and Toolbar | - Removed direct dependency on Iam​Store and the Toolbar component. - Introduced is​Signed​In @Input​() to receive authentication state. - Updated template conditionals to use the new input binding. -… | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5a57b61 | fix​(app): configure routing for decoupled shared context | - Injected Authentication​Section into Home via route data and Ng​Component​Outlet. - Removed Layout component from private routes to avoid duplicated layouts. - Updated Dashboard route configuration. -… | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | ec1a7c6 | feat​(shared): add reusable empty state and error banner components | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5d72e3d | feat​(audit-log): add audit log table component with styling and loading state | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | c4c7996 | feat​(audit-log): add audit log filters component with styling and validation | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 83bd7ff | feat​(audit-log): add utility functions for audit log filtering and formatting | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor_​components_​audit_​low_​viewer | 7ba1576 | feat​(audit-log): enhance audit log viewer with new components and reactive language support | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | b1c5012 | feat​(audit-log): enhance audit log viewer with new components and reactive state management | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | e96acf8 | refactor​(audit-log): refactor audit log viewer to use reusable components for filters and error handling | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | cd20b73 | docs​(audit-log): improve code readability and documentation in audit log components | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 38c9c92 | refactor​(audit-log): extract filters, table and pure utils | - Created Audit​Log​Filters and Audit​Log​Table sub-components - Moved logic to audit-log-viewer.utils.ts - Added shared Empty​State and Error​Banner components - Fixed datepicker UX by making inputs… | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 989a559 | fix​(env): restore production api url in environment.ts | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | b325fad | feat​(dashboard-alerts): add alerts component with styles and functionality | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | aeba5ff | feat​(dashboard-batches): add batches component with layout and functionality | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | c6561e8 | feat​(dashboard-state): add dashboard state component with styles and functionality | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 79851bf | feat​(dashboard-subscription): add subscription section with plan details and billing information | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 4e806fd | feat​(dashboard-summary): add summary component with grid layout and card details | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 933a3de | feat​(dashboard-telemetry): add telemetry section with latest readings and chart display | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 2ca7f71 | feat​(dashboard-state): add loading and error states with retry functionality | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f326191 | refactor​(dashboard): refactor imports to include new dashboard components | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 43f6f46 | refactor​(dashboard): replace inline components with dedicated dashboard components | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 3ca6cda | style​(dashboard-batches): enhance styles for section headers and headings | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f4108f9 | style​(dashboard-telemetry): enhance styles for telemetry section and add responsive design | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5eab877 | refactor​(dashboard-telemetry): enhance telemetry section with equipment filters and improved loading states | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | d2a0004 | refactor​(dashboard-state): rename files and enhance component documentation | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 3d91d20 | refactor​(dashboard): update import paths and enhance component documentation | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 2c1d144 | feat​(report-batch-card): add report batch card component with form and styling | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | e307875 | feat​(report-compliance-card): add compliance report card component with form and styling | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 31c562d | feat​(report-equipment-card): add equipment report card component with form and styling | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 29a8b52 | feat​(report-inventory-card): add inventory report card component with form and styling | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 9e8aede | refactor​(report-generator): integrate report card components and enhance report generation methods | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 698b38a | refactor​(report-generator): replace report card sections with reusable components | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | a6edba8 | refactor​(report-generator): remove unused card components and spec | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 8b807cc | refactor​(report-generator): enhance localization with additional fields and subtitles | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | e2cb2c3 | feat​(report-generator): add preview functionality for report generation | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | a69ae05 | feat​(report-generator): add report preview dialog component | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 33f8bc0 | refactor​(i18n): add localization for batch and equipment selection | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | cbb818a | feat​(report-generator): add report parameters form with localization and validation | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 6f12444 | feat​(report-generator): add report type selector component with styling and localization | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | c832ccc | feat​(report-generator): implement report generator state management with signals | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5d3bc52 | refactor​(i18n): add generating message for report in English and Spanish | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f532e02 | refactor​(report-generator): simplify component structure and remove unused code | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 0a1b7a4 | refactor​(report-generator): update layout and improve styling for report generation components | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | 92abb83 | feat​(i18n): add plans view keys for period toggle, features and banners. | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | c18b7d5 | style​(subscription): improve plan views. | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | 53dad22 | refactor​(subscription): redesign plans view with period toggle. | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 9c0b4de | docs​(report-generator): add documentation and improve structure for report generation | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | b1857a3 | refactor​(subscription): fix design colors. | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | 17adf3b | fix​(shared): lead the logo to the home page before signing in | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | d015e56 | fix​(shared): show a single toolbar on the about page and remove the unused toolbar | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | 0a286c9 | fix​(shared): open the dashboard from the not-found page when signed in | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | ee0f398 | refactor​(app): declare the dashboard route once and comment the routes in English | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | b7f7b3a | fix​(app): create the notification bell and user widgets only when they apply | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | ac5853e | docs​(diagrams): layout composed by the root component, without the toolbar | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | 46185d7 | docs​(changelog): restore Unreleased and record the changes since version 2.0.0 | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | 9f8b8f1 | docs​(changelog): record the icon-only view actions | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​shared-layout-regressions | ea065f7 | fix​(ca): show only the eye icon on the view detail and report preview actions | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​report-preview | 52061e7 | fix​(ra): generate a previewed report only once | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​report-preview | 953b44b | fix​(ra): download from the preview dialog and release its file | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​report-preview | 3704431 | fix​(i18n): add the close label of the dialogs and banners | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​report-preview | acf717e | fix​(ra): show again that the report was downloaded | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​report-preview | f348f8a | docs​(diagrams): report generator components and report preview | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​report-preview | d0a499b | docs​(changelog): record the report preview fix | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​audit-log-filters-import | caa54eb | fix​(ra): remove the unused icon button import of the audit log filters | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 8ee210e | feat​(i18n): add new translations for environmental summary states and hints | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 7a38e28 | feat​(environmental-profile): add Overview​Environmental​Profile entity with threshold configurations | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 92756ee | feat​(operational-overview): add conversion method for environmental profile resource | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | cccf808 | feat​(operational-overview): add environmental profile resource and threshold configuration interfaces | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 4b930d1 | feat​(operational-overview): add methods to fetch environmental profiles and container monitor profiles | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 325e181 | feat​(overview-environmental-profile): add methods to retrieve environmental and container monitor profiles | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | eae969e | feat​(kpi-dashboard): add environmental profile loading and management methods | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | c69caa8 | feat​(kpi-records): implement KPI records component with grid layout and navigation | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 1c878f2 | feat​(kpi-table): add environmental KPI table component with styling and data display | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 86d1287 | refactor​(kpi-dashboard): improve layout and styling of KPI dashboard components | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 451bfbe | feat​(kpi-summary-cards): add KPI summary cards component with grid layout and state management | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | 5bf2d80 | refactor​(subscription): improve payment success view. | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | d65c9a7 | refactor​(subscription): improve payment cancel view. | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | 6c7bdd8 | refactor​(subscription): improve checkout view. | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-subscription-view | e64858e | refactor​(subscription): improve billing sumary view. | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | afcd125 | refactor​(layout): group the sidebar navigation by importance | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f6bdbc4 | fix​(routes): delete double render of the layout in the bounded contexts | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 6d86f71 | feat​(package): add chartjs-plugin-annotation dependency | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 61957a8 | feat​(deviation-chart): add deviation chart component with styling and legend | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 05f3943 | feat​(deviation-events): add deviation events component with styling and template | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 80c38e4 | feat​(deviation-kpi-cards): add KPI cards component with grid layout and data bindings | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5af32a7 | feat​(deviation-detail-page): add detail page with layout, filters, and event listing | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | a1eafb0 | feat​(deviation-table): add deviation table component with styling and structure | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 545b574 | feat​(deviation-trend-chart): enhance trend chart with KPI cards, improved error handling, and empty state design | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 4c45251 | feat​(deviation-detail-page): add route for deviation detail page | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 8439d0a | feat​(deviation-chart): update chart legends and tooltips for localization | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5108a6d | feat​(deviation-localization): add localization strings for deviation details and charts in English and Spanish | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 6057746 | feat​(deviation-chart): implement Deviation​Chart​Factory for chart data and options creation | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f80aa6a | refactor​(deviation-trend-chart): simplify chart data and options creation using Deviation​Chart​Factory | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 344ac90 | docs​(changelog): add the alerts design foundation | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 204805d | feat​(ca): add alerts page header with tabs | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 59e528d | feat​(ca): add the chips of alert severity and status | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 8ca59ba | feat​(shared): add undo toast with progress bar | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 044aefb | feat​(shared): add all-environments option to environment selector | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | fe0e124 | feat​(shared): add relative time pipe and a single date format | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 82d42b8 | feat​(shared): add reusable status chip | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5cb6c0c | feat​(shared): add design tokens | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 013f24c | refactor​(deviation-events): enhance layout and structure of events card for better readability | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | c6a42d2 | refactor​(deviation-detail-page): improve layout and functionality of filters and loading state | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 4b49d45 | refactor​(deviation-trend-chart): enhance responsiveness and layout of trend chart components | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | ec04714 | refactor​(deviation-chart): enhance chart configuration separation and improve documentation | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 42b3596 | refactor​(kpi-dashboard): adjust empty state padding for improved visual balance | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 7f8bdda | chore: sync package-lock.json with new chartjs-plugin-annotation dependency | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 8d1b7a4 | feat​(ca): defer attention registration to allow undo | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 4acf55f | feat​(ca): refresh active alerts every 30 seconds | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 40d456b | feat​(ca): redesign active alerts as a prioritized inbox | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 7274c6b | feat​(ca): add alert card with lifecycle | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 2430feb | feat​(ca): load open alerts across all environments | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 5dcd5d2 | fix​(shared): show the whole environment name in the selector | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 6c782bf | feat​(shared): add title and actions to empty state | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 9e0763e | feat​(shared): add stat filter card and action banner | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | e25c60d | feat​(ca): add alert priority order and threshold excess | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 13e6f64 | docs​(changelog): add the active alerts inbox | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 34fa0bd | test​(ca): add browser checks of the active alerts | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | dc1a1f1 | feat​(ca): add corrective action templates | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | b906096 | feat​(ca): add alert timeline | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | d4128fe | feat​(ca): add keyboard shortcuts to the inbox | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 1b7d681 | feat​(ca): resolve staff names of the alert lifecycle | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 8a48103 | feat​(shared): add side panel | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 1c27cf5 | feat​(shared): add elapsed time pipe | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 074614a | refactor​(ca): remove the life cycle bar from the alert card | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f3e0338 | docs​(changelog): add the alert detail panel | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 43556b6 | test​(ca): add browser checks of the detail panel | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 9441b97 | refactor​(ca): replace deviation detail view with the panel | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 8a8cff8 | fix​(ra): read each environmental profile once and for the right device | The profile of a container monitor could be read from its environment when the equipment answered late, and the same profile was requested once per variable. It now waits for the equipment and asks… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 468040b | fix​(ra): draw only the configured limits in the deviation chart | A device without a profile showed invented limits (0-10-20) as if they were real, the axis started at zero so readings below it were lost, and the lower limits were not drawn. The chart now follows… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 31c4c84 | fix​(ra): name the device and the state in the environmental summary | The cards read a device name that does not exist, so two monitors could not be told apart, and the range labels were written in Spanish. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 3f5ab15 | fix​(ra): remove the fixed goal of the time in range | The card always said the 95% goal was met, whatever the value, and that goal is not defined in the report. Without enough readings the time in range is shown as unknown instead of 0%. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 765ee0a | fix​(ra): tell the limit each deviation event crossed | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | a3ab5a6 | fix​(layout): keep the side menu option active with query parameters | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 21cd262 | fix​(ra): fit the report generator and the period filters on phones | The generator overflowed by 276 px at 390 px. The message of an invalid period was a missing translation key; it now tells what is wrong with the period. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 9c7eb12 | style​(ra): write the comments in English | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 94baad0 | docs​(diagrams): alerts inbox, deviation views and shared components after v2.0.0 | Removes Deviation​Detail and the retired operations-page.css from the Compliance &amp; Alerts diagram. Validated with Plant​UML. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 5f59936 | docs​(changelog): record the changes since v2.0.0 | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 389b9bc | docs​(changelog): place the pull request numbers before the period | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | fe0e07c | fix​(ra): take the limit of each deviation event from the device profile | The platform does not keep the limits with the readings, so the events showed an empty limit against real data. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | d9113d2 | docs​(diagrams): limit of the deviation events and the alert history without the page header | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | ad3e640 | fix​(ra): show the worst state of the period in the summary cards | The state only looked at the average, so a refrigerator read Normal after reaching 13.9 °C. It now compares the minimum and the maximum with the limits, as the platform evaluates a reading. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 34e4073 | fix​(ra): follow the chosen language in the dates of the summary and the events | They always used the US format, so in Spanish 10/​5/​26 read as May 10. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​pre-release-review | 46e44c7 | docs: record the worst state and the dates of the summary | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.1.0 | 1a22e1c | chore​(release): prepare v2.1.0 | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | 77f2d30 | fix​(iam): send whoever has a session from the visitor pages to the dashboard | A session survives closing the browser, so the home page showed the signed-in user next to the sign-in button. The home page, sign-in, sign-up and password recovery are now only for visitors. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | de4c83e | feat​(ca): show the alert history under the page header of the alerts | The history had its own heading, while the active alerts have tabs. It also reads the environment of the address, which the tabs and the empty state of the inbox already send. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | 8a6c7ae | fix​(ca): read the alerts of a new environment as soon as it appears | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | f40d380 | fix: read the environments every time a view opens | Each context kept the first list it read, so an environment created in Laboratory did not appear until the page was reloaded. The views that also show dates change in the next commit. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | e8b6fac | fix​(subscription): tell how to switch plans | The plans sent the person to Billing to change plan, and Billing back to the plans, where the buttons are disabled because the platform cannot switch an active subscription. The texts now tell the… | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | 58d602c | refactor​(ra): type the components of the dashboard | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | 18a5873 | fix: show every date in one format that follows the language | Most views used the US format and the time zone of the browser, so in Spanish 10/​5/​26 read as May 10. They now use date​Time and the new date​Only pipe, which keeps a calendar day as it is. These views… | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | a92d7a7 | fix​(ra): fit the period buttons of the deviation indicators on small phones | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | 6c7831a | test​(e2e): bring the browser checks up to the current screens | Dashboard, inventory, report generator, onboarding, Stripe catalog and responsive were written for screens and endpoints that no longer exist. The checks that create accounts through the real API… | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | abee999 | docs: visitor guard, day pipe, alert history and browser checks | The README no longer describes a system test that is not in the repository. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | 9366d68 | docs​(changelog): record the session on the visitor pages and the pending work | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.2.0 | c0db82a | chore​(release): prepare v2.2.0 | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 211e696 | feat​(ca): filter the alert history by period, chips and search | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 0b754b1 | fix​(ca): count the custom period of the alert history in the days of Peru | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | a7a100d | fix​(ca): count the custom period of the alert history in the days of Peru | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | d7adf19 | feat​(ca): measure the attention and resolution times of the alert history | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 2ab6cfe | feat​(ca): count the alerts of the history by week and severity | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 9f25c55 | feat​(ca): read the alert history of one or every environment | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | cdd8cc8 | style​(ca): keep the format of the store and record the pull request | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 261a40b | feat​(ca): read the alert history of one or every environment | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | d9f2c96 | feat​(ca): keep the filter of the alert history in the address | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 10228c9 | feat​(shared): filter chip that tells how many results it leaves | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 8b5185d | feat​(ca): filter the alert history with chips, pages and empty states | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 1faac0b | feat​(ca): open the detail of an alert over the alert history | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 69ee39c | feat​(ca): show the metrics and the weekly trend of the alert history | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ca | 3b9886f | feat​(ca): export the alert history to the report generator | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | e20a0dd | refactor​(tracking): standardize visual styling and improve design consistency in the telemetry history view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3d99513 | refactor​(tracking): standardize visual styling and improve design consistency in the environmental profiles view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 016c865 | refactor​(tracking): standardize visual styling and improve design consistency in the environmental monitoring view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | bae829c | refactor​(tracking): standardize visual styling and improve design consistency in the threshold editor component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 8f0814a | refactor​(tracking): standardize visual styling and improve design consistency in the actuation rules editor component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 46cd5a1 | refactor​(shared): standardize visual styling and improve design consistency in the about view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 2113969 | refactor​(shared): standardize visual styling and improve design consistency in the home view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3860861 | refactor​(shared): standardize visual styling and improve design consistency in the page not found view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 65c3f2b | refactor​(shared): standardize visual styling and improve design consistency in the action banner component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 2ec2b98 | refactor​(shared): standardize visual styling and improve design consistency in the dashboard state component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3a1f853 | refactor​(shared): standardize visual styling and improve design consistency in the empty state component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b65d58f | refactor​(shared): standardize visual styling and improve design consistency in the environment selector component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 8dd5721 | refactor​(shared): standardize visual styling and improve design consistency in the error banner component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 9cf0d70 | refactor​(shared): standardize visual styling and improve design consistency in the filter chip component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 419c1f6 | refactor​(shared): standardize visual styling and improve design consistency in the language switcher component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | f710bc6 | refactor​(shared): standardize visual styling and improve design consistency in the layout component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 4fec610 | refactor​(shared): standardize visual styling and improve design consistency in the side panel component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | ea0e0de | refactor​(shared): standardize visual styling and improve design consistency in the stat filter card component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | a6171fe | refactor​(shared): standardize visual styling and improve design consistency in the status chip component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 42e1fda | refactor​(shared): standardize visual styling and improve design consistency in the undo toast component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b85b1b3 | refactor​(ra): standardize visual styling and improve design consistency in the audit log filters component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | c3b76e5 | refactor​(ra): standardize visual styling and improve design consistency in the audit log table component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 59fdc49 | refactor​(ra): standardize visual styling and improve design consistency in the dashboard alerts component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 6e4fdd9 | refactor​(ra): standardize visual styling and improve design consistency in the dashboard batches component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | ab24693 | refactor​(ra): standardize visual styling and improve design consistency in the dashboard subscription component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 9c5c986 | refactor​(ra): standardize visual styling and improve design consistency in the dashboard summary component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | f4ae4d8 | refactor​(ra): standardize visual styling and improve design consistency in the dashboard telemetry component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | bfc91c4 | refactor​(ra): standardize visual styling and improve design consistency in the deviation chart component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | d928492 | refactor​(ra): standardize visual styling and improve design consistency in the deviation events component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | a194b13 | refactor​(ra): standardize visual styling and improve design consistency in the deviation kpi cards component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 284a932 | refactor​(ra): standardize visual styling and improve design consistency in the deviation table component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | a0db915 | refactor​(ra): standardize visual styling and improve design consistency in the kpi records component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | a7ff76f | refactor​(ra): standardize visual styling and improve design consistency in the kpi summary cards component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 0445632 | refactor​(ra): standardize visual styling and improve design consistency in the kpi table component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 5d56708 | refactor​(ra): standardize visual styling and improve design consistency in the report parms form component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 6991470 | refactor​(ra): standardize visual styling and improve design consistency in the report preview dialog component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 0da49fe | refactor​(ra): standardize visual styling and improve design consistency in the report type selector component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | a396fa4 | refactor​(ra): standardize visual styling and improve design consistency in the audit log viewer view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b1a5a50 | refactor​(ra): standardize visual styling and improve design consistency in the dashboard view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 5a107f1 | refactor​(ra): standardize visual styling and improve design consistency in the deviation detail page view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | d34aa7a | refactor​(ra): standardize visual styling and improve design consistency in the deviation trend chart view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 99408d4 | refactor​(ra): standardize visual styling and improve design consistency in the kpi dashboard view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3ebdf20 | refactor​(ra): standardize visual styling and improve design consistency in the report generator view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | e3c5085 | refactor​(ra): standardize visual styling and improve design consistency in the staff activity view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | dec4071 | refactor​(profile): standardize visual styling and improve design consistency in the profile page view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 308842d | refactor​(profile): standardize visual styling and improve design consistency in the staff profile view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 73e29a6 | refactor​(profile): standardize visual styling and improve design consistency in the user profile badge component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | c5491be | refactor​(laboratory): standardize visual styling and improve design consistency in the environment form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3ae665a | refactor​(laboratory): standardize visual styling and improve design consistency in the environment list view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 7874f48 | refactor​(laboratory): standardize visual styling and improve design consistency in the lab form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | bfe1e7d | refactor​(laboratory): standardize visual styling and improve design consistency in the lab profile view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 0aa11bc | refactor​(laboratory): standardize visual styling and improve design consistency in the staff detail view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 2eb7053 | refactor​(laboratory): standardize visual styling and improve design consistency in the staff form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | cf6f47a | refactor​(laboratory): standardize visual styling and improve design consistency in the staff list view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3747bef | refactor​(inventory): standardize visual styling and improve design consistency in the inventory catalogue view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 8a8156b | refactor​(inventory): standardize visual styling and improve design consistency in the inventory detail view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 250cd76 | refactor​(inventory): standardize visual styling and improve design consistency in the inventory home view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | a8e070c | refactor​(inventory): standardize visual styling and improve design consistency in the legacy material detail view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 18324a1 | refactor​(inventory): standardize visual styling and improve design consistency in the register material view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 53597c4 | refactor​(iam): standardize visual styling and improve design consistency in the change password form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | dcf489c | refactor​(iam): standardize visual styling and improve design consistency in the onboarding view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | ed2d68d | refactor​(iam): standardize visual styling and improve design consistency in the password recovery view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 0cae9d1 | refactor​(iam): standardize visual styling and improve design consistency in the sign in form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | e96dd4b | refactor​(iam): standardize visual styling and improve design consistency in the sign up form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | f75c01d | refactor​(iam): standardize visual styling and improve design consistency in the authentication section component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 8e0f473 | refactor​(iam): standardize visual styling and improve design consistency in the user session section component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | c8ca29f | refactor​(equipment): standardize visual styling and improve design consistency in the bpm config view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 7308618 | refactor​(equipment): standardize visual styling and improve design consistency in the device form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b4bb7aa | refactor​(equipment): standardize visual styling and improve design consistency in the equipment detail view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 99d3eda | refactor​(equipment): standardize visual styling and improve design consistency in the equipment form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | d2087af | refactor​(equipment): standardize visual styling and improve design consistency in the equipment list view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 6261856 | refactor​(equipment): standardize visual styling and improve design consistency in the maintenance form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 9a2aaf9 | refactor​(ca): standardize visual styling and improve design consistency in the notification settings view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 8ed5dc3 | refactor​(ca): standardize visual styling and improve design consistency in the alert history view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 7c9e079 | refactor​(ca): standardize visual styling and improve design consistency in the alert dashboard view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 058481a | refactor​(ca): standardize visual styling and improve design consistency in the alert detail panel view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 50d58fe | refactor​(ca): standardize visual styling and improve design consistency in the alert card component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | e92c3d3 | refactor​(ca): standardize visual styling and improve design consistency in the alert history cards component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b55a14f | refactor​(ca): standardize visual styling and improve design consistency in the alert resolution form component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 64b6206 | refactor​(ca): standardize visual styling and improve design consistency in the alert table component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | e7e0b2e | refactor​(ca): standardize visual styling and improve design consistency in the alert timeline component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b60468d | refactor​(ca): standardize visual styling and improve design consistency in the alert week chart component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 12ed722 | refactor​(ca): standardize visual styling and improve design consistency in the alert page header component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 4f5c361 | refactor​(ca): standardize visual styling and improve design consistency in the notification bell component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 8b9c18e | refactor​(ca): standardize visual styling and improve design consistency in the notification preferences component. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 37f6262 | refactor​(batch): standardize visual styling and improve design consistency in the batch detail view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3a619b3 | refactor​(batch): standardize visual styling and improve design consistency in the batch form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | c83b3c0 | refactor​(batch): standardize visual styling and improve design consistency in the batch home view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 1109130 | refactor​(batch): standardize visual styling and improve design consistency in the batch list view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 6a2da94 | refactor​(batch): standardize visual styling and improve design consistency in the batch participants view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 46ece44 | refactor​(batch): standardize visual styling and improve design consistency in the batch redirect view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | dfedb84 | refactor​(batch): standardize visual styling and improve design consistency in the batch reject form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 2c7cef4 | refactor​(batch): standardize visual styling and improve design consistency in the batch release form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | f3a7a51 | refactor​(batch): standardize visual styling and improve design consistency in the batch storage view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 4906926 | refactor​(batch): standardize visual styling and improve design consistency in the batch traceability view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | fd4464e | refactor​(batch): standardize visual styling and improve design consistency in the product catalog view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 66c65ce | refactor​(batch): standardize visual styling and improve design consistency in the product detail view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | d44c8a8 | refactor​(batch): standardize visual styling and improve design consistency in the product form view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b0fb150 | refactor​(batch): standardize visual styling and improve design consistency in the raw material usage view. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | ed7dfd3 | refactor​(assets): adjust logo. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | f22de40 | feat​(inventory): add inventory summary component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 0968f00 | feat​(inventory): add raw material batches table component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 6337924 | feat​(inventory): add raw material form component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | adc8f21 | feat​(inventory): add receive batch form component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 196c016 | refactor​(inventory): refactor inventory detail view to use components | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 2e30d7e | feat​(inventory): add batch review form component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 8b1ec11 | feat​(inventory): add container assignment form component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | d19f75c | refactor​(inventory): refactor inventory detail view to use container assignment form component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 227eecf | feat​(inventory): add inventory movements table component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 5d065ab | refactor​(inventory): refactor inventory detail view to use inventory movements table component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | bc4e570 | feat​(inventory): add legacy material history table component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 3baa0ba | refactor​(inventory): refactor inventory detail view to use legacy material history table component | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 404a5cf | refactor​(inventory): remove unused styles for inventory detail view | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | d24242f | test: update the specs of the views that gained a link and an icon | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | fae9faf | fix​(laboratory): keep the actions of the staff and environment lists to quality managers | The plain tables stopped reading displayed​Columns, so operators and auditors saw actions the platform refuses to them. The empty message now spreads over the visible columns and the unused Material… | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | f8d0790 | fix​(ra): remove the cut rule at the end of the subscription section styles | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 8720bfa | fix​(shared): keep the application in Roboto | Rubik is never loaded, so the text fell back to the font of the system next to the Roboto of the Material controls. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b4b7dad | fix​(laboratory): project the icon of the register buttons in their content | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 7a71382 | refactor: remove what the breadcrumbs and the language check mark left unused | Also documents the refresh action of the product catalog like the rest of its class. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | b8f5875 | refactor​(style): use the design tokens for the colors of the component styles | The redesign wrote the colors by hand and left the tokens unused. Each color with a token goes back to it, and hover, soft, heading and subtle colors get their own, so a brand color changes in one… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 4d79356 | refactor​(style): remove the rules and custom properties that nothing uses | The --mdc-* and renamed --mat-* properties are not read by this version of Angular Material, and the removed rules need elements their own component does not have. They kept the largest stylesheets… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 6cc7872 | fix​(ca): keep the alerts readable on phones and tablets | The title no longer splits a word at 375 px, the sort options wrap instead of hiding the last one, the export link fits a small phone and the alert table scrolls inside its own area on every width… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 3eb2e8b | docs​(diagrams): remove the compact signal of the language switcher | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | f3a1cf0 | fix: keep the words of the product, staff and raw material tables whole on a tablet | The actions of the product catalog wrap, the staff table keeps its names readable and its last columns reachable, and the tables of a raw material scroll inside their tab. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 025ff6c | docs​(changelog): record the redesign of the views and its review | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 2c2fb91 | docs​(changelog): name the batch context as the rest of the file | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​page-titles | 5d1c0c2 | docs​(diagrams): add the title strategy to the shared layer | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​page-titles | fdf9b1f | fix​(shared): keep the browser tab on the title of the current page | Angular only updates the title when a route defines one, and most routes did not, so the tab kept the title of the previous page. Every page route now has a title that is a translation key.… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​page-titles | 40b9b24 | docs​(changelog): record the titles of the browser tab | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | 5fcbe5c | fix: give room to the long texts that real data showed | Long names in the alert history, the container action of a raw material and the metric of a threshold split a word. The alert table now also fits a 1366 px laptop next to the side menu. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​alert-view-eye | 401770a | fix​(ca): show only the eye on the view action of the alert history | The action went back to the word View with the filters of the history. An eye action shows the icon alone, with its words as label and tooltip. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​alert-view-eye | f590c72 | docs​(changelog): record the eye of the alert history | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​alert-view-eye | 50699f2 | refactor​(ca): remove the styles of the old text action of the alert table | The eye keeps its visible focus. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | c7d9988 | feat​(inventory): add inventory material table component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 16f3c91 | refactor​(inventory): refactor inventory catalogue view to use inventory material table component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 2d87892 | feat​(inventory): add near expiry table component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | a0d8e85 | refactor​(inventory): refactor inventory catalogue view to use near expiry table component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 0da9381 | feat​(inventory): add inventory filters component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | d802717 | refactor​(inventory): refactor inventory catalogue view to use inventory filters component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 2eebee0 | feat​(inventory): add legacy import panel component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | dd63b59 | refactor​(inventory): integrate legacy import panel component into inventory catalogue view | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 0eec596 | feat​(inventory): add legacy material summary component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | db3e628 | feat​(legacy-material): integrate legacy material summary component into legacy material detail view | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | b185333 | feat​(consumption-history): add legacy consumption history table component | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | cf07f1a | feat​(inventory): integrate legacy consumption history table component into legacy material detail view | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 707844a | fix​(inventory): preserve success notification after data refresh | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 7a35422 | fix​(inventory): clear state when switching environments | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 5b2a435 | refactor​(inventory): organize inventory api endpoint dependencies | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 8636425 | refactor​(inventory): remove unused container name method | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | d66d95c | feat​(subscription): preselect the plan chosen on the website | A guard remembers the plan and billing cycle of the link. The plans view sends an account without a subscription straight to the checkout of that plan, leaving the checkout drops the choice, and… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 546051d | fix​(subscription): explain the conflict of an account that already has a subscription | A 409 on the checkout showed a generic English message. It now shows the already-active notice, translated, and keeps the chosen plan. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 025b50a | docs​(changelog): record the plan preselection | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 6b6e259 | docs​(changelog): record the sign-up plan link | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 8c94bd8 | feat​(iam): keep the plan chosen on the website through sign-up | The sign-up route runs plan​Preselection​Guard before visitor​Guard, so the plan of the link is remembered even when someone who is already signed in is sent to the dashboard. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | f698e42 | docs​(changelog): record the plan switch notice | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 463efcd | feat​(ra): inform about switching plans from the dashboard | An account with an active subscription that arrives with another plan chosen on the website sees a notice with both plans, the end of the paid period and a link to Billing. It appears once and… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | b6c7090 | fix​(inventory): bring the redesign to the components of the views | The components came from before the redesign, and the styles of a view do not reach its components, so they would have lost the cards, the status labels and the tablet fix. Each one now has the… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 65f7d51 | docs​(diagrams): add the components of the inventory views | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | b0ccf30 | test​(inventory): cover the components of the views and the corrections of the store | Also removes legacy​Detail​Batch​Label, unused since the history table names its batches, and declares every endpoint of Inventory​Api before its constructor. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | 1bbbee3 | docs​(changelog): record the components of the inventory views | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​context-boundaries | 78baa4f | fix​(inventory): stay where you went when leaving the inventory home while it loads | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​context-boundaries | 5975c46 | refactor: compose subscription with iam and ra from the root routes | The sign-up route and the dashboard imported code of subscription. The root routes now run the guard of the plan link before the pages of iam, and hand the dashboard the notice to render, as they… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​context-boundaries | 3b7fee4 | fix​(batch): stay where you went when leaving a batch redirect while it loads | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​context-boundaries | 29d4dc7 | docs​(changelog): record the composition of subscription and the redirects | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​alert-history-dates | f914bf9 | fix​(ca): do not draw centuries of weeks in the alert history, and ignore days that do not exist | The browser reports a date with every digit of its year, so typing one asked the weekly chart for 95,178 weeks. A period longer than about two years now starts at its oldest alert. An impossible day… | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​alert-history-dates | 0aa37fd | fix​(ca): say that the report does not follow the chips of the alert history | A date being typed no longer leaves a step per digit in the browser history, and the size of a page in the text under the table comes from its constant. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​alert-history-dates | 6848dd7 | docs​(ca): add the alert history as it is to the diagrams | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​alert-history-dates | 9fee1d4 | docs​(changelog): record the fixes of the alert history | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | 09da53a | feat​(batch): keep the staff names in the batch store | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | 4770b89 | feat​(batch): add status chips, list filters and timeline builder | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | 6172bed | feat​(batch): add indicator, filter, table, status and timeline components | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | 1d20f47 | feat​(batch): redesign the batch list with indicators, filters, sorting and pagination | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | 768c0a0 | feat​(batch): redesign the batch detail heading and summary | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | fa0ad4f | feat​(batch): show the decision, timeline and record tables in the traceability | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | fc0da99 | feat​(i18n): add the texts of the batch redesign | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 31b3a02 | fix​(inventory): normalize raw material search | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | df28bcf | fix​(inventory): prevent stale filter responses | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 1cb4460 | fix​(inventory): fix refresh active catalogue filters | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | d80a7a8 | feat​(inventory): add inventory catalogue stats component | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | ca4b610 | refactor​(inventory): integrate stats component into inventory catalogue view | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | c878b2f | refactor​(inventory): extract home page template | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | 688ad2f | feat​(batch): filter the batch list by text, environment and a start date range | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​batch-redesign | 257fd1c | style​(batch): widen the usage environment and lighten the detail text | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | 982d1b8 | fix​(inventory): say the low stock and the lots near expiry are loading | Since the low-stock filter turns on before its answer arrives, the catalogue said "No materials match this view." until then, and the near-expiry panel said that no lot expires soon. The store now… | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | a4add6a | test​(inventory): cover the request guards, the reload and the catalogue stats | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | 205d028 | fix​(batch): give the product and environment the whole width of the summary on a phone | Two columns of about 140 px cut the names in the middle of a word, such as PROD-SOL-01. | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | a197ac8 | fix​(batch): open the start date calendar from anywhere on the field | On an empty field the label covers the read-only days, so a click on it did nothing; only the icon or Alt+Down opened the calendar. | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | 2ca6038 | feat​(batch): choose the order of the batch list on a phone | The cards of a phone hide the headers that sort the table, so two lists above them choose the column and the direction. They share the order of the headers. | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | 9933011 | docs​(diagrams): add the batch list components and the inventory request guards | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | f2d68a3 | docs​(changelog): record the batch redesign, the inventory catalogue and their review fixes | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​retired-stylesheet-diagrams | c3d2c4c | docs​(diagrams): drop the retired shared stylesheet from laboratory and profile | operations-page.css was removed in #54; Staff​Detail and Profile​Page own their styles through style​Url. The laboratory diagram only drew the dependency, so Plant​UML made an undeclared Operations​Page… | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​plans-current-plan | fc817ae | docs​(diagrams): add the current plan of the plans view | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​plans-current-plan | 30c3244 | fix​(subscription): keep the notice icon of the plans view whole | The icon of the already-active notice shrank in its flex row: 19 px at 800 px, 8 px at 375 px and 6 px at 320 px. | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​plans-current-plan | 343d4e4 | fix​(subscription): mark the paid plan and lead the other plans to Billing | While the laboratory pays for a plan, the backend refuses another checkout, so the plans view disabled every Get button. After the redesign they looked like ordinary grey buttons that did nothing,… | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​plans-current-plan | 03fb1af | docs​(changelog): record the current plan of the plans view | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.3.0 | 5e73a07 | chore​(release): prepare v2.3.0 | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​billing-period-start | 5a57ad3 | fix​(subscription): name the start of the current period in the billing summary | The billing summary showed current​Period​Start as "Started At", so after the renewal of 2026-11-04 the subscription of SENKA LAB, paid since 2026-10-04, seemed to have started that day. | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​billing-period-start | 78036ac | docs​(changelog): record the label of the current period | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.4.0 | 52d7025 | chore​(release): prepare v2.4.0 | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​select-batch-redesign | 4919024 | feat​(shared): add an inline appearance to the environment selector | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​select-batch-redesign | 1721a29 | style​(batch): show the environment under the product catalog title | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​select-batch-redesign | 88e403b | style: show the environment under the title in inventory, tracking and reports | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​select-batch-redesign | 6982508 | style​(ca): show the environment under the alerts title | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​select-batch-redesign | d9df161 | style: add more space between the page title and the environment selector | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | c93aed6 | refactor​(inventory): organize catalogue and near-expiry views into tabs | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 4e49d4b | style​(inventory): improve catalogue tabs layout and responsiveness | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 1eb4f2d | test​(inventory): update catalogue tests for tab navigation | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-environment-views | 9a0e666 | feat​(equipment): add edge gateway and coverage support to the API and store | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-environment-views | c96b6ce | docs​(equipment): update frontend diagram and changelog | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-environment-views | 5124917 | feat​(equipment): add edge gateway and environment texts in en and es | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-environment-views | acb75e1 | feat​(equipment): register edge gateways and issue their API key | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-environment-views | e06f942 | feat​(equipment): add environment equipment view and list filters | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-environment-views | c89c346 | fix​(equipment): polish edge gateway views after local testing | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​equipment-environment-views | 1fa981b | fix​(equipment): hide BPM limits in the edge gateway detail | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | abf7e39 | style​(ui): unify forms, header and empty states across the app | - Load Roboto 600/​700 so bold text is no longer synthesized by the browser - Give every header control the same 40px height and a compact language switcher - Show the logo in the mobile toolbar when… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 96996ad | feat​(shared): add the shared table style and paginator | - Move the table format of the production batches to the global styles: card, muted uppercase headers, roomy rows and one card per row on phones - Add paginate​() and app-table-paginator: ten rows per… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | bca6cbf | refactor​(ca): page the alert history with the shared paginator | The alert table shows ten alerts per page with the shared paginator, which replaces the history pager of 25 alerts and its texts. The page is no longer read from the address. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 3873e37 | refactor​(batch): give the batch tables the shared format and paginator | Products, product batches, participants, traceability and raw material usage use the shared table card and show ten rows per page. Their local table rules, now global, are removed. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | b1363b4 | refactor​(equipment): give the equipment tables the shared format and paginator | The equipment list and the gateways, devices and equipment of an environment show ten rows per page with the shared table card. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 152f925 | refactor​(laboratory): give the environment and staff tables the shared format | The environments and the staff of the laboratory show ten rows per page with the shared table card and paginator. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | b7a7223 | refactor​(inventory): give the inventory tables the shared format and paginator | Materials, movements, receipts, near-expiry lots and the legacy histories show ten rows per page with the shared table card. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 4d55dc7 | refactor​(subscription): give the payments table the shared format and paginator | The payments of the billing summary show ten rows per page with the shared table card and the field names for the phone cards. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 5d21a80 | refactor​(ra): give the report tables the shared format and paginator | The audit log, deviation, KPI and staff activity tables use the shared table card and show ten rows per page. The Material tables get the field names for the phone cards, and their local header and… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | e9a4e34 | refactor​(tracking): give the telemetry history tables the shared format | The readings and the actions of a device show ten rows per page with the shared table card and paginator. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 4a7e511 | style​(ui): stretch the environment selector to the full width on phones | - The inline environment selector takes the whole width on phones, like the buttons under it, with the chevron at the end - Its width no longer comes from the name, so a long name is cut instead of… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 21b32b2 | feat​(ca): redesign the inbox of active alerts as compact rows | - The alerts are compact rows grouped by severity, each with the reading drawn against its limit, how long it has been open, who has it and one main action; notifying and the detail move to a menu -… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 7e7fa29 | feat​(ca): guide the alert detail through its next step | - The detail shows only the step the alert is in: registering attention while nobody has it, then the corrective action - Notifying moves next to "View conditions" among the secondary actions - The… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | c4a60c7 | feat​(ca): lighten the alert history filters and table | - The period and the search stay in sight; severity, status and origin wait behind "More filters", which counts the ones in use and opens by itself when an address brings them - The table goes from… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | c5904d6 | fix​(ca): wrap the inbox chips on phones | The chips scrolled sideways on a phone and hid the last ones; they now wrap to a second line so every filter is in sight. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 1b7cd78 | test​(ca): update the alerts browser test to the redesigned module | - Read the urgent count from the red chip instead of the banner, and check the groups by severity - Open an alert from the title of its row, and tell who has it from the owner of the row - Check the… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | fd4e7b4 | fix​(ca): drop the tab count and the order by environment of one environment | - The tab of the active alerts no longer shows how many there are; the chips of the inbox already count them - With one environment chosen, the inbox stops offering to order by environment and orders… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | a4ded1f | style​(ui): give every page the same container and heading buttons | - Inventory, reports, alerts and the report generator use the container of the rest of the pages: 1200px wide with 32px 24px 48px around it, so the title starts in the same place on every page - The… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 9e0650d | style​(ui): give every heading the same structure | - Each page heading is the icon and the title, its description, then the environment it shows; deviation indicators, telemetry, monitoring and the environmental profiles put the description first now… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | cb853a3 | style​(ui): give every register button the same look | - Every form that registers something ends with the same green Register button with the save icon: equipment, Io​T devices, Edge Gateways, staff and raw materials join products, batches, environments… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | bf31831 | feat​(shared): add the shared page header and list toolbar, starting with alerts | - app-page-header: the icon and the title, with only the time of the last update and the refresh button next to it, and the operations of the module as tabs under it - app-list-toolbar: the context… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 920d2da | feat​(batch): give products and batches the shared header and toolbar | - Products and batches are the two tabs of the module, instead of buttons that lead from one to the other - Batches: the environment in the first row; the batches of each status as chips with their… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | ee0b4a5 | feat​(equipment): give the equipment list the shared header and toolbar | - The environment and the three ways to register in the first row - The kinds of equipment and the equipment in maintenance or out of service as chips with their counts, which replace the summary… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 072872d | feat​(inventory): give the inventory the shared header and toolbar | The catalogue and the near expiry list become tabs of the header, next to the refresh. The toolbar holds the environment with Previous balances and New material at its right end, then the All /​ Low… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | ad11785 | feat​(laboratory): give the laboratory pages the shared header and toolbar | Profile, Environments and Staff become tabs of one header with the refresh next to the title. Environments get Register environment at the right end, usage chips with their counts and a search by… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 32582d8 | feat​(tracking): give the tracking pages the shared header and toolbar | Monitoring, History and Profiles become tabs of one header with the refresh next to the title. The environment sits in the toolbar of each page, and the device, metric and period of the history query… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | fd07311 | fix​(shared): keep long page titles whole on phones | The time of the last update folds into two short lines and the title gets a little smaller under 420px, so words like Environmental no longer break or run under the time. Below 360px the time moves… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 1c608a5 | feat​(reports): give the reports pages the shared header and toolbar | Summary, Deviations, New report and Audit log become tabs of one header with the refresh next to the title. The environment sits in the toolbar, the periods become chips in its foldable row, and the… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | a6a289c | fix​(shared): make the toolbar search a search field | Screen readers now announce it as a search box, and the browser's own clear button is hidden because the field already has its ×. The alerts browser checks open the foldable filter row instead of the… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | cc18e01 | style​(alerts): put the history search on the left, under the filters | The chip groups fill the filter row, so the search drops to a line of its own; it now starts on the left like the groups above it. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 1bfb346 | fix​(reports): hide View last 31 days when the summary already shows them | The empty summary offered to widen the period even when 31 days was the period chosen, so the button did nothing. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | cd3b163 | feat​(shared): show the subtitle of each page right under its title | The page header takes a subtitle​Key and shows it between the title and the tabs. Environments, staff, batches, tracking, reports, the report generator and the alert preferences use it instead of a… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 6b1fced | style​(laboratory): align the register icon and give Save the same look | The save icon of Register in the staff and laboratory forms sat inside a wrapper, so Material could not place it next to the text and it showed crooked. Save Changes of the laboratory profile gets… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | d774cc5 | style​(home): keep the text and the image together on wide screens | The hero spread over the whole width with the image pushed to the right edge, so the gap between them grew with the screen. Both now sit in a centered band of at most 1280px, and the extra width… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 5bec886 | test​(reports): provide the router to the audit log viewer spec | The page now opens with the shared header, whose tabs are router links, so the component needs Activated​Route. The CI unit tests failed on it. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | b204fd5 | style​(ui): use Rubik, the typeface of the style guide | The Quali​Track style guide sets Rubik from Light to Extra​Bold for the platform, as the website already uses. The page, the Material theme and the font loaded from Google Fonts switch from Roboto to… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 13c984b | style​(home): make the hero image float like the one of the website | The image rises 10px and back every 3 seconds, the same animation as the website, and stays still for people who prefer reduced motion. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 8f5def5 | style​(layout): keep the logo apart from the name on phones | The space between the logo and the name dropped from 12px to 8px under 768px, so they looked stuck together; it now stays at 12px, like the header of the website. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 72ad322 | style​(alerts): drop the live dot from the page header | The active alerts said Live with a green dot next to the refresh. The header now says only when the data was updated, like every other page; environments that could not be read keep their own message… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | ca042c6 | fix​(shared): keep words whole in the tables and let a wide table scroll | The shared table style of #105 let every cell break anywhere, so the browser shrank short columns below their words: at 1366 px the equipment status read "Operationa\|l", the staff access "Operato\|r"… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | 0f2a581 | fix​(equipment): read the Edge Gateway API key status only as a quality manager | The platform answers the API key status only to quality managers and administrators, but the detail of an Edge Gateway asked for it with every role: operators and auditors got a 403 and a card saying… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | cc86a08 | fix​(ca): keep the alert gauge right with negative temperatures | The gauge compared the absolute values of the reading and the limit, so a freezer at -10 °C with a maximum of -15 °C showed its fill before the mark, as if the limit had not been passed. The scale… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | c969baa | fix​(equipment): list the devices of an environment when its coverage cannot be read | The environment view read its equipment and its Edge Gateway coverage together, so a failure of the coverage alone left only an error: against the deployed platform, which does not have the coverage… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | 768fa97 | test: follow the Register button of the material form and say how to run the alerts checks | - The inventory browser test looked for a Save button, but #105 named the main button of the material registration Register like every other form, so the test stopped at it. It now uses… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | 0a6f303 | refactor​(shared): remove the stat filter card that no view uses | Since #105 the alert inbox and the batch indicators use Filter​Chip, so Stat​Filter​Card, its styles and its spec were left without any user. | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | 352e56a | fix​(i18n): shorten the alert and equipment search placeholders so they show whole | At 1366 px the search of the active alerts had 176-183 px for "Search device or variable" /​ "Buscar dispositivo o variable" (187 and 212 px), and the equipment search 272 px for "Search by name,… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | d69655b | docs​(diagrams): bring the frontend diagrams up to date with #101-#106 | - shared: Page​Header with Page​Tab, List​Toolbar, Table​Paginator with Table​Page and paginate​(), Setup​Notice, group​Error​Matcher​(), the inline appearance of Environment​Selector and the tone of… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | 375840b | docs​(changelog): record #101-#106 and the fixes of the review | The Unreleased section only had the Edge Gateway entries of #103, without their PR number. It now records the inline environment selector (#101), the inventory tabs (#102), the shared header,… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.5.0 | 9dbe564 | refactor​(components): remove unused kpi-records component | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.5.0 | 21770d5 | refactor​(report-params-form): enhance layout and styling for improved usability | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.5.0 | cd07ce1 | refactor​(kpi-dashboard): remove unused kpi-records component and clean up template | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.5.0 | d5c0543 | refactor​(kpi-dashboard): adjust loading and error padding for improved layout | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.5.0 | 0caca76 | refactor​(report-generator): simplify styles by removing padding and borders | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​reports-empty-states | 5f14022 | chore​(i18n): remove the texts of the laboratory records section | #108 took the laboratory records (equipment, batches and open alerts) out of the environmental summary; its eleven texts are no longer used. | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​reports-empty-states | d448d8a | fix​(ra): keep the loading and empty states of the reports on screen | #108 gave the loading and the empty states of the environmental summary and of the deviation indicators 250 to 360 px of padding. At 1366x768 and on phones the message and the spinner were left below… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​reports-empty-states | f63742b | docs​(ra): remove the laboratory records component from the frontend diagram | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​reports-empty-states | 2785568 | docs​(changelog): record #108 and #109 | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | release/​v2.5.0 | a55b409 | chore​(release): prepare v2.5.0 | — | 13/11/2026 |

**Cloud REST API (Backend)** ([IoTech-2620-8741/qualitrack-platform](https://github.com/IoTech-2620-8741/qualitrack-platform))

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | 3c8febd | refactor​(ca): use the compliance clock in Ca​Command​Service​Impl | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | c348649 | test​(ca): cover deviation alert command handling | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | 6df850e | refactor​(ca): date compliance events with the shared clock | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | 1dc34a5 | refactor​(ca): use imports instead of qualified names | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | 5d07cf0 | feat​(ca): add email preference check | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | 181c0a3 | feat​(ca): add reject resolution notes longer than 500 characters | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | b3b98e8 | test​(ca): add test Alert​Lifecycle | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | aa45907 | feat​(ca): add create deviation alert | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | bd451f6 | test​(ca): add test from deviation alert | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | 6bad689 | feat​(ca): add keep invalid deviation events from failing telemetry ingestion | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | eb2125c | feat​(ca): add Deviation alert in persistence | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | 8f045e9 | feat​(ca): add rest in interface | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | docs/​changelog-and-license | 6122e75 | docs​(readme): link the changelog and the license | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | docs/​changelog-and-license | 450c28f | docs​(changelog): add the history of the platform since version 0.1.0 | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | docs/​changelog-and-license | 5cea025 | docs​(license): add the Quali​Track proprietary software license | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | docs/​changelog-and-license | 9870abe | docs​(changelog): record the changelog and license pull request | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-ra-facades | 9491079 | feat​(batch): share batches and their recorded material uses through the facade | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-ra-facades | 3551c67 | feat​(equipment): share the laboratory equipment and the equipment log through the facade | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-ra-facades | 73301f1 | feat​(laboratory): share the laboratory name through the facade | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-ra-facades | 3e937f0 | feat​(ca): share the alerts of a batch and of a set of devices through the facade | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-ra-facades | 29a514d | refactor​(ra): read batches, equipment, alerts and laboratory names through their facades | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-ra-facades | c37f38c | docs​(diagrams): reporting reads operational data through the facades | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-ra-facades | 3e5907c | docs​(changelog): reporting reads operational data through the facades | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 65633f1 | refactor​(batch): read container names through the equipment ACL service | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 0b488bd | refactor​(inventory): read legacy raw materials and container names through its ACL services | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 9df52b2 | refactor​(laboratory): create the laboratory through the IAM and subscription ACL services | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 035a9fe | refactor​(subscription): lock the account through an IAM ACL service in the Stripe webhook | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 0bfb82f | refactor​(tracking): translate the equipment devices into its own model | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 7236283 | refactor​(ra): read usernames and environments through its ACL services | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 9c8841f | docs​(diagrams): facades used only through the ACL services | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-external-services | 7e1cc54 | docs​(changelog): facades used only through the ACL services | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | 515805e | refactor​(inventory): stop validating product batches through the Batch facade | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | 46086c2 | refactor​(batch): lock and check the batch before Inventory consumes the lot | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | 0522a20 | refactor​(laboratory): remove the unused compliance ACL service; CA listens to the low stock event | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | 6da4fa2 | refactor​(ca): remove the low stock method of the facade, replaced by the integration event | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | 59b5676 | feat​(laboratory): rename the staff member of an account through the facade | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | b2babd3 | refactor​(profile): rename the staff member through the Laboratory facade instead of an event | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | ee3e1aa | docs​(diagrams): relations in the direction of the context map | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-inverted-relations | 03af4bd | docs​(changelog): relations in the direction of the context map | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-iam-onboarding | 9faa13b | refactor​(iam): read the subscription access through an ACL service and stop checking the laboratory | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-iam-onboarding | 0021003 | docs​(diagrams): IAM onboarding through its subscription ACL service | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-iam-onboarding | 4b8860d | docs​(changelog): IAM onboarding through its subscription ACL service | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | a19f23c | feat​(shared): expose the laboratory of the current user | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 8d79925 | refactor​(iam): controllers read the current user through the shared port | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 7e1b54b | refactor​(subscription): the checkout reads the current user through the shared port | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 608148f | refactor​(laboratory): the onboarding returns a Result and reads the current user through the shared port | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 5aad40e | refactor​(inventory): the legacy import returns a Result | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 7efab2e | refactor​(inventory): name the JPA entities *Persistence​Entity | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | a189143 | refactor​(ra): event handlers use the audit command service and the facade takes the action as text | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 90f5d58 | refactor​(ca): facade as an interface implemented in application/​acl | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | a68ad68 | refactor​(iam): facade as an interface implemented in application/​acl | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | ef695f6 | refactor​(profile): facade as an interface implemented in application/​acl | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 42c00b2 | refactor​(subscription): facade as an interface implemented in application/​acl; plan code as text | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 4adb16d | feat​(shared): error messages in Spanish for Accept-Language: es | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 0dd14f2 | docs​(diagrams): tactical consistency of the bounded contexts | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tactical-consistency | 833562b | docs​(changelog): tactical consistency of the bounded contexts | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​env-example | bae9930 | docs: add .env.example with the environment variables of the API | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​env-example | e26e111 | docs​(changelog): add .env.example | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tests-by-package | 074bd9c | test: organize the tests by bounded context and layer | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tests-by-package | 9b41d45 | docs​(changelog): tests organized by bounded context and layer | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 5acb779 | feat​(inventory): add rest annotations of inventory controller | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​password-recovery-attempts-lock | a543e33 | test​(iam): reproduce the password recovery attempts race | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​password-recovery-attempts-lock | 656146e | fix​(iam): lock the password recovery while counting failed attempts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​password-recovery-attempts-lock | f465568 | docs​(changelog): password recovery attempts lock | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 2da7676 | feat​(inventory): update raw material command contracts | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 1f8e48a | feat​(inventory): specify inventory query contracts | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | a0656d1 | feat​(inventory): add inventory persistence contracts | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | fba4f57 | refactor​(inventory): refactor usable stock method of raw material aggregate | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | bed764e | refactor​(inventory): refactor methods for change status and quality review of raw material batch aggregate | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 3879786 | refactor​(inventory): update inventory context facade service | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 56e4f1f | refactor​(inventory): refactor imports of receive raw material batch command | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 746bf87 | refactor​(inventory): refactor imports of review raw material batch command | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | b118e1b | refactor​(inventory): refactor imports of save raw material command | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 340f4c0 | doc​(inventory): add documentation for commands | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 5d481b6 | refactor​(inventory): refactor imports of inventory external laboratory service | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | fc1c293 | refactor​(inventory): update imports for inventory import service implementation | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 5acccab | refactor​(inventory): update imports for inventory receipt persistence entity | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | eed299d | refactor​(inventory): update summary method to use reference date for stock calculations | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 7f8f5a4 | refactor​(inventory): extract review decision logic into separate method | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 8393966 | refactor​(inventory): simplify expiration filter logic in inventory query service implementation | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | a40b6f4 | refactor​(inventory): simplify legacy opening balance date calculation | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.1.0 | c6200d3 | docs​(changelog): REST API tests RUC range | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.1.0 | 8e7092b | test​(shared): give the REST API tests their own RUC range | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | f522fba | refactor​(inventory): organize inventory query service imports | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 8ae97d6 | refactor​(inventory): refactor stock summary and expiry rules | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 9080196 | refactor​(inventory): refactor persistence assemblers | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | e1b1c6c | refactor​(inventory): add repository method overrides | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 48604e9 | refactor​(inventory): simplify text validation in inventory command service implementation. | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | b092c3f | refactor​(inventory): add inventory query service overrides | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 1b9fcbd | refactor​(inventory): organize query interface imports | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | b70501c | refactor​(inventory): replace persistence repository wildcard imports | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | b764b41 | refactor​(inventory): extract container assignment mapping | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch | d590e76 | test​(batch): cover the batch commands, decisions and storage | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch | bcfffee | test​(batch): cover the laboratory batch list, invalid requests and rejected traceability | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch | d7e6264 | docs​(batch): document the laboratory batch list | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-environment-devices | 35bd2b0 | feat​(equipment): list the equipment of an environment for its edge | GET /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments returns the equipment of one environment, and ?iot=true keeps only its Io​T devices, so the Edge reads its own nodes instead of… | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-environment-devices | 20f4ef5 | feat​(equipment): query the equipment located in an environment | Adds Get​Equipment​By​Environment​Id​Query with an optional Io​T-only filter and checks through the Laboratory ACL that the environment belongs to the laboratory. | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-environment-devices | a0eff4a | docs​(changelog): environment equipment list and equipment docs | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-environment-devices | e96b6ba | docs​(equipment): document the value objects, converters and tenant lookup | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-environment-devices | 104f6f3 | test​(equipment): cover the equipment list of an environment | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​backend-review | 6aeb1be | refactor​(inventory): remove the ignored Swagger tag and keep the getter annotation on its own line | Root​Resource​Tag​Customizer replaces the tags of every operation with the root resource of its path, so the Inventory Management tag of Inventory​Controller never reached Swagger UI. | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​backend-review | a51e27b | docs​(changelog): record the inventory changes and number the latest entries | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​backend-review | 50fb04c | docs​(diagrams): add the environment equipment list and the locked password recovery | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​renewal-payments | dd74b86 | docs​(diagrams): add the Stripe webhook service and the renewal payments | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​renewal-payments | f26ddfb | fix​(subscription): record the payment of each renewal from invoice.paid | Only the checkout recorded a payment. Stripe charges every later period through an invoice, and the webhook only listened to customer.subscription.updated, which moves the period but carries no… | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​renewal-payments | 1c0aa55 | docs​(changelog): record the payments of the renewals | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.1.0 | 7d87fc6 | chore​(release): prepare v1.1.0 | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 2216ae7 | feat​(equipment): register edge gateways and enforce environment uniqueness | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | f1e0330 | feat​(equipment): expose edge gateway registration api | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 4278844 | feat​(equipment): expose edge gateway identity through facade | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | c537dac | feat​(iam): persist edge gateway api key hashes | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 426b68d | feat​(iam): implement edge gateway api key service | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | e6e4b95 | feat​(iam): expose edge gateway api key endpoint | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 020c727 | feat​(iam): validate edge gateway api key credentials | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 8784264 | feat​(iam): add edge gateway api key authentication filter | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 52099c2 | feat​(iam): secure edge gateway routes | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 6c2639c | feat​(equipment): expose gateway assigned iot devices | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 93e9184 | feat​(tracking): ingest telemetry from authenticated edge gateways | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​edge-gateway | 4b54a17 | feat​(tracking): support edge gateway profile and actuation synchronization | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-edge-gateway-capacity | fa5d519 | feat​(iam): report whether an edge gateway has an API key | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-edge-gateway-capacity | ebb5e77 | feat​(equipment): distribute environment devices among edge gateways | An Edge Gateway serves 15 Io​T devices at most. The devices of an environment are taken by identifier among its Gateways, and the coverage endpoint tells how many are left without one. | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-edge-gateway-capacity | 8926998 | docs​(equipment): record edge gateways in changelog and backend diagram | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-edge-gateway-capacity | 700138c | test​(equipment): cover edge gateway allocation, device registry and coverage | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-edge-gateway-capacity | d792515 | feat​(equipment): allow several edge gateways per environment | Locating a second Edge Gateway in an environment no longer answers 409: the devices beyond the first 15 go to the next Gateway. | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | e196282 | fix​(ca): keep the compliance facade as the interface from develop | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | fb8dbd6 | feat​(tracking): add the device connection value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | bfa0c35 | feat​(tracking): add the actuation result value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | ba3a0e9 | feat​(tracking): add the actuation action value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 31e389b | feat​(tracking): add the environmental threshold value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 4f0d975 | feat​(tracking): add the environmental state value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 4172229 | feat​(tracking): add the monitored metric value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | cc51794 | feat​(tracking): add the monitored device value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | a8bfd31 | feat​(tracking): add the expected communication period value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 660a128 | feat​(tracking): add the measurement entity | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | ee7c828 | feat​(tracking): add the actuation event entity | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | c2338f9 | feat​(tracking): add the profile scope value object | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 29ac15c | feat​(tracking): add the record actuation event command | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 7b47be8 | feat​(tracking): add the environmental profile aggregate | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 439030b | feat​(tracking): add the update actuation rules command | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 7ee4fcd | feat​(tracking): add the shared argument checks of the commands | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 31b0efc | feat​(tracking): add the record measurement command | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 61d7543 | feat​(tracking): add the update environment thresholds command | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | f3703e5 | feat​(tracking): add the update container monitor thresholds command | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | ec4536f | feat​(tracking): add the get device connection query | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 2a5458a | feat​(tracking): add the get container monitor profile query | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 3d7c51f | feat​(tracking): add the get actuation events query | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | dd14cd2 | feat​(tracking): add the get environment profile query | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 53a46b2 | feat​(tracking): add the get device profile query | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 70f9dff | feat​(tracking): add the environmental condition normalized domain event | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 61c5d69 | feat​(tracking): add the get measurements query | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | df05cee | feat​(tracking): add the measurement recorded domain event | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 572ce65 | feat​(tracking): add the environmental profile updated domain event | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | cd4a31b | feat​(tracking): add the environmental deviation detected domain event | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 3c9ef6a | feat​(tracking): add the measurement repository | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | ef4355f | feat​(tracking): add the environmental profile repository | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 5131ef1 | feat​(tracking): add the actuation event repository | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | 1d7be4e | refactor: remove the Swagger tags that the root resource customizer overrides | Root​Resource​Tag​Customizer gives every operation the tag of its root resource (/​api/​v1/​{root}), so the @Tag annotations added by #30, #31 and #33 on ten controllers never reached the Open​API document.… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | 9391c48 | fix​(iam): read the Edge Gateways through an IAM anti-corruption service | Edge​Gateway​Api​Key​Service and Edge​Gateway​Authentication​Service called the Equipment facade directly and used its Edge​Gateway​Reference, the only two breaks of the rule that a context reads another one… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | 89cb95b | fix​(equipment): give the devices of an environment only to its operational Edge Gateways | The distribution of #31 counted every Edge Gateway of the environment, so a Gateway in maintenance or out of service kept its 15 devices: the coverage said they were served while that Gateway cannot… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | 5ac5f1f | fix​(tracking): let an Edge Gateway synchronize only the devices it serves | Since #31 an environment may have several Edge Gateways and each one reads only its share of the devices (15 at most) from its registry, but the telemetry, actuation and profile endpoints of the Edge… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | ab11b91 | docs​(migrations): create the Edge Gateway API keys and the alert indexes on the deployed database | The production profile keeps ddl-auto=none, and #30 and #33 added a table and two indexes that only Hibernate created in development: once deployed, issuing an API key and authenticating an Edge… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | 0fd0e51 | docs​(diagrams): add the Edge Gateways to the IAM, equipment and tracking diagrams | - IAM backend: Edge​Gateway​Api​Key​Service, Edge​Gateway​Authentication​Service, Iam​External​Equipment​Service with Edge​Gateway​Identity, Edge​Gateway​Api​Key​Store and its JPA adapter, the API key filter of the… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | 2ea428a | docs​(changelog): record #31, #33 and the fixes of the review | The Unreleased section had the entries of #30 and #31 without the number of #31, and nothing of #33. It now records the alert changes of #33, the migration to run before the release, the distribution… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 5780dcf | feat​(tracking): add the tracking configuration | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 1bb6aae | feat​(tracking): add the actuation rule embeddable | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 185b8c3 | feat​(tracking): add the actuation event persistence entity | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 844443b | feat​(tracking): add the threshold embeddable | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 737ad6c | feat​(tracking): add the measurement persistence entity | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | b5831d9 | feat​(tracking): add the environmental profile persistence entity | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 66f40d7 | feat​(tracking): add the environmental profile persistence repository | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 9f4238a | feat​(tracking): add the actuation event persistence repository | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 205b2e5 | feat​(tracking): add the actuation event persistence assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 089b8c4 | feat​(tracking): add the measurement persistence repository | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 7ee75ad | feat​(tracking): add the measurement persistence assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | fc3fa3d | feat​(tracking): add the environmental profile persistence assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 089b7dd | feat​(tracking): add the JPA adapter of the measurement repository | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 6e1d07a | feat​(tracking): add the JPA adapter of the environmental profile repository | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 77786b2 | feat​(tracking): add the JPA adapter of the actuation event repository | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 69573e3 | feat​(tracking): add the tracking command service | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 660a49f | feat​(tracking): add the equipment anti-corruption service of tracking | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 714c45e | feat​(tracking): add the tracking query service implementation | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | d6a20df | feat​(tracking): add the tracking command service implementation | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | e971012 | feat​(tracking): add the tracking query service | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | cdc13e7 | feat​(tracking): add the environmental deviation detected event handler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | b67c624 | feat​(tracking): add the environmental condition normalized event handler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 41c9461 | feat​(tracking): add the tracking context facade implementation | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 93550d7 | feat​(tracking): add the measurement recorded event handler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 7a7dfdd | feat​(tracking): add the environmental profile updated event handler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 2be6378 | feat​(tracking): add the environmental condition normalized integration event | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 7e0984c | feat​(tracking): add the tracking context facade | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 5460049 | feat​(tracking): add the environmental profile updated integration event | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 3ba5c28 | feat​(tracking): add the environmental deviation detected integration event | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | fa71f53 | feat​(tracking): add the actuation event resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 298c125 | feat​(tracking): add the measurement recorded integration event | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | c67990a | feat​(tracking): add the measurement resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 3ec4a9f | feat​(tracking): add the environmental profile resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 83a2fa2 | feat​(tracking): add the record measurement resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | f533d2d | feat​(tracking): add the record actuation event resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 76e1545 | feat​(tracking): add the update thresholds resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | cf9652d | feat​(tracking): add the update actuation rules resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | e12ee11 | feat​(tracking): add the environmental profile command from resource assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 2d72676 | feat​(tracking): add the actuation event resource from entity assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 6bcc121 | feat​(tracking): add the record actuation event command from resource assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 35719a6 | feat​(tracking): add the measurement resource from entity assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | ea9a833 | feat​(tracking): add the environmental profile resource from entity assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 2f671b7 | feat​(tracking): add the telemetry response assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | fd51e0b | feat​(tracking): add the record measurement command from resource assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 5354e81 | feat​(tracking): add the container monitor telemetry controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 6e25538 | feat​(tracking): add the parsing of the tracking request values | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 22b04b6 | feat​(tracking): add the edge gateway telemetry controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 712d863 | feat​(tracking): add the edge gateway profiles controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 1bf460a | feat​(tracking): add the device tracking controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 49f75cd | feat​(tracking): add the environment telemetry controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 0865e40 | docs​(diagrams): add the edge gateway controllers to the tracking backend diagram | The command service, not the telemetry controllers, depends on the current user. | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​untrack-migration-script | 8136231 | docs​(migrations): keep the migration script out of version control | Migration scripts are run by hand in My​SQL Workbench and stay in the git-ignored docs/​database/​migrations folder. Remove docs/​migrations and the README, CHANGELOG and IAM database diagram references… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.2.0 | 963fc43 | chore​(release): prepare v1.2.0 | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.2.0 | 4f103ec | docs​(changelog): record #36 | — | 13/11/2026 |

**Mobile Application** ([IoTech-2620-8741/qualitrack-mobile-application](https://github.com/IoTech-2620-8741/qualitrack-mobile-application))

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 1c2d1e9 | feat​(audit): add reporting entities for KPI metrics and audit logs | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 88503a5 | feat​(audit): implement Reporting​Repository interface for KPI and audit log retrieval | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 7bcf188 | feat​(audit): add sorting functions for audit reports and logs | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 1e1a2a2 | refactor​(audit): rename reporting_​infrastructure.dart to reporting_​dtos.dart and update imports | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | b79c5e1 | feat​(audit): add Reporting​Remote​Data​Source for fetching KPI dashboards and audit logs | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | a13ee99 | feat​(audit): implement Reporting​Repository​Impl for KPI and audit log retrieval | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 78573d3 | feat​(audit): refactor reporting queries to use new sorting functions and update imports | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | fbde3a2 | feat​(audit): refactor Reports​Bloc to use Reporting​Facade​Service for data loading | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 9e093ed | refactor​(audit): rename reports_​page.dart and update imports for reporting entities | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 4a6da1a | feat​(audit): add Reporting​Facade​Service for loading reports data and handling KPI retrieval | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 1098e0c | feat​(audit): update dependency injection for Reports​Bloc and refactor imports for reporting entities | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | b8b7988 | refactor​(audit): update import for reporting repository in mocks.dart | — | 28/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | 5be1153 | refactor​(batch): split domain into entities, interfaces and logic | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | e253428 | refactor​(batch): replace use cases with Batch​Facade​Service | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | 0190e9f | refactor​(batch): add Batch​Api as the public entry point of the context | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | 3b1aeb9 | refactor​(batch): split infrastructure into data sources, models and repositories | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | 7911b61 | refactor​(batch): split blocs into event, state and bloc files | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | 4bf37b4 | refactor​(batch): rename pages to screens | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | eaf7be2 | refactor​(batch): extract Batch​Card into its own widget | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | c7f2dfe | refactor​(app): wire the restructured batch context in DI and router | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch | fd7ba72 | refactor​(command-center): read batches through Batch​Api | — | 31/10/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 05b171e | test​(batch): adapt test suite to the restructured batch context | Point imports at the new entities, interface, logic and infrastructure files, exercise Batch​Facade​Service instead of the removed use case classes, and test Batch​List​Bloc and Batch​Detail​Bloc with the… | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 0832913 | ci: remove the build and distribute APK workflow | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6298942 | ci: run flutter analyze and test on feature pull requests into develop | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2d98c8b | refactor​(profile): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | ada4895 | refactor​(laboratory): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 8472c0a | refactor​(inventory): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | cd3e72e | refactor​(iam): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | d9bef9f | refactor​(equipment): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 28baff3 | refactor​(compliance): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 61c7841 | refactor​(command-center): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | eddc80c | refactor​(batch): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2fcd5f5 | refactor​(shared): type Section failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | c67da63 | refactor​(shared): add Failure.from so presentation can type errors without infrastructure | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6719f23 | refactor​(tracking): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | aa4f239 | refactor​(subscription): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 0eda5bd | refactor​(reporting): type bloc failures with Failure.from | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 782da93 | refactor​(equipment): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 5ea4dbf | refactor​(compliance): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | eac35c2 | refactor​(command-center): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 03b0e65 | refactor​(batch): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 1681b32 | refactor​(batch): expose batch labels through the api entry point | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f5d6c9a | refactor​(profile): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | a0d1c7e | refactor​(iam): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 598c943 | refactor​(subscription): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | d2c2d7c | refactor​(inventory): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 8d15219 | refactor​(reporting): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f125093 | refactor​(compliance): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 4b15f26 | refactor​(tracking): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | ee1be5f | refactor​(equipment): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | e4b1d8a | refactor​(laboratory): add api entry point for other bounded contexts | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 175bde9 | refactor​(tracking): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 3b0d3df | refactor​(reporting): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 5e747b8 | refactor​(profile): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 85f5d53 | refactor​(inventory): consume other contexts through their api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 54cebbe | refactor​(app): keep presentation out of the context api entry points | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 1875cc8 | refactor​(command-center): receive other contexts' widgets from the composition root | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 7ac84b7 | refactor​(equipment): use shared connection badge and labels | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 7947e6f | refactor​(reporting): use shared labels and time in range tone | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 5b2ce0f | refactor​(compliance): use shared labels for variables and actuations | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 326b060 | refactor​(tracking): use shared labels and expose Device​Connection.reachable | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | a621095 | refactor​(shared): add code-keyed metric and actuation labels and a neutral connection badge | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6382868 | refactor​(shared): move the theme from app to shared presentation | Every presentation layer uses it, so it belongs to the shared code and nothing outside app/​ needs to import app/​ any more. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 03bb2b8 | refactor​(iam): make Session​Controller independent from Flutter | Application code depends only on the domain. The router adapts the session listeners to its Listenable in app/​. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 0501d6f | docs​(architecture): document the dependency rules enforced by the test | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6d3490c | test​(architecture): fail when a file breaks the layer or bounded-context rules | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 3829f35 | docs: refer to common instead of shared | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2d01d48 | refactor​(common): rename the shared folder to common | Follows the naming of the Flutter DDD guide. Imports, the l10n generator and the architecture test point at lib/​common. | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6560a7e | refactor​(i18n): rename the l10n folders and the generator | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | dac4181 | docs: refer to i18n instead of l10n | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 26d6c5a | refactor​(i18n): rename the context getter and local variables | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | c9356e4 | test​(profile): adapt tests to the restructured profile | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 363cd46 | refactor​(app): wire the restructured profile in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 7ea9679 | refactor​(profile): rename page to screen and use the facade in blocs | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2fd4ec9 | refactor​(profile): split infrastructure into data provider, model and repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2c79d97 | refactor​(profile): replace use case classes with Profile​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | bc7cda3 | refactor​(profile): split domain into entities, interface and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | b14d38e | test​(subscription): adapt tests to the restructured subscription | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2c53412 | refactor​(app): wire the restructured subscription in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | fbb5888 | refactor​(subscription): rename page to screen and use the facade in the bloc | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | fafa1e4 | refactor​(subscription): expose the billing overview through Subscription​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 36f9d12 | refactor​(subscription): split infrastructure into data provider, models and repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | e9181a1 | refactor​(subscription): replace billing queries with Subscription​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 1cdd2f5 | refactor​(subscription): split domain into entities, interface and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | c0e7fd7 | test​(laboratory): adapt tests to the restructured laboratory | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | c814823 | refactor​(app): wire the restructured laboratory in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 485045f | refactor​(tracking): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f698cce | refactor​(reporting): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | b9b4223 | refactor​(profile): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f8da5ac | refactor​(inventory): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | bdb4bde | refactor​(equipment): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f1880ed | refactor​(compliance): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 8bcd46d | refactor​(command-center): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f86e88f | refactor​(batch): read the laboratory through Laboratory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | e412cf5 | refactor​(laboratory): rename page to screen and use the facade in the bloc | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | a9ca88b | refactor​(laboratory): expose Laboratory​Api as the context entry point | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 1bda55f | refactor​(laboratory): split infrastructure into data provider, models and repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | e596ad6 | refactor​(laboratory): replace queries with Laboratory​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | ea6a855 | refactor​(laboratory): split domain into entities, interface and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 07ae276 | test​(inventory): adapt tests to the restructured inventory | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | cca3bed | refactor​(app): wire the restructured inventory in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 88a5f20 | refactor​(inventory): rename pages to screens and use the facade in the blocs | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6f1c1f2 | refactor​(inventory): expose the materials through Inventory​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 74cce31 | refactor​(inventory): split infrastructure into data provider, models and repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 28d9aed | refactor​(inventory): replace queries with Inventory​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | a40a0b8 | refactor​(inventory): split domain into entities, interface and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | a787c27 | test​(equipment): adapt tests to the restructured equipment | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | e487d1e | refactor​(app): wire the restructured equipment in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 3345b54 | refactor​(tracking): read the equipment through Equipment​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | d383d8c | refactor​(reporting): read the equipment through Equipment​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | fcf6e8b | refactor​(compliance): read the equipment through Equipment​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2ca0641 | refactor​(command-center): read the equipment through Equipment​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 8e0745d | refactor​(equipment): rename pages to screens and use the facade in the blocs | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | c2b8acb | refactor​(equipment): expose Equipment​Api as the context entry point | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f2615a8 | refactor​(equipment): split infrastructure into data provider, models and repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 20d8c04 | refactor​(equipment): replace queries with Equipment​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | aa80ec0 | refactor​(equipment): split domain into entities, interface and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 0ea45d3 | feat​(inventory): add inventory material card widget | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | e2af921 | refactor​(inventory): integrate material card widget into inventory page | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 4b5332b | test​(tracking): adapt tests to the restructured tracking | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 10f2fb6 | refactor​(app): wire the restructured tracking in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 2823c4f | refactor​(equipment): read device connections through Telemetry​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 9cc88a4 | refactor​(command-center): read device connections through Telemetry​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 1429e4d | refactor​(tracking): rename pages to screens and use the facade in the blocs | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | cdbd296 | refactor​(tracking): expose Telemetry​Api as the context entry point | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 9edf90e | refactor​(tracking): split infrastructure into data provider, models and repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 5128c1b | refactor​(tracking): replace queries with Telemetry​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 9071a68 | refactor​(tracking): split domain into entities, interface and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f49e116 | test​(compliance): adapt tests to the restructured compliance | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | eef143e | refactor​(app): wire the restructured compliance in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | e4d09d3 | refactor​(equipment): read alerts and events through Compliance​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 5a65c3b | refactor​(command-center): read alerts and events through Compliance​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 0e40157 | refactor​(batch): read alerts and events through Compliance​Api | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | aa97c23 | refactor​(compliance): rename pages to screens and use the facade in the blocs | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 5cfcb48 | refactor​(compliance): expose Compliance​Api as the context entry point | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 86b157f | refactor​(compliance): split infrastructure into data provider, models and repositories | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 64fb441 | refactor​(compliance): replace queries with Compliance​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | e71ac2a | refactor​(compliance): split domain into entities, interfaces and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | d05dac5 | test​(compliance): use a single repository mock | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 80c5454 | refactor​(app): register a single compliance repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 81f54a5 | refactor​(compliance): serve alerts and notifications from a single repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 474b793 | refactor​(compliance): merge the alerts and notifications contracts into one interface | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 56ae4c9 | feat​(inventory): add inventory receipt item widget | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | b938e1c | refactor​(inventory): integrate inventory receipt item widget into material detail page. | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 8fa2d6a | test​(iam): adapt tests to the restructured iam | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 670f6be | refactor​(app): wire the restructured iam in DI and router | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | fb5e588 | refactor​(iam): rename pages to screens and use the facade in the blocs | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f7570c8 | refactor​(iam): point the api entry point at the entities | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 123a14d | refactor​(iam): split infrastructure into data providers, models and a single repository | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 1eb75de | refactor​(iam): replace use case classes with Iam​Facade​Service | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | b4c44c3 | refactor​(iam): split domain into entities, interface and logic | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | fbddbfe | docs​(readme): document the layout, contributing flow and the manual APK distribution | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 292f707 | docs​(architecture): describe the final context structure, api entry points and how to add a feature | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | e7d489a | feat​(l10n): add localized strings for health metrics, dashboard tabs, and measurement history | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | ff28c22 | feat​(reporting): add Deviation​Severity enum and trend mapping extension | The extension provides a `severity` getter on `Deviation​Trend` to categorize trends as critical, warning, on-track, or no-data based on reading counts. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | c7acc9a | feat​(reporting): add sorting functionality for Deviation​Trend by severity and other criteria | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | cbc5074 | feat​(reporting): enhance reporting facade with sorting and aggregation methods for trends and measurements | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 2ce8656 | feat​(reporting): add asynchronous loading and sorting of deviation trends by severity | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | e880ef7 | feat​(reporting): implement Reporting​Api for fetching audit logs and report history | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | c9b116c | feat​(localization): add new localization strings for health metrics and report history | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | fba7dfd | feat​(badge): add danger tone to Badge​Tone enum with corresponding colors and icon | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | d9bbe26 | feat​(reporting): add Deviations​Tab widget for displaying trend data with loading and empty state handling | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 2a312ff | feat​(reporting): add History​Tab widget for displaying report history with loading and empty state handling | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 544218c | feat​(reporting): add Measurements​Tab widget for displaying measurement data with loading and empty state handling | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | a221017 | feat​(reporting): add Empty​State​View widget for displaying customizable empty states | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | f17673c | feat​(reporting): add Environment​Header widget for displaying environment names | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 581d147 | feat​(reporting): add History​Row widget for displaying individual report details | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 53821e4 | feat​(reporting): add Info​Banner widget for displaying informational messages | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | f5424c6 | feat​(reporting): add Measurement​Row widget for displaying measurement summaries | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 5f49f92 | feat​(reporting): add Modern​Card widget for displaying content with a modern design | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 556748c | feat​(reporting): add Modern​Filter​Chip and Modern​Filter​Chip​Bar for enhanced filtering options | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | a3891a6 | feat​(reporting): add Period​Filter widget for selecting report periods | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 62b5a2c | feat​(reporting): add report labels for periods and types | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 1d53da9 | feat​(reporting): add See​More​Button widget for enhanced user interaction | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 6b4b838 | feat​(reporting): add severity tone handling and trend direction icons | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 152bcb6 | feat​(reporting): add Swipe​Hint widget for user guidance | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 223f85e | feat​(reporting): add Tab​Bar​Header​Delegate for customizable tab bar headers | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 4cce90f | feat​(reporting): add Trend​Row widget for displaying deviation trends | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 89fe9a4 | feat​(reporting): add All​Deviations​Page, All​Measurements​Page, and All​Reports​Page for comprehensive reporting | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 52378ae | refactor​(reporting): refactor Reports​Page to use Tab​Bar for navigation and enhance UI components | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 9f4ed02 | fix​(reporting): update tone calculation in equipment detail page to use severity-based tone | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 90d1b5c | feat​(reporting): integrate Reporting​Api into dependency injection for enhanced reporting capabilities | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 1a0abaa | docs​(reporting): add dartdoc and refactor reporting bounded context | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 5a56bdb | refactor​(l10n): rename localization directory from l10n to i18n | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | dd70750 | docs​(architecture): reporting follows the same structure as the other contexts | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | cee4dcb | test​(reporting): cover the audit trail and trend ordering through the facade | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | e355f22 | refactor​(app): wire the restructured reporting in DI and router | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 5f9569f | refactor​(batch): read audit logs and trends through Reporting​Api | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | b31a642 | refactor​(reporting): rename pages to screens and use the reporting service in the bloc | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | fedb296 | refactor​(reporting): replace the queries with the facade and expose Reporting​Api | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 1f3436c | refactor​(reporting): replace the DTOs with models and the data source with a data provider and repository | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | 2ffae36 | refactor​(reporting): move the repository contract to domain/​interfaces and the rules into a mixin | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 5b933c9 | feat​(inventory): add inventory movement item widget | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 7268279 | refactor​(inventory): integrate inventory movement item widget into material detail page | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | fe07411 | feat​(inventory): add material usage item widget | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 0ba7b34 | refactor​(inventory): integrate material usage item widget into material detail page. | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 0c894a5 | refactore​(inventory): remove unused import in material detail page | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 9eb31d4 | feat​(inventory): add material stock summary widget | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 36acc99 | refactor​(inventory): integrate material stock summary widget into material detail page. | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 8950716 | feat​(inventory): add inventory filter bar widget | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 5401e76 | refactor​(inventory): integrate inventory filter bar widget into inventory page | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | b85fa1c | feat​(inventory): add inventory low stock banner widget | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 8088c86 | refactor​(inventory): integrate low stock banner widget into inventory screen. | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 47a2ba5 | refactor​(inventory): remove unused imports | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | df14561 | feat​(inventory): add inventory stock quantities widget. | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​inventory | 621d901 | refactor​(inventory): integrate stock quantities widget in material card and material stock summary screens. | — | 06/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch-redesign | 50baacf | feat​(i18n): add the texts of the batch redesign | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch-redesign | ac80105 | feat​(batch): show the batch history as one readable timeline | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch-redesign | 66b9e1e | feat​(batch): filter the batch list with its status counters | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch-redesign | ec75a71 | feat​(batch): clean up the batch detail and date decisions from the batch start | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch-redesign | e4a446f | test​(batch): expect the newest batch first after clearing the filters | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | c0383f0 | feat​(i18n): add the texts of the mobile redesign. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 7103cc3 | refactor​(common): align the color tokens with the qualitrack palette. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 1b166a6 | refactor​(common): use rubik and navy titles in the typography. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | db18dfd | feat​(common): style buttons, tabs, navigation bar and cards with material 3 expressive. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | fd52928 | feat​(common): keep every list draggable so pull-to-refresh always works. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | f16e379 | feat​(common): add a card with ripple and press scale feedback. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 825a516 | feat​(common): add the m3 toggle button and toggle bar. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | bc3ddeb | feat​(common): add the m3 search bar with back and clear actions. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 7cb58b7 | feat​(common): add the m3 fab menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 5fe0691 | feat​(common): add the compact filter summary card. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 2b26cc2 | feat​(common): add M3 secondary tabs. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 3e5daad | refactor​(common): add App​Bar​Title and Detail​List and show sections as mobile groups. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 1ab2c6a | feat​(common): add pull-to-refresh to Remote​State​View. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 839d89a | refactor​(common): make the Section​Card title optional. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | d58bd71 | refactor​(app): keep the navigation bar on every screen and order the tabs like the Web menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | d3988c7 | refactor​(app): build the navigation tabs from the router branches. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | ab31b6f | feat​(app): group the More menu like the Web menu and rename it to screen. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 09fce4a | feat​(command-center): expose the most urgent alert and the offline devices. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 03c876c | feat​(command-center): show a no-scroll home ordered like the Web menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 50d3725 | feat​(batch): filter batches from a FAB menu with a summary card. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | fb62f22 | refactor​(batch): show each batch as a list item. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | f783151 | feat​(batch): summarize the batch cycle and decide from a fixed bottom bar. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 6603676 | refactor​(batch): use the alert icon for compliance events in the history. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | a96222d | feat​(compliance): search alerts by variable, device or area | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | c9d5109 | feat​(compliance): filter alerts from a FAB menu with search and a summary card. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | f5ebf89 | refactor​(compliance): show the alert detail as detail rows with pull-to-refresh. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 61500c8 | refactor​(compliance): connected severity selector and pull-to-refresh in preferences. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 3874412 | refactor​(compliance): show each alert as a mobile list item. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | ee138ae | feat​(equipment): count the equipment of each filter. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | eaba97d | feat​(equipment): filter equipment from a FAB menu with a summary card. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 23e84eb | refactor​(equipment): detail rows, title in the app bar and history in secondary tabs. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | a917648 | refactor​(inventory): remove the filter bar and the low stock banner. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | e33b83f | feat​(inventory): filter materials from a FAB menu with a summary card. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 784087c | refactor​(inventory): title in the app bar and lots, movements and usages in secondary tabs. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 6e2bf91 | refactor​(inventory): show each material as a mobile list item. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | e2ae005 | feat​(inventory): show the usable stock as a bar against the minimum. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | bc2d859 | refactor​(laboratory): product titles in the app bar and detail rows. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 844a3a6 | refactor​(profile): show the profile as detail rows with pull-to-refresh. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | df3dfbe | refactor​(subscription): title in the app bar and detail rows. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | a912df4 | refactor​(reporting): primary tabs with icons and a left-aligned title. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 93909aa | refactor​(reporting): toggle filters and a left-aligned title in all deviations. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | bb75fc2 | refactor​(reporting): left-aligned title in all measurements. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | b7c289d | refactor​(reporting): left-aligned title in all reports. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | f612539 | refactor​(reporting): use the palette tokens in the history tab. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 162fca4 | refactor​(reporting): use the palette tokens in the measurements tab. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | b7e4ffa | refactor​(reporting): use the theme shape in the empty state action. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 1b0e2e2 | refactor​(reporting): use the palette and spacing tokens in the history row. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | ad25e0b | refactor​(reporting): use the brand container in the info banner. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 87cbaee | refactor​(reporting): use the palette and spacing tokens in the measurement row. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | ba062e2 | refactor​(reporting): borderless cards without shadow like the rest of the app. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 0dd8599 | refactor​(reporting): build the filter chips on the M3 toggle button. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 2b04f95 | feat​(reporting): choose the period with a connected button group. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | d6762a2 | refactor​(reporting): use the palette tokens in the swipe hint. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 7d2eb63 | refactor​(reporting): full-width pinned primary tabs. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 7e67040 | refactor​(reporting): use the state tones in the trend row. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | d72da8f | refactor​(tracking): title in the app bar and pull-to-refresh instead of buttons. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | adba7b3 | refactor​(tracking): title in the app bar and pull-to-refresh in the history. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 23f43e7 | refactor​(batch): adapt the batch list tests to the FAB menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 594dcf1 | refactor​(compliance): adapt the alerts tests to the FAB menu, search and mobile cards. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | c92f21c | feat​(app): test that the navigation tabs follow the router branches. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 3b56c44 | feat​(app): test the More sections and the confirmed sign out. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 65a4203 | feat​(command-center): test that the home fits every screen without scrolling. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | a81b9cd | feat​(batch): test the decision bar of the batch detail. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 3de03fe | feat​(equipment): test the equipment FAB menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | c996239 | feat​(inventory): test the inventory FAB menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​compliance | 9774f29 | fix​(compliance): name alerts the same way on every screen | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​compliance | 7d059e1 | refactor​(compliance): show the most important data first in the alert detail | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​compliance | 100e730 | refactor​(compliance): keep the alert review actions in a bottom bar | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​compliance | e387f67 | refactor​(compliance): title the alert detail and link the device and batch as rows | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​compliance | a442f26 | fix​(compliance): use the alert icon and the shared title in notifications | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​compliance | 5b70758 | refactor​(compliance): mark unread notifications with a single cue | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​compliance | 3b1d009 | feat​(compliance): read each alert card as one accessible label | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​ihc-corrections | 925a53b | feat​(app): keep the app in portrait, except the telemetry history | The Report (Mobile Style Guidelines) lays the app out for portrait and lets only the telemetry history chart turn to landscape. Nothing locked the orientation, so in landscape the Home shrank to 30%… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​ihc-corrections | 66f1d7e | feat​(app): order the tabs like the Report and open equipment from More | The Report (Mobile Style Guidelines) defines the bottom bar as Home, Telemetry, Alerts, Batches and More, with equipment and inventory in More. The app had Home, Batches, Equipment, Telemetry and… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​ihc-corrections | 696ec76 | feat​(command-center): show the four home cards by importance, without shrinking them | The Home followed the order of the Web menu with five cards (batches, equipment and telemetry, the most urgent alert, inventory), and avoided scrolling by scaling the whole panel down when it did not… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​ihc-corrections | d3f7788 | fix​(reporting): keep the period on screen when an earlier answer arrives late | Picking a period and then another one let the slower answer of the first replace the second: with 31 days selected, the screen showed the data of 7 days. The BLo​C now numbers its requests and ignores… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​ihc-corrections | 55fd103 | docs: describe the navigation, the Home and the orientation of the app | architecture.md explains the tabs of the Report, the icon of each section, when a link opens a tab or pushes a screen, the Home rule and the portrait orientation, and points to the real place of… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​ihc-corrections | 1c0a1dc | refactor​(i18n): remove the texts no screen uses | 34 keys of strings.tsv were used by no screen any more, most of them left by the redesign of the screens and by the new Home (for example recent​Batches, key​Operational​Metrics, home​Batches,… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​home-latest-alerts | e1bcc76 | feat​(command-center): keep the home cards at their height and list the latest alerts below | On a tall phone (411x914 dp) the four cards shared the whole height and grew to about 360 dp each, with their content floating in empty space. | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​home-latest-alerts | 1d146f6 | ci: pin Flutter 3.44.3 so a new stable release does not fail every PR | The workflow installed the latest stable, and Flutter 3.50.0 (released after the last green run) deprecates package:flutter/​material.dart in favour of package:material_​ui. flutter analyze then… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​equipment-edge-gateway | d700cba | feat​(equipment): name and filter edge gateways and hide their BPM limits | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​home-priorities | c7cfaaa | feat​(command-center): show the home as a status strip and four rows to review by importance | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​home-priorities | 1ff2062 | fix​(command-center): capitalize the devices online label of the home | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 2049fb7 | feat​(i18n): add the texts for error titles, elapsed times and the sign-in hint | - error​Title* name the cause of a failure ("No connection", "Access restricted"...); the generic title now says "The information could not be loaded" instead of "Something went wrong". - time​Just​Now,… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 45bbf5e | feat​(common): title the error views by the cause of the failure | The error view no longer says "Something went wrong": its title and icon name what happened (no connection, no response, access restricted, not found, service unavailable), and the message below… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 4c852f0 | feat​(tracking): make the telemetry readings and devices readable at a glance | - A reading out of range takes the tint of its state and its figure the text tone of that state; screen readers also hear the state. - The time of each reading and of the last communication reads as… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | a89efcc | feat​(app): put what matters first and drop empty content in the detail screens | - Equipment detail: for an Io​T device, the connection status and the deviation indicators come before the general information (model, serial, firmware). - Alert detail: the resolution notes card… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 63d2f41 | test: cover the error titles by cause and the elapsed times | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 41935b5 | feat​(app): open the More tab on its menu when coming from another tab | The tabs keep where they were left, and tapping the current tab goes back to its start. More is a menu of unrelated sections, so it now always opens on the menu instead of the section seen last,… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 4688e6f | feat​(command-center): give the Home a sober, current and less noisy look | - The app bar title is the laboratory, with the role and how long ago the figures were loaded below it ("Updated 5 min ago", counting every minute); the greeting is gone and the user is the avatar of… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 37c62fb | feat​(app): put the Alerts tab right after Home | The bottom bar is ordered by importance: Home, Alerts, Telemetry, Batches, More. Alerts are what a QA user acts on first, so they sit next to Home, as on the Home cards. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | dcdaef4 | feat​(common): add the texts and building blocks for the screen review | - code​Label names backend status, cycle and type codes in the language of the app (ACTIVE, MONTHLY, PREVENTIVE...), and humanizes the ones it does not know instead of showing them raw;… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | a55d93a | feat​(app): make the lists and details consistent and drop repeated or empty content | - Below the minimum stock is amber across Inventory, as on the Home. - Alert, batch, material and product cards show a chevron, as equipment and More already did. - Alert cards and notifications show… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 7c4831b | feat​(app): show backend codes translated instead of raw | Billing (status, cycle, payments), equipment detail (maintenance, events, audit), inventory movements (lot status) and the batch history name their codes with code​Label instead of… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 07b1141 | feat​(reporting): show only what applies to each tab and match the app's cards | - The period filter is left out on the History tab, which does not depend on it. - The empty state offers "See last 31 days" only when another period is selected. - The Deviations tab shows its count… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 240100a | feat​(profile): change the photo from the avatar and confirm signing out | - A camera button on the avatar picks a photo, or offers to change or remove it, so the name sits right under the photo. - The full name row is shown only when it is missing; the heading already has… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | d0fa2b5 | feat​(tracking): keep every device in sight and one message without readings | - The device chips wrap onto more lines instead of scrolling sideways, so the selected one is always visible. - Without readings, one notice replaces the empty chart, deviations and actions sections… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | d3a3765 | test: cover the translated backend codes and the amber low stock | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | ae99fff | fix​(app): show the Quali​Track logo on the About screen | About showed a generic shield icon; it now uses Quali​Track​Logo, the same image as the sign-in, splash and password screens. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | ab80a96 | feat​(app): say how current the Alerts and Batches lists are | Once loaded, the app bar subtitle of both lists reads "Updated 2 min ago", as on the Home and Telemetry, counting every minute. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 7babed2 | feat​(compliance): undo "mark all as read" before it reaches the server | The notices show as read at once and a snackbar offers Undo for 5 seconds. The server is told only when it closes without undo, or when the screen is left before; the server has no way to mark… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | e147d8b | feat​(tracking): shade the normal range on the chart and add a help sheet | - The normal range is a green band instead of two dashed lines, so a reading in or out of it shows at a glance; the critical limits stay dashed red lines, and the legend uses the band colour. - The… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | c33f05c | feat​(common): remember when data was loaded and keep elapsed times counting | - Remote​State.loaded​At: the time of the last successful load, kept while loading, refreshing or failing; not part of equality. - Minute​Ticker rebuilds its child every minute, so "Updated 2 min ago"… | 12/11/2026 |

**Edge API (Edge Service)** ([IoTech-2620-8741/qualitrack-edge-service](https://github.com/IoTech-2620-8741/qualitrack-edge-service))

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-edge-service | develop | 735035f | chore: scaffold edge service project structure | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | f86bd86 | feat​(iam): add credential | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 5015118 | feat​(iam): update enums | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | dd9b540 | feat​(iam): delete services | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | f0fb12e | feat​(iam): update entities | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | afbf57f | feat​(iam): update name | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 4044804 | feat​(iam): add repositories | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 7d0f74a | feat​(iam): add configuration database | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 9df9f7f | feat​(iam): add models | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 095c160 | feat​(iam): update models | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 4bd46f5 | feat​(iam): update variables from Device in entities | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 0c4ef47 | feat​(iam): add repositories in infrastructure | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | f366647 | feat​(iam): update the names of the attributes in the entities | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 08cd501 | feat​(iam): add coments of attributes | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | b22a127 | feat​(iam): add services in application | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 5fe4e68 | feat​(iam):update files ignore | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 68811b9 | feat​(iam): add config | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 46528c0 | feat​(iam): add services in interfaces | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | 7da810f | feat​(iam): add .env-example | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​iam | b48dd31 | feat​(iam): update app | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | 68fd9d3 | chore: keep the iam, tracking and shared bounded contexts | Alerts are evaluated in the cloud, so the Edge has no Compliance &amp; Alerting context; the empty ca scaffold is removed and shared becomes a regular package. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | 58ac0cd | chore: rename requeriments.txt to requirements.txt | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | 934c1d1 | chore: ignore local databases and bytecode | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | d130400 | refactor​(iam): align device types and texts with the cloud registry | Device​Type uses ENVIRONMENTAL_​DEVICE and CONTAINER_​MONITOR, the values of the cloud platform. The device identifier is the sensor​External​Id the cloud registers for the Edge (ENV-001), not the MAC… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | a49dbc1 | docs: add the README and the Quali​Track proprietary license | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | 121bd57 | ci: run the unit tests on pull requests | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | 38bb34e | test​(iam): cover the device aggregate, the configuration and the authentication endpoint | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | daf4d35 | docs​(changelog): add the changelog with the repository base (#1) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​device-sign-in | 7488cbf | feat​(iam): register devices with a generated API key, rotate it and list devices | register_​device and rotate_​api_​key generate a random key and return it once with the device; the Edge stores only its verifier. list_​devices returns the registered devices by identity. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​device-sign-in | 680d49c | feat​(iam): sign in devices at /​api/​v1/​auth/​sign-in (TS53, TS54) | The route of the Report replaces /​api/​v1/​iam/​authentications, which no device calls yet. The response also carries the device type, so the environmental device and the container monitor can confirm… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​device-sign-in | 5ac46d4 | docs: document the device sign-in and the devices commands | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​device-sign-in | 8555f01 | feat​(iam): add the flask devices commands to register, rotate, revoke and list nodes | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​device-sign-in | 6899b9d | docs​(changelog): add the device sign-in and the devices commands (#2) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-connection | eb387a7 | feat​(shared): add the background cloud synchronization thread | One daemon thread runs the synchronization tasks every CLOUD_​SYNC_​INTERVAL_​SECONDS with its own database connection; a failed task is logged and retried in the next cycle. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-connection | 58735cb | feat​(shared): add the cloud settings and the authenticated cloud session | The Edge signs in to the Quali​Track Cloud REST API with the account of an operator (report 5.6), sends its JWT as a Bearer token and signs in again once when the cloud answers 401. Unreachable… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-connection | 6dd847c | feat​(tracking): keep a local copy of the cloud device registry | Monitored​Device keeps the laboratory, environment and cloud identifier of each node the cloud registers with a sensor​External​Id. Cloud​Device​Registry​Gateway reads the equipment of the laboratory and… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-connection | e84cd14 | docs: document the connection with the cloud and the cloud commands | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-connection | 480578b | feat​(tracking): add the flask cloud commands and start the synchronization with the service | flask cloud sync reads the registry now and flask cloud devices lists the local copy. python app.py starts the background synchronization; flask commands never start it. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-connection | f555262 | docs​(changelog): add the connection with the cloud and the device registry (#3) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​telemetry-reception | c4dd833 | feat​(tracking): store readings and actions once in SQLite | A node, metric and measurement time identify a reading, and a node, action and time an action, as in the cloud. A retry returns the stored record; a retry with different data raises Telemetry​Conflict… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​telemetry-reception | a8d8ef3 | feat​(tracking): model readings and actuation events with their synchronization status | Telemetry​Reading is one metric a node measured at a moment and Actuation​Event an action of a container monitor, both PENDING until the cloud accepts them (TS60). They apply the rules of the cloud:… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​telemetry-reception | 63c4372 | feat​(tracking): accept telemetry of nodes authenticated through the IAM anti-corruption layer | Iam​Anti​Corruption​Layer translates IAM's authentication into Tracking's own Reporting​Device. Telemetry​Application​Service checks that the node type sends the telemetry, creates one pending reading per… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​telemetry-reception | f422b71 | docs: document the reception of readings and actions | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​telemetry-reception | eaf21c2 | feat​(tracking): receive readings and actions at the routes of the report (TS55, TS56, TS57) | POST /​api/​v1/​monitoring/​environment-readings and /​api/​v1/​monitoring/​container-readings take the metrics a node measured at one moment; POST /​api/​v1/​control/​actuation-events takes an action of a… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​telemetry-reception | 2661a93 | docs​(changelog): add the reception of readings and actuation events (#4) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-synchronization | 4f7e66d | feat​(tracking): give pending records the answer of the cloud | A pending reading or action becomes SYNCED or REJECTED; once answered it cannot change again. The repositories load the pending records oldest first after a cursor and save their synchronization… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-synchronization | 0aef75f | feat​(tracking): send readings and actions to the routes of the cloud | Cloud​Telemetry​Gateway builds the nested routes of the cloud from the registry of each node: telemetry-measurements of the environment for the environmental device, and telemetry-measurements and… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-synchronization | 2b20fc2 | docs: document the synchronization of the pending telemetry | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-synchronization | ba8219f | feat​(tracking): synchronize the pending telemetry with the cloud (TS61, TS62, TS63) | Telemetry​Synchronization​Application​Service sends the pending readings and actions oldest first, in batches. Records of a node the registry does not place in an environment stay pending, and an… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-synchronization | e7adf5d | docs​(changelog): add the synchronization of the pending telemetry (#5) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​profile-configuration | 6ad7472 | feat​(tracking): model the environmental profile a node applies | Environmental​Profile keeps the version, the thresholds and the actuation rules a node applies, with the rules of the cloud: each side of a threshold has its normal and critical limit, the critical… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​profile-configuration | a5407b9 | feat​(tracking): copy the profile of each node from the cloud (TS64) | Cloud​Profile​Gateway reads the profile of the environment or the container monitor of each node placed in an environment. Environmental​Profile​Application​Service replaces the local copy only when every… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​profile-configuration | e8f5104 | feat​(tracking): keep a local copy of the profiles in SQLite | The environmental_​profiles table stores the thresholds and rules as JSON; replace_​all makes the copy equal to the profiles the cloud has now in one transaction. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​profile-configuration | 8011f0c | docs: document the profiles and the configuration of the nodes | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​profile-configuration | 598d2fb | feat​(tracking): hand each node its configuration (TS58, TS59) | GET /​api/​v1/​configurations/​{device​Id} returns the thresholds, actuation rules and profile version of the node that presents its API key, or 404 while the Edge has no profile for it. The background… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​profile-configuration | 6835391 | docs​(changelog): add the profiles and the configuration of the nodes (#6) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | d4ea9b2 | feat: run the Edge with Docker Compose on the local station | The service qualitrack-edge runs the Edge REST API on Gunicorn without root and keeps the SQLite database in the qualitrack-data volume, as the report describes the deployment (4.1.3.4).… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | baed028 | feat: serve the Edge with Gunicorn | wsgi.py is the entry point of Gunicorn: it creates the application and starts the background cloud synchronization in the worker process. gunicorn.conf.py runs one worker, as SQLite and the… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | f4a2df3 | docs: document the deployment on the local station | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | 866ca5f | test: close the test database before removing its folder | Windows cannot delete the SQLite file while a connection keeps it open. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | 5916ecd | ci: check the compose service and build the image for arm64 | The docker job starts docker-compose.yml, registers a node with the devices command, signs it in, receives a reading and checks that it survives the recreation of the container. The docker-arm64 job… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | 60ad95f | docs​(changelog): add the deployment on the local station (#7) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | f9a6010 | docs: add the architecture decision records | ADR-0001 to ADR-0010: bounded contexts, SQLite with Peewee, API key per request, registration with commands, operator account in the cloud, registry and profiles in Tracking, background… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | b63c9fe | docs: add the class diagram of the bounded contexts | Plant​UML diagram of IAM, Tracking and the shared infrastructure with their layers, protocols, implementations, the anti-corruption layer, the cloud gateways and the composition of the application. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | 34dd746 | docs: add the technical stories TS53-TS64 with their traceability matrix | The Edge stories of the report with Gherkin acceptance criteria that describe the implemented behavior, and a Requirements Traceability Matrix to the classes and functions that implement each one. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | 7425aac | docs: link the technical stories and the documentation from the README | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | 98a2880 | docs​(changelog): add the project documentation (#8) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v1.0.0 | e4bf29f | docs​(changelog): release 1.0.0 | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.1.0 | 3ce1176 | docs​(changelog): number the first release 0.1.0 | The first release of the Edge is 0.1.0 instead of 1.0.0. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​local-node-registry | 0aa5cac | docs: document that the Edge keeps only its own nodes | README, TS64 scenarios and traceability, ADR-0011 and the class diagram. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​local-node-registry | a8cfb43 | feat​(tracking): keep only the nodes registered in this Edge from the cloud registry | The cloud lists the equipment of the whole laboratory, which may have nodes in environments other stations serve. The device registry now keeps only the nodes registered in this Edge with flask… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​local-node-registry | 2cd9218 | docs​(changelog): keep only the nodes registered in this Edge (#14) | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.2.0 | 3389ea2 | docs​(changelog): release 0.2.0 | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​synced-telemetry-retention | 3e266a7 | feat​(config): add the retention days of the synchronized telemetry | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​synced-telemetry-retention | ae5e010 | feat​(tracking): purge the synchronized and rejected telemetry once it is old | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​synced-telemetry-retention | 0c5d088 | docs​(changelog): retention of the telemetry | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​synced-telemetry-retention | 128baf2 | docs: document the retention of the telemetry (ADR-0012) | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | 42a4262 | fix​(tracking): reject malformed cloud equipment lists | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | e723f7b | fix​(tracking): handle invalid cloud profile responses | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | 0747fbf | refactor​(tracking): update purge logic to retry failed telemetry cleanup | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | 57e23df | test​(tracking): add retry logic for purge after repository failure | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | ea481b6 | test​(tracking): add tests for rejecting malformed equipment lists and preserving local devices | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | 0e6ec25 | refactor​(tracking): extract cloud telemetry payload builders" | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | 1ea758e | test​(tracking): add retry logic for actuation after cloud outage | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​environment-device-registry | 6e00e09 | docs​(changelog): registry per environment | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​environment-device-registry | aeea9af | docs: record the registry per environment (ADR-0013) | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​environment-device-registry | 76de5e8 | feat​(tracking): read only the iot devices of the station environments | With CLOUD_​ENVIRONMENT_​IDS set, the device registry asks the cloud for /​environments/​{environment​Id}/​equipments?iot=true of each environment instead of the equipment of the whole laboratory. The Edge… | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​environment-device-registry | fe3c3f1 | feat​(config): add the optional environments of the station | CLOUD_​ENVIRONMENT_​IDS lists the cloud environments the station serves, as a comma-separated list of positive integers; empty keeps the whole laboratory. | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 475ae01 | refactor​(cloud): replace operator jwt with gateway api key | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 6a39725 | feat​(cloud): fetch edge gateway assigned iot devices | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 9068726 | feat​(iam): bridge cloud device enrollment to local iam | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | df9ea42 | feat​(tracking): cache and authorize cloud iot devices | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 5e75a41 | feat​(tracking): expose iot device enrollment endpoint | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 8f403d3 | refactor​(cloud): synchronize telemetry via gateway api | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 5053926 | refactor​(cloud): fetch environmental profiles through gateway api | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | f983758 | refactor​(cloud): synchronize actuation events through gateway api | — | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | c5447c4 | refactor​(cloud): simplify cloud device registry gateway initialization | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | ec80c8d | fix​(config): validate gateway credentials and enforce HTTPS in production | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 6571b98 | test​(edge): update cloud session tests for api key authentication | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | e8df9d3 | test​(tracking): align device registry tests with gateway endpoints | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 0a51726 | test​(tracking): update profile tests for gateway endpoints | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | e30680e | test​(tracking): update telemetry tests for gateway routes | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | f563f64 | test​(edge): update http integration tests for gateway authentication | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​retire-cloud-environment-ids | 5271e77 | docs​(adr): record edge gateway authentication in ADR-0014 | Supersedes ADR-0005 and ADR-0013, amends ADR-0011 and updates the README, the class diagram and the changelog. | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​retire-cloud-environment-ids | 15c567e | refactor​(config): retire the CLOUD_​ENVIRONMENT_​IDS setting | The Edge reads its devices from the cloud as an Edge Gateway, so the setting was no longer used. | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | bf54ee3 | refactor​(sync): add the sync context with the telemetry synchronization | Move the synchronization of the pending readings and actions, their purge, the telemetry gateway and the cloud commands out of Tracking. Sync reads the domain and the repositories of Tracking;… | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 0b27e55 | refactor​(sync): move the profile synchronization to the sync context | Sync copies the profiles from the cloud with the new Profile​Synchronization​Application​Service; Tracking keeps handing each node the profile it applies. | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 14002ee | test​(sync): check that tracking does not depend on sync | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 57a18c6 | docs​(changelog): sync context | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 57e2841 | refactor​(sync): move the cloud registry to the sync context | Monitored​Device, its repository, the registry service and its gateway are the cloud route of each node, so Sync owns them, together with the enrollment of the nodes the cached registry authorizes… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 7f142f6 | docs: record the sync context (ADR-0015) | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​sync-iam | 01c383d | refactor​(sync): remove the unused route helpers of the telemetry gateway | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​sync-iam | d1e979d | refactor​(iam): remove the unused is_​encoded check | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 96e74bc | docs​(stories): align the synchronization stories with the edge gateway | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 2f89ee3 | docs: document the gateway session and the enrollment endpoint | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 2ca2a27 | docs​(changelog): release 0.3.0 | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​sync-tracking-repositories | 9860b90 | docs​(sync): describe the registry of the edge gateway in the docstrings | Since ADR-0014 the registry caches every Io​T device the cloud assigns to this Edge Gateway, also before it is registered in the Edge; the docstrings still described the registry of the laboratory… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​sync-tracking-repositories | 3d177bf | refactor​(sync): receive the repositories of tracking from create_​app | ADR-0015 makes Sync a conformist of Tracking that uses its entities and repository contracts. The telemetry and profile synchronization services still built the Peewee repositories of Tracking as… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​sync-tracking-repositories | ff56831 | docs​(changelog): record #28 | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.1 | b3e94c6 | docs​(changelog): release 0.3.1 | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​edge-audit-findings | 13f6ce0 | refactor​(sync): require the registry repository and drop unused methods | Device​Registry​Application​Service no longer builds Monitored​Device​Repository from the application layer; create_​app already passes it, as for the other Sync services (ADR-0015). find_​monitored_​device… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​edge-audit-findings | 68aa200 | fix​(iam): refuse a second registration of the same node | register_​device checked that the node did not exist and then saved it with an insert-or-update, so `flask devices register` and `POST /​api/​v1/​devices/​enroll` running at the same time both answered… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​edge-audit-findings | 3c896fb | perf​(iam): verify the API keys of the nodes with SHA-256 | Every reading, action and configuration request checked the key with PBKDF2 at 310,000 iterations, tens of milliseconds on the Raspberry Pi, and the sign-in let anyone on the local network keep the… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​edge-audit-findings | 9ef7c0c | perf​(sync): send pending records in parallel and filter waiting ones in SQL | The synchronization sent one record at a time and waited for each answer, so with 15 nodes every 10 s it fell behind as soon as a request took more than about 220 ms. Records are now sent four at a… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​edge-audit-findings | 3ae059b | feat​(shared): log how long each synchronization cycle takes | The scheduler logs the time of every task and of the whole cycle, and warns when a cycle takes longer than CLOUD_​SYNC_​INTERVAL_​SECONDS, so a station that falls behind the cloud shows it in its logs. | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​edge-audit-findings | 81469ef | docs​(changelog): record the fixes of the edge service audit | — | 13/11/2026 |

#### 6.2.2.5. Testing Suite Evidence for Sprint Review

En el Sprint 2 cada producto de código cuenta con una suite de pruebas automatizadas que se ejecuta en GitHub Actions en cada pull request hacia develop y main, de modo que ningún cambio se integra si alguna prueba falla. Al cierre del sprint las cuatro suites se encuentran aprobadas:

| Producto | Repositorio | Herramientas | Archivos de prueba | Pruebas ejecutadas en CI |
|----------|-------------|--------------|--------------------|--------------------------|
| Cloud REST API | [qualitrack-platform](https://github.com/IoTech-2620-8741/qualitrack-platform/tree/develop/src/test/java/com/iotech/qualitrack/platform) | JUnit 5, Spring Boot Test, MockMvc | 44 clases | 229 |
| Web Application | [qualitrack-web-app](https://github.com/IoTech-2620-8741/qualitrack-web-app/tree/develop/src/app) | Vitest con Angular TestBed | 128 archivos `.spec.ts` | 870 |
| Mobile Application | [qualitrack-mobile-application](https://github.com/IoTech-2620-8741/qualitrack-mobile-application/tree/develop/test) | flutter_test, bloc_test | 18 archivos | 174 |
| Edge API | [qualitrack-edge-service](https://github.com/IoTech-2620-8741/qualitrack-edge-service/tree/develop/tests) | unittest de Python | 17 módulos | 127 |

En el Cloud REST API las pruebas unitarias verifican las reglas del dominio de cada Bounded Context sin levantar Spring, y las pruebas de integración ejercitan los endpoints con MockMvc sobre una base de datos de prueba, comprobando los códigos HTTP, los recursos devueltos y los permisos por rol. En la Web Application las pruebas verifican los assemblers, servicios, stores, validadores y componentes de cada Bounded Context. En la Mobile Application verifican el dominio, los casos de uso, la infraestructura HTTP, los BLoC, las pantallas y las reglas de dependencia entre capas. En el Edge API verifican la autenticación de los nodos, la recepción de lecturas y eventos, la entrega de la configuración y la sincronización con el Cloud usando dispositivos simulados. En este sprint no se elaboraron pruebas de aceptación BDD con archivos `.feature`; los escenarios de aceptación de cada Technical Story se verifican con las pruebas de integración de su endpoint.

**Cloud REST API.** La siguiente tabla relaciona cada clase de prueba con su tipo, su Bounded Context, los comportamientos que verifica (con el número de métodos de prueba) y las Technical Stories del sprint que soporta. En total la suite tiene 221 métodos de prueba; con los casos de las pruebas parametrizadas Maven ejecuta 229.

| Clase de prueba | Tipo | Bounded Context | Comportamientos verificados (métodos de prueba) | Technical Stories relacionadas |
|-----------------|------|-----------------|-------------------------------------------------|--------------------------------|
| Qualitrack​Platform​Application​Tests | Integración | Shared | context loads (1) | Todas (TS05) |
| Stock​Rollback​Tests | Integración | Product Batch Management | a failed usage write rolls back the inventory consumption (1) | TS68–TS80 |
| Batch​Command​Tests | Unitaria | Product Batch Management | new batches are trimmed and counted in units by default; new batches need their place a number a positive quantity and an iso start date; releases and rejections need an iso date and their text (3) | TS68–TS80 |
| Batch​Lifecycle​Tests | Unitaria | Product Batch Management | the first raw material consumption starts a pending batch; closed batches are not started again; new batches start pending with the product of their environment; (+3 más) (6) | TS68–TS80 |
| Product​Batch​Integration​Tests | Integración | Product Batch Management | quality manager registers lists and reads products of an environment; product codes and names are unique in the laboratory only; only quality roles register products and other laboratories cannot read them; (+8 más) (11) | TS68–TS80 |
| Compliance​Scope​Tests | Unitaria | Compliance & Alerting | matching numeric ids do not mix events from different resource types (1) | TS81–TS84, TS87–TS88 |
| Ca​Command​Service​Impl​Test | Unitaria | Compliance & Alerting | a first deviation opens a new alert; a worse deviation escalates the open alert; a repeated deviation is recorded without publishing events; (+4 más) (7) | TS81–TS84, TS87–TS88 |
| Notification​Domain​Tests | Unitaria | Compliance & Alerting | preferences decide which notices reach the bell and the email; a notification is read once and alert notices carry their severity (2) | TS81–TS84, TS87–TS88 |
| Compliance​Alerts​Integration​Tests | Integración | Compliance & Alerting | an incident detected by tracking is one alert with its actions until it is resolved; deviations confirmed through the api open or join the alert of their device (2) | TS81–TS84, TS87–TS88 |
| Alert​Lifecycle​Commands​Test | Unitaria | Compliance & Alerting | acknowledge requires alert and user; resolve requires notes; condition normalized uppercases the parameter; (+3 más) (6) | TS81–TS84, TS87–TS88 |
| Create​Deviation​Alert​Command​Test | Unitaria | Compliance & Alerting | normalizes parameter name and unit; accepts a missing device to use the environmental device; rejects missing or invalid identifiers; (+4 más) (7) | TS81–TS84, TS87–TS88 |
| Equipment​Domain​Tests | Unitaria | Equipment Management | iot device is an equipment with type and identity; equipment is located only in environments of its laboratory; status change keeps the history and rejects the current status (3) | TS37–TS48 |
| Edge​Gateway​Allocation​Tests | Unitaria | Equipment Management | environment without gateways leaves every device uncovered; one gateway serves up to fifteen devices; devices beyond the capacity of the only gateway are uncovered; (+5 más) (8) | TS37–TS48 |
| Equipment​Integration​Tests | Integración | Equipment Management | quality manager registers and lists equipment of the laboratory; equipment is located in an environment of the same laboratory; status changes are traceable and rejected when not allowed; (+7 más) (10) | TS37–TS48 |
| Account​Recovery​Domain​Tests | Unitaria | Identity & Access Management | the code expires after fifteen minutes and is used once; five wrong codes revoke the recovery; a new code waits one minute and replaces the previous one; (+3 más) (6) | TS01–TS08 |
| Staff​Credentials​Email​Tests | Integración | Identity & Access Management | credentials are emailed to the staff member; a failed delivery leaves the temporary password for the quality manager (2) | TS01–TS08 |
| Account​Recovery​Integration​Tests | Integración | Identity & Access Management | sign up requires a unique email; the password is reset with the code sent to the email; the answer does not reveal which accounts exist; (+3 más) (6) | TS01–TS08 |
| Onboarding​Integration​Tests | Integración | Identity & Access Management | account must pay then create laboratory and cannot create twice; expired and unverified subscriptions do not unlock the api; account cannot register in another laboratory or self assign administrator; (+11 más) (14) | TS01–TS08 |
| Inventory​Domain​Tests | Unitaria | Inventory Management | receipt requires review and preserves received quantity after consumption; rejects overdraft without changing stock; rejects different units without conversion; (+12 más) (15) | TS26–TS36 |
| Inventory​Persistence​Tests | Integración | Inventory Management | only quality reviewer in same laboratory can release; simultaneous retries record only one consumption; quarantine review consumption and affected batch history persist; (+7 más) (10) | TS26–TS36 |
| Container​Assignment​Integration​Tests | Integración | Inventory Management | raw material lots are stored in containers of their raw material storage environment; product batches are stored in containers of product storage environments (2) | TS26–TS36 |
| Environment​Inventory​Integration​Tests | Integración | Inventory Management | quality manager registers raw materials and reviews their lots; low stock and near expiry filters identify materials and lots; raw materials are scoped to their environment and laboratory; (+2 más) (5) | TS26–TS36 |
| Environment​Domain​Tests | Unitaria | Laboratory Management | registration normalizes code and starts without usage; registration rejects missing or oversized data; usage can change but not be reassigned to the same value; (+1 más) (4) | TS15–TS25 |
| Environment​Integration​Tests | Integración | Laboratory Management | quality manager registers lists updates and classifies environments; environments of another laboratory are not available; laboratory operator can consult but not change environments (3) | TS15–TS25 |
| Staff​Account​Integration​Tests | Integración | Laboratory Management | registered staff signs in with temporary credentials and must change the password; only quality managers register staff and emails are unique; staff cannot manage the subscription and auditors only consult; (+2 más) (5) | TS15–TS25 |
| Profile​Domain​Tests | Unitaria | Profile Management | personal data is validated and blank optional values are cleared; the profile tells when the name changed; only real images up to two megabytes are accepted as photos (3) | TS100–TS102 |
| Profile​And​Notification​Integration​Tests | Integración | Profile Management | each person keeps a profile that the quality manager sees in the staff list; a person changes the username and email of the account with the current password; the laboratory is notified of what others do with its alerts and batches (3) | TS100–TS102 |
| Reporting​Tests | Unitaria | Reporting & Audit | empty repository produces no invented metric or health score; counts use only the requested laboratory records; unresolved alerts are counted only for the equipment of the laboratory; (+5 más) (8) | TS91–TS92 |
| Batch​Report​Pdf​Tests | Unitaria | Reporting & Audit | empty deviations produce a short record without fabricated scores; included alerts produce counts charts and traceable details; excluded alerts are not leaked into summary or details; (+1 más) (4) | TS91–TS92 |
| Period​Report​Tests | Unitaria | Reporting & Audit | environmental pdf shows indicators alerts actions and method; inventory pdf shows stock lots expiration and containers; inventory csv has one column per value; (+5 más) (8) | TS91–TS92 |
| Reporting​Indicators​Integration​Tests | Integración | Reporting & Audit | indicators summarize the readings of the period with time in range and deviations; the environmental report combines indicators alerts and actions of each environment; the inventory report lists raw materials lots and quantities; (+1 más) (4) | TS91–TS92 |
| Stock​Unit​Tests | Unitaria | Shared | accepts unit aliases but never implicitly converts mass to volume; registration does not round stock or allow fractional countable units (2) | Todas (TS05) |
| Open​Api​Documentation​Tests | Integración | Shared | groups every operation by the first segment after the api version (1) | Todas (TS05) |
| Error​Message​Localization​Tests | Unitaria | Shared | spanish requests receive the general message in spanish and keep the details; english requests keep the message of the error even on a spanish machine (2) | Todas (TS05) |
| Rest​Api​Integration​Tests | Integración | Shared | alerts are acknowledged and resolved as sub resources by the authenticated user; bpm parameter ranges are resources of the equipment identified by their name; created laboratories and users answer with their location (3) | Todas (TS05) |
| Stripe​Webhook​Tests | Unitaria | Payments & Subscriptions | unpaid checkout never grants access; paid checkout waits for active stripe subscription; active paid checkout persists subscription and payment without laboratory; (+9 más) (12) | TS09–TS14 |
| Subscription​Payment​Recording​Tests | Unitaria | Payments & Subscriptions | a payment needs a checkout session or a provider payment; a renewal is recorded next to the other payments without checkout session; the same invoice is not recorded twice (3) | TS09–TS14 |
| Subscription​Plan​Seed​Integration​Tests | Integración | Payments & Subscriptions | startup creates the catalog plans only once; stored plans are not changed and a taken stripe price is not reused (2) | TS09–TS14 |
| Subscription​Access​Tests | Unitaria | Payments & Subscriptions | active future period allows access before laboratory creation; expired or unknown periods never grant access; cancelled or unpaid subscription does not grant access; (+3 más) (6) | TS09–TS14 |
| Subscription​Plan​Tests | Unitaria | Payments & Subscriptions | preserves finite equipment allowances; represents unlimited equipment without an invented numeric limit; rejects negative equipment limits; (+2 más) (5) | TS09–TS14 |
| Stripe​Webhook​Controller​Tests | Unitaria | Payments & Subscriptions | paid invoice records the renewal; events without a valid signature are refused (2) | TS09–TS14 |
| Tracking​Query​Tests | Unitaria | Tracking & Telemetry | an action of the device also counts as communication; device requires review when silent for longer than the expected period (2) | TS49–TS52, TS65–TS67 |
| Environmental​Profile​Tests | Unitaria | Tracking & Telemetry | a value is normal inside the normal range warning up to the critical limits and critical beyond; contradictory or incomplete limits are rejected; an environment only configures the metrics of its environmental device; (+3 más) (6) | TS49–TS52, TS65–TS67 |
| Tracking​Integration​Tests | Integración | Tracking & Telemetry | a quality manager configures the air quality of an environment with its environmental device; a container monitor has thresholds and actuation rules that need them; readings are evaluated and the deviations of an incident share one alert; (+2 más) (5) | TS49–TS52, TS65–TS67 |

**Edge API.** Cada módulo de prueba simula el Monitor de Ambiente, el Monitor de Contenedor o el Cloud según el caso, con una base SQLite temporal. Las Technical Stories TS60–TS64 de sincronización estaban planificadas para el Sprint 3 y se adelantaron en este sprint.

| Módulo de prueba | Comportamientos verificados (pruebas) | Technical Stories relacionadas |
|------------------|---------------------------------------|--------------------------------|
| test_​api | signs in registered device with its type; rejects invalid device credentials; rejects missing api key; (+5 más) (8) | TS53–TS59 |
| test_​cli | registered container monitor signs in with the key shown once; rejects duplicate registration and unknown type; rotated key replaces the previous one; (+2 más) (5) | TS53, TS54 |
| test_​cloud_​http | the sync command sends what the nodes sent to the edge; reads the registry over http with the gateway api key; the sync command reports rejected credentials (3) | TS61–TS64 |
| test_​cloud_​session | sends api key on every request without sign in; rejects invalid or forbidden gateway credentials; reports an unreachable or failing cloud; (+2 más) (5) | TS61–TS64 |
| test_​config | loads selected dotenv and process environment overrides it; production defaults are secure; requires settings to be defined in file or process environment; (+8 más) (11) | — |
| test_​iam_​application | registers device with a random key kept only as a verifier; rejects a second registration of the same device; rotation and revocation change which key is accepted; (+2 más) (5) | TS53, TS54 |
| test_​iam_​domain | encoded verifier round trips without disclosing secret; new verifiers are a sha256 digest of the key; still accepts the pbkdf2 verifiers stored before; (+7 más) (10) | TS53, TS54 |
| test_​iam_​registration | the second registration is refused and the first key keeps working (1) | TS53, TS54 |
| test_​sync_​boundary | tracking does not depend on sync; sync uses the model of tracking but not its infrastructure (2) | — |
| test_​sync_​profiles | translates the profile the node applies; a node without profile has none and other answers stop; copies the profiles of placed nodes and drops the rest; (+2 más) (5) | TS64 |
| test_​sync_​registry | normalizes the synchronization time to utc; rejects invalid cloud registrations; translates the iot devices of the gateway; (+15 más) (18) | TS64 |
| test_​sync_​telemetry | only a pending record takes the answer of the cloud; sends environmental readings to the environment route; sends container readings and actions to the container monitor route; (+11 más) (14) | TS61–TS63 |
| test_​tracking_​domain | normalizes to utc and accepts the clock tolerance; rejects naive and future times; profile version is a non negative integer; (+8 más) (11) | TS55–TS57 |
| test_​tracking_​pending | reads only the pending records of the given nodes; counts the pending records of the other nodes (2) | TS60 |
| test_​tracking_​profiles | accepts open sides and the rules of the cloud; rejects thresholds the cloud would reject; rejects rules that do not start a response; (+5 más) (8) | TS58, TS59 |
| test_​tracking_​telemetry | translates iam authentication to the tracking concept; creates one pending reading per metric received now; rejects unknown nodes other types and empty readings; (+12 más) (15) | TS55–TS57 |
| test_​wsgi | the production server starts the synchronization; the development reloader starts it only in the serving process; nothing starts while the synchronization is disabled; (+1 más) (4) | — |

**Web Application.** Las pruebas se agrupan por Bounded Context, siguiendo la estructura de carpetas de la aplicación.

| Bounded Context | Archivos | Pruebas | Comportamientos verificados (ejemplos) |
|-----------------|----------|---------|----------------------------------------|
| Compliance & Alerting | 19 | 180 | joins the open alerts of every environment; reads only the chosen environment; names the environment that failed without hiding the alerts of the others; (+177 más) |
| Shared | 26 | 118 | reads the status of the errors of the API endpoints; reads the status of the HTTP errors, 0 when the server could not be reached; returns null for errors that did not come from a request; (+115 más) |
| Inventory Management | 23 | 72 | warns for observed and rejected receipts and deduplicates production batches; removes the warning when the receipt is released and retains unlinked legacy consumption; keeps an empty material with historical consumption, labels and unrecorded balances; (+69 más) |
| Reporting & Audit | 13 | 52 | sorts activity newest first without mutating the API result; cancels stale activity and clears previous data when the staff changes; shows an error without retaining another staff member on failure; (+49 más) |
| Product Batch Management | 17 | 48 | tells process equipment from IoT devices; is usable only while it is operational; can be assigned to a batch while active, with an account and not an auditor; (+45 más) |
| Payments & Subscriptions | 4 | 26 | asks nothing when no plan was chosen; finds the switch to another plan, and spends the choice; takes the same plan with another billing cycle as a different plan; (+23 más) |
| Equipment Management | 7 | 14 | accepts valid data, including negative limits; does not send a range where the minimum is not lower than the maximum; sends a valid configuration; (+11 más) |
| Profile Management | 3 | 13 | shows the initials and full name when the profile has no photo; shows the photo instead of the initials when one is available; opens and loads the profile when onboarding becomes ready; (+10 más) |
| Tracking & Telemetry | 4 | 13 | follows only environmental devices and container monitors; translates the equipment into a device of Tracking; retains failed actuation events and the unfiltered period query; (+10 más) |
| Identity & Access Management | 5 | 12 | opens the page to visitors; sends whoever already has a session to the dashboard, instead of offering to sign in; sends visitors to sign in, remembering where they were going; (+9 más) |
| Laboratory Management | 5 | 9 | redirects the old material URL to Inventory while preserving the identifier; offers the quality manager the edition and the usage of each environment; lets the other roles only consult the environments; (+6 más) |
| Rutas de la aplicación | 2 | 7 | keeps the plan of the link even when the visitor is already signed in and is sent to the dashboard; keeps the plan of the link for a visitor who stays on the sign-up page; keeps the plan of a link followed from another page of IAM; (+4 más) |

**Mobile Application.** Las pruebas siguen las capas de la aplicación Flutter; la prueba de arquitectura verifica que cada Bounded Context solo se comunique con otro a través de su API.

| Archivo de prueba | Capa | Comportamientos verificados (pruebas) |
|-------------------|------|---------------------------------------|
| application/​use_​cases_​test.dart | application | sign in trims the username and stores the session; sign in rejects empty credentials without calling the backend; restore clears an expired session; (+22 más) (25) |
| architecture/​architecture_​test.dart | architecture | the layer rules hold in lib/; rejects what the guide forbids; accepts what the guide allows (3) |
| domain/​batch_​decision_​day_​test.dart | domain | a decision cannot be dated before the batch started; a batch that starts later can still be decided today; without a start date the calendar goes back five years (3) |
| domain/​domain_​test.dart | domain | reads exp claim and detects expiration; malformed token has no expiration but empty token is expired; parses every backend role, including the auditor; (+27 más) (30) |
| infrastructure/​infrastructure_​test.dart | infrastructure | normalizes the base url to /api/v1; maps HTTP statuses and QualiTrack ErrorResource; detects onboarding requirement, including the password change; (+17 más) (20) |
| presentation/​batch_​detail_​test.dart | presentation | quality managers decide from a fixed bar while the batch awaits review; no decision bar once the batch is released; other roles read the batch without the decision bar (3) |
| presentation/​batch_​history_​test.dart | presentation | reads the name and values of an event recorded by the backend; ignores text with another shape; joins the audit log and the compliance events, newest first, each decision once; (+3 más) (6) |
| presentation/​batch_​list_​test.dart | presentation | clearing the filters shows every batch and empties the search; the FAB menu filters by status and lists each count; the summary card shows the status in use and how many batches match; (+1 más) (4) |
| presentation/​bloc_​test.dart | presentation | no stored session → unauthenticated; ready onboarding → authenticated; temporary password → password change, then authenticated once changed; (+20 más) (23) |
| presentation/​equipment_​list_​test.dart | presentation | filters through a FAB menu that fits a small phone; names an Edge Gateway instead of showing its type code; the Edge Gateways filter keeps only the gateways (3) |
| presentation/​inventory_​screen_​test.dart | presentation | filters the stock through a FAB menu with a summary card (1) |
| presentation/​more_​screen_​test.dart | presentation | groups the destinations in sections without overflow; hides the administration section from other roles; signs out with the profile button, only after confirming (3) |
| presentation/​navigation_​test.dart | presentation | the app router has the tabs by importance, alerts right after Home; each tab of the bar opens its own branch; content tabs keep where they were left; More always opens on its menu; (+1 más) (4) |
| presentation/​reports_​bloc_​test.dart | presentation | a slow answer of the period picked before never replaces the period on screen; nor does its failure; the latest period is shown when its answer arrives last; (+1 más) (4) |
| presentation/​router_​and_​l10n_​test.dart | presentation | protected routes require a session; authenticated users leave public routes; a temporary password confines the user to the password change; (+6 más) (9) |
| widget/​home_​layout_​test.dart | widget | Home shows the four cards on a without scrolling; the cards keep their own height and the latest alerts fill the rest; without open alerts the latest alerts are left out, not repeated; (+4 más) (7) |
| widget/​orientation_​test.dart | widget | only the screen inside LandscapeAllowed may turn, while it is the visible one; the app is laid out for portrait (2) |
| widget/​widgets_​test.dart | widget | validates required fields and has no sign-up entry; submits credentials and toggles password visibility; shows backend errors and is localized in Spanish; (+19 más) (22) |

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/testing-evidence/backend-tests-ci.jpg" alt="Pruebas del Cloud REST API en GitHub Actions" width="90%">
  <p><em>Figura: Ejecución de la suite del Cloud REST API en GitHub Actions. Esta evidencia muestra el workflow de integración continua del pull request de la versión 1.2.0, que ejecuta con Maven las 229 pruebas unitarias y de integración, todas aprobadas.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/testing-evidence/web-tests-ci.jpg" alt="Pruebas de la Web Application en GitHub Actions" width="90%">
  <p><em>Figura: Ejecución de la suite de la Web Application en GitHub Actions. Esta evidencia muestra los 128 archivos y las 870 pruebas de Vitest aprobados antes de compilar la versión 2.5.0.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/testing-evidence/mobile-tests-ci.jpg" alt="Pruebas de la Mobile Application en GitHub Actions" width="90%">
  <p><em>Figura: Ejecución de la suite de la Mobile Application en GitHub Actions. Esta evidencia muestra las 174 pruebas de Flutter aprobadas en el pull request de la rama feature/refactor-ui, después del análisis estático con flutter analyze.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/testing-evidence/edge-tests-ci.jpg" alt="Pruebas del Edge API en GitHub Actions" width="90%">
  <p><em>Figura: Ejecución de la suite del Edge API en GitHub Actions. Esta evidencia muestra las 127 pruebas de unittest aprobadas y, en la lista de jobs, la prueba del despliegue con Docker Compose (docker) y la imagen para la Raspberry Pi 4 (docker-arm64) también aprobadas.</em></p>
</div>

Commits relacionados con las pruebas en este sprint (64):

**qualitrack-web-app**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​dependencies | 6367f98 | fix​(i18n): provide the translate service in the component specs | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​ci-unit-tests | 50cce4c | ci: run the unit tests in the pull request build | — | 27/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | c4dbf9a | test​(routes): cover the redirects from view-named paths to semantic routes | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​semantic-routes | 6b4629c | test​(routes): cover the redirects from view-named paths to semantic routes | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | a6edba8 | refactor​(report-generator): remove unused card components and spec | — | 01/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 34fa0bd | test​(ca): add browser checks of the active alerts | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | develop | 43556b6 | test​(ca): add browser checks of the detail panel | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​session-and-pending | 6c7831a | test​(e2e): bring the browser checks up to the current screens | Dashboard, inventory, report generator, onboarding, Stripe catalog and responsive were written for screens and endpoints that no longer exist. The checks that create accounts through the real API… | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​refactor-views-review | d24242f | test: update the specs of the views that gained a link and an icon | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​inventory-review | b0ccf30 | test​(inventory): cover the components of the views and the corrections of the store | Also removes legacy​Detail​Batch​Label, unused since the history table names its batches, and declares every endpoint of Inventory​Api before its constructor. | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​batch-inventory-review | a4add6a | test​(inventory): cover the request guards, the reload and the catalogue stats | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​inventory | 1eb4f2d | test​(inventory): update catalogue tests for tab navigation | — | 11/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 1b7cd78 | test​(ca): update the alerts browser test to the redesigned module | - Read the urgent count from the red chip instead of the banner, and check the groups by severity - Open an alert from the title of its row, and tell who has it from the owner of the row - Check the… | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | feature/​refactor-ui | 5bec886 | test​(reports): provide the router to the audit log viewer spec | The page now opens with the shared header, whose tabs are router links, so the component needs Activated​Route. The CI unit tests failed on it. | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-web-app | fix/​develop-review | 768fa97 | test: follow the Register button of the material form and say how to run the alerts checks | - The inventory browser test looked for a Save button, but #105 named the main button of the material registration Register like every other form, so the test stopped at it. It now uses… | 13/11/2026 |

**qualitrack-platform**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | c348649 | test​(ca): cover deviation alert command handling | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | b3b98e8 | test​(ca): add test Alert​Lifecycle | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ca | bd451f6 | test​(ca): add test from deviation alert | — | 30/10/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tests-by-package | 074bd9c | test: organize the tests by bounded context and layer | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​ddd-tests-by-package | 9b41d45 | docs​(changelog): tests organized by bounded context and layer | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​password-recovery-attempts-lock | a543e33 | test​(iam): reproduce the password recovery attempts race | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.1.0 | c6200d3 | docs​(changelog): REST API tests RUC range | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | release/​v1.1.0 | 8e7092b | test​(shared): give the REST API tests their own RUC range | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch | d590e76 | test​(batch): cover the batch commands, decisions and storage | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch | bcfffee | test​(batch): cover the laboratory batch list, invalid requests and rejected traceability | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-environment-devices | 104f6f3 | test​(equipment): cover the equipment list of an environment | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-edge-gateway-capacity | 700138c | test​(equipment): cover edge gateway allocation, device registry and coverage | — | 10/11/2026 |

**qualitrack-mobile-application**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 05b171e | test​(batch): adapt test suite to the restructured batch context | Point imports at the new entities, interface, logic and infrastructure files, exercise Batch​Facade​Service instead of the removed use case classes, and test Batch​List​Bloc and Batch​Detail​Bloc with the… | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6298942 | ci: run flutter analyze and test on feature pull requests into develop | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 0501d6f | docs​(architecture): document the dependency rules enforced by the test | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 6d3490c | test​(architecture): fail when a file breaks the layer or bounded-context rules | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | c9356e4 | test​(profile): adapt tests to the restructured profile | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | b14d38e | test​(subscription): adapt tests to the restructured subscription | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | c0e7fd7 | test​(laboratory): adapt tests to the restructured laboratory | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 07ae276 | test​(inventory): adapt tests to the restructured inventory | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | a787c27 | test​(equipment): adapt tests to the restructured equipment | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 4b5332b | test​(tracking): adapt tests to the restructured tracking | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | f49e116 | test​(compliance): adapt tests to the restructured compliance | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | d05dac5 | test​(compliance): use a single repository mock | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | develop | 8fa2d6a | test​(iam): adapt tests to the restructured iam | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​repoting_​audit | cee4dcb | test​(reporting): cover the audit trail and trend ordering through the facade | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​batch-redesign | e4a446f | test​(batch): expect the newest batch first after clearing the filters | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 23f43e7 | refactor​(batch): adapt the batch list tests to the FAB menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 594dcf1 | refactor​(compliance): adapt the alerts tests to the FAB menu, search and mobile cards. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | c92f21c | feat​(app): test that the navigation tabs follow the router branches. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 3b56c44 | feat​(app): test the More sections and the confirmed sign out. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 65a4203 | feat​(command-center): test that the home fits every screen without scrolling. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | a81b9cd | feat​(batch): test the decision bar of the batch detail. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | 3de03fe | feat​(equipment): test the equipment FAB menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-screens | c996239 | feat​(inventory): test the inventory FAB menu. | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | 63d2f41 | test: cover the error titles by cause and the elapsed times | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-mobile-application | feature/​refactor-ui | d3a3765 | test: cover the translated backend codes and the amber low stock | — | 12/11/2026 |

**qualitrack-edge-service**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | 121bd57 | ci: run the unit tests on pull requests | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | 38bb34e | test​(iam): cover the device aggregate, the configuration and the authentication endpoint | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | 866ca5f | test: close the test database before removing its folder | Windows cannot delete the SQLite file while a connection keeps it open. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | 57e23df | test​(tracking): add retry logic for purge after repository failure | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | ea481b6 | test​(tracking): add tests for rejecting malformed equipment lists and preserving local devices | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​tracking | 1ea758e | test​(tracking): add retry logic for actuation after cloud outage | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 6571b98 | test​(edge): update cloud session tests for api key authentication | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | e8df9d3 | test​(tracking): align device registry tests with gateway endpoints | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | 0a51726 | test​(tracking): update profile tests for gateway endpoints | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | e30680e | test​(tracking): update telemetry tests for gateway routes | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​edge-integration | f563f64 | test​(edge): update http integration tests for gateway authentication | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 14002ee | test​(sync): check that tracking does not depend on sync | — | 11/11/2026 |

#### 6.2.2.6. Execution Evidence for Sprint Review

En este sprint se publicó la primera versión de la Landing Page y de la Web Application. La Landing Page permite a los
visitantes conocer la propuesta de valor, el funcionamiento, los beneficios, el equipo y los planes de QualiTrack en
inglés o español. La Web Application permite al responsable de calidad crear su cuenta, contratar su plan y registrar su
laboratorio; y a todo el personal supervisar las condiciones ambientales, el inventario, los equipos, los lotes y las
alertas según su rol.

La revisión del sprint verificó que un visitante pueda recorrer la Landing Page, comprender la propuesta de valor y
llegar a la Web Application desde sus llamadas a la acción; y que, dentro de la aplicación, cada rol complete sus flujos
principales con datos reales del laboratorio de demostración SENKA LAB, en inglés y en español.

- **Landing
  Page:** [https://iotech-2620-8741.github.io/qualitrack-landing-page/](https://iotech-2620-8741.github.io/qualitrack-landing-page/)
- **Web Application:** [https://qualitrack-iotech.web.app](https://qualitrack-iotech.web.app)
- **Video de Execution Evidence del Sprint 1:** [https://shorturl.at/gppVX](https://shorturl.at/gppVX)

**Landing Page**

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-header.png" alt="Landing Page - Navigation bar" width="90%">
  <p><em>Figura: Encabezado y barra de navegación de la Landing Page. Esta vista evidencia el acceso directo a las secciones Home, Features, Benefits, About Us y Plans, el selector de idioma y el botón que lleva a la Web Application.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-home.png" alt="Landing Page - Home" width="90%">
  <p><em>Figura: Sección Home. Esta pantalla valida la comunicación inicial de la propuesta de valor, The Future of Pharmaceutical Quality Management, y presenta en tarjetas lo que ofrece QualiTrack: monitoreo IoT en tiempo real, cumplimiento BPM automatizado y registros de auditoría inmutables.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-features.png" alt="Landing Page - Features" width="90%">
  <p><em>Figura: Sección Features. Esta evidencia muestra en un acordeón las funcionalidades clave de la plataforma, como la integración de telemetría IoT, el motor de cumplimiento BPM, las alertas instantáneas de desviación y el panel de analítica y KPI.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-benefits.png" alt="Landing Page - Benefits" width="90%">
  <p><em>Figura: Sección Benefits. Esta vista presenta las ventajas de QualiTrack para la manufactura farmacéutica, como la reducción del tiempo de preparación de auditorías de DIGEMID y la eliminación de errores humanos en los registros críticos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-about.png" alt="Landing Page - About Us" width="90%">
  <p><em>Figura: Sección About Us. Esta evidencia presenta la visión de QualiTrack de digitalizar la supervisión de los procesos de manufactura y el cumplimiento de las Buenas Prácticas de Manufactura exigidas por DIGEMID, sus pilares (integración IoT, trazabilidad inmutable y cumplimiento regulatorio) y los perfiles de los integrantes del equipo de IoTech.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-plans.png" alt="Landing Page - Plans" width="90%">
  <p><em>Figura: Sección Plans. Esta vista permite comparar los planes Standard Lab y Enterprise con su precio, periodicidad y características, alternando entre la modalidad mensual y anual.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-testimonials.png" alt="Landing Page - Testimonials" width="90%">
  <p><em>Figura: Sección de testimonios y llamada final a la acción. Esta evidencia muestra las opiniones de responsables de calidad y producción sobre QualiTrack y el botón Get Started que lleva a la Web Application.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-footer.png" alt="Landing Page - Footer" width="90%">
  <p><em>Figura: Footer de la Landing Page. Esta evidencia muestra el cierre de la navegación con accesos a las secciones, los datos de contacto (correo, teléfono y ubicación) y los enlaces a los Términos de Servicio y la Política de Privacidad.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-legal.png" alt="Landing Page - Terms of Service and Privacy Policy" width="90%">
  <p><em>Figura: Páginas de Términos de Servicio y Política de Privacidad. Esta vista evidencia la información legal que el visitante puede consultar antes de contratar el servicio.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/landing-es-mobile.png" alt="Landing Page - Spanish and mobile view" width="90%">
  <p><em>Figura: Landing Page en español en un dispositivo móvil. Esta evidencia valida el cambio de idioma entre inglés y español y la adaptación del diseño a pantallas pequeñas en la portada, la sección de servicios y los planes.</em></p>
</div>

**Web Application**

*Acceso y configuración inicial*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-sign-in.png" alt="Web Application - Sign In" width="90%">
  <p><em>Figura: Inicio de sesión. Esta pantalla valida el acceso del responsable de calidad, el personal operativo y los auditores con su usuario o correo, con mensajes claros cuando las credenciales no son válidas.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-sign-up.png" alt="Web Application - Sign Up" width="90%">
  <p><em>Figura: Registro de cuenta del responsable de calidad. Esta evidencia muestra los datos que se validan antes de crear la cuenta: usuario, correo único para recuperar la contraseña y contraseña con su confirmación.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-password-recovery.png" alt="Web Application - Password recovery" width="90%">
  <p><em>Figura: Recuperación de contraseña. Esta vista evidencia la solicitud con el usuario o el correo de la cuenta, a cuyo correo se envía un código de seis dígitos para restablecer la contraseña.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-onboarding-plans.jpg" alt="Web Application - Plan selection" width="90%">
  <p><em>Figura: Selección del plan de suscripción. Esta evidencia muestra los planes Standard Lab y Enterprise en modalidad mensual y anual, con sus cuentas de usuario y dispositivos conectados, que el responsable de calidad elige antes de usar las funciones operativas.</em></p>
</div>

*Panel de control*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-dashboard.jpg" alt="Web Application - Dashboard" width="90%">
  <p><em>Figura: Panel de control del laboratorio. Esta evidencia reúne en una sola vista los equipos operativos, los lotes en proceso, las alertas abiertas, las materias primas con stock bajo, la telemetría reciente y el estado de la suscripción.</em></p>
</div>

*Laboratorio, ambientes y personal*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-lab-profile.jpg" alt="Web Application - Laboratory profile" width="90%">
  <p><em>Figura: Perfil del laboratorio. Esta vista muestra los datos registrados de la instalación y permite actualizarlos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-environments.jpg" alt="Web Application - Environments" width="90%">
  <p><em>Figura: Ambientes del laboratorio. Esta evidencia muestra el registro de ambientes y la definición de su uso (laboratorio, producción, almacén de materias primas o de producto), que determina qué se puede almacenar en cada uno.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-staff.jpg" alt="Web Application - Staff" width="90%">
  <p><em>Figura: Personal del laboratorio. Esta pantalla muestra el registro de operarios y auditores, su cargo, su estado y la consulta de su actividad registrada.</em></p>
</div>

*Inventario de materias primas*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-inventory-catalogue.jpg" alt="Web Application - Raw materials" width="90%">
  <p><em>Figura: Catálogo de materias primas por ambiente. Esta vista evidencia el stock utilizable y físico de cada material y resalta los que están por debajo del stock mínimo.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-inventory-detail.jpg" alt="Web Application - Raw material detail" width="90%">
  <p><em>Figura: Detalle de una materia prima. Esta evidencia muestra sus lotes recibidos con estado y vencimiento, su contenedor, el historial de movimientos y los lotes de producto que la consumieron.</em></p>
</div>

*Equipos y dispositivos IoT*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-equipment-list.jpg" alt="Web Application - Equipment" width="90%">
  <p><em>Figura: Equipos y dispositivos IoT. Esta pantalla lista los equipos del laboratorio con su ambiente y estado operativo, e identifica los dispositivos ambientales y monitores de contenedor con su estado de conexión.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-equipment-detail.jpg" alt="Web Application - Equipment detail" width="90%">
  <p><em>Figura: Detalle de un equipo. Esta evidencia reúne sus datos generales, la reubicación entre ambientes, el registro de cambios de su estado operativo y su historial de mantenimiento con el técnico responsable.</em></p>
</div>

*Monitoreo ambiental*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-telemetry-monitoring.jpg" alt="Web Application - Telemetry dashboard" width="90%">
  <p><em>Figura: Monitoreo ambiental en tiempo real. Esta vista muestra las lecturas actuales de calidad de aire, temperatura, humedad y luminosidad con su estado (normal, advertencia o crítico) frente a los rangos del perfil vigente.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-telemetry-history.jpg" alt="Web Application - Telemetry history" width="90%">
  <p><em>Figura: Historial de telemetría. Esta evidencia grafica las lecturas de un periodo de hasta 31 días junto con los rangos normal y crítico, resaltando las desviaciones.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-environmental-profiles.jpg" alt="Web Application - Environmental profiles" width="90%">
  <p><em>Figura: Perfiles ambientales. Esta pantalla evidencia la configuración versionada de los límites normal y crítico por ambiente y por contenedor, que clasifican cada lectura como normal, advertencia o crítica.</em></p>
</div>

*Productos y lotes*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-products.jpg" alt="Web Application - Products" width="90%">
  <p><em>Figura: Catálogo de productos farmacéuticos por ambiente. Esta vista muestra los productos registrados que pueden fabricarse en el laboratorio.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batches.jpg" alt="Web Application - Production batches" width="90%">
  <p><em>Figura: Lotes de producción. Esta evidencia lista los lotes con su producto, cantidad y estado (pendiente, en proceso, liberado o rechazado).</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batch-detail.jpg" alt="Web Application - Batch detail" width="90%">
  <p><em>Figura: Detalle de un lote en proceso. Esta pantalla muestra el registro de consumos de materia prima desde un lote liberado de un ambiente, que descuenta el stock del inventario, y el historial de consumos del lote.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batch-traceability.jpg" alt="Web Application - Batch traceability" width="90%">
  <p><em>Figura: Trazabilidad de un lote liberado. Esta evidencia reúne las materias primas con sus lotes de origen, los equipos, el personal, el contenedor donde se almacenó el producto y la decisión de calidad firmada con su hash SHA-256.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-batch-release.jpg" alt="Web Application - Batch release" width="90%">
  <p><em>Figura: Liberación de un lote. Esta vista evidencia que el responsable de calidad libera el lote con su fecha y sus notas de calidad, y que la liberación queda firmada con su usuario y ya no permite modificar el lote.</em></p>
</div>

*Alertas y avisos*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-alerts.jpg" alt="Web Application - Deviation alerts" width="90%">
  <p><em>Figura: Panel de alertas de desviación. Esta pantalla muestra las alertas por estado y severidad, con el ambiente, el dispositivo y la cantidad de desviaciones de cada incidente.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-alert-detail.jpg" alt="Web Application - Alert detail" width="90%">
  <p><em>Figura: Detalle de una alerta. Esta evidencia muestra la inspección técnica de la desviación, las acciones automáticas del contenedor y las acciones para atenderla y resolverla con notas.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-notifications.jpg" alt="Web Application - Notifications" width="90%">
  <p><em>Figura: Campana de avisos y preferencias de notificación. Esta vista evidencia los avisos de alertas y lotes con su contador de no leídos, y la elección de qué avisos llegan a la aplicación y al correo.</em></p>
</div>

*Indicadores, reportes y auditoría*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-kpi-dashboard.jpg" alt="Web Application - Environmental summary" width="90%">
  <p><em>Figura: Resumen ambiental. Esta pantalla muestra, para el periodo elegido (24 horas, 7 o 31 días) y por ambiente, la cantidad de lecturas, el promedio, el mínimo, el máximo y la última lectura de cada variable de los dispositivos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-reports.jpg" alt="Web Application - Reports" width="90%">
  <p><em>Figura: Generación de reportes. Esta evidencia muestra los reportes de lote, ambiental y de inventario en PDF, y la exportación del historial técnico y de mantenimiento de los equipos.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-audit-log.jpg" alt="Web Application - Audit log" width="90%">
  <p><em>Figura: Registro de auditoría. Esta vista evidencia quién realizó cada acción y cuándo, con filtros por equipo, lote y periodo.</em></p>
</div>

*Perfil y suscripción*

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-profile.jpg" alt="Web Application - Profile" width="90%">
  <p><em>Figura: Perfil del usuario. Esta pantalla muestra los datos personales y la foto de perfil, junto con la información de la cuenta (los datos de identidad y teléfono se ocultaron en la imagen).</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-billing.jpg" alt="Web Application - Billing summary" width="90%">
  <p><em>Figura: Resumen de la suscripción. Esta evidencia muestra el plan vigente, el periodo de facturación, el historial de pagos y la opción de cancelar la renovación.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-1/execution%20evidence/web-language-es.jpg" alt="Web Application - Spanish interface" width="90%">
  <p><em>Figura: Interfaz en español. Esta vista valida la internacionalización de la Web Application en inglés y español con el selector de idioma.</em></p>
</div>

En conjunto, estas evidencias muestran que el Sprint 1 entregó una Landing Page navegable y bilingüe que comunica la
propuesta de valor de QualiTrack, y una Web Application desplegada e integrada con el RESTful API que cubre el ciclo
completo del laboratorio: configuración inicial, inventario, equipos y dispositivos IoT, monitoreo ambiental,
trazabilidad y liberación de lotes, atención de alertas y generación de reportes.

#### 6.2.2.7. Services Documentation Evidence for Sprint Review

En el Sprint 2 el Cloud REST API quedó documentado con OpenAPI en su totalidad y se documentó por primera vez la integración con el Edge. La documentación desplegada en Swagger UI describe 133 operaciones, 9 de ellas nuevas en este sprint: el registro de Edge Gateways y la emisión de su API key, la cobertura de los Edge Gateways de cada ambiente, los equipos de un ambiente y los cuatro endpoints con los que un Edge Gateway lee sus dispositivos IoT y envía la telemetría, los eventos de actuación y los perfiles ambientales. Además, los endpoints de Tracking & Telemetry y del Edge Gateway documentan cada campo con su descripción y un ejemplo, y sus respuestas con los códigos posibles. Las rutas del Cloud comienzan con `/api/v1`; las del Edge Gateway se autentican con el encabezado `X-API-Key` y el resto, salvo la autenticación y el webhook de Stripe, con `Authorization: Bearer <JWT>`. Los errores usan la estructura `ErrorResource {code, message, details}`.

El Edge API, que reciben los nodos ESP32 en la red local de cada instalación, documenta sus rutas, encabezados, cuerpos y respuestas en el README y en los docstrings de su capa de interfaces, y sus decisiones en los Architecture Decision Records del repositorio.

- **Documentación desplegada del Cloud REST API (Swagger UI):** [QualiTrack Swagger Documentation](https://iotech-qualitrack-api.wonderfulocean-c1f38f8b.chilecentral.azurecontainerapps.io/swagger-ui/index.html)
- **Especificación OpenAPI:** `/v3/api-docs` del mismo servidor; en local `http://localhost:8080/swagger-ui/index.html`
- **Repositorio del Cloud REST API:** [IoTech-2620-8741/qualitrack-platform](https://github.com/IoTech-2620-8741/qualitrack-platform)
- **Documentación del Edge API:** [README](https://github.com/IoTech-2620-8741/qualitrack-edge-service#readme) y [Architecture Decision Records](https://github.com/IoTech-2620-8741/qualitrack-edge-service/blob/develop/docs/adrs.md) de [IoTech-2620-8741/qualitrack-edge-service](https://github.com/IoTech-2620-8741/qualitrack-edge-service)

Las siguientes tablas presentan las operaciones del Cloud REST API por Bounded Context, con su verbo HTTP, la sintaxis de llamada, sus parámetros y los códigos de respuesta (con el recurso devuelto en las respuestas exitosas). Las operaciones agregadas en este sprint se marcan como *(nuevo)*.

**Edge Gateways**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​edge-gateways/​{device​Id}/​iot-devices | Get Edge Gateway IoT devices *(nuevo)* | X-API-Key (header), device​Id (path) | 200 (Edge​Gateway​Iot​Device[]), 401, 403 |
| **POST** /​edge-gateways/​{gateway​Id}/​iot-devices/​{iot​Device​Id}/​actuation-events | Record Edge Gateway actuation event *(nuevo)* | X-API-Key (header), gateway​Id (path), iot​Device​Id (path), body: Record​Actuation​Event​Request | 200 (Actuation​Event), 201 (Actuation​Event), 400, 401, 403 |
| **GET** /​edge-gateways/​{gateway​Id}/​iot-devices/​{iot​Device​Id}/​environmental-profile | Get IoT environmental profile *(nuevo)* | X-API-Key (header), gateway​Id (path), iot​Device​Id (path) | 200 (Environmental​Profile), 401, 403, 404 |
| **POST** /​edge-gateways/​{gateway​Id}/​iot-devices/​{iot​Device​Id}/​telemetry-measurements | Record IoT telemetry from an Edge Gateway *(nuevo)* | X-API-Key (header), gateway​Id (path), iot​Device​Id (path), body: Record​Measurement​Request | 200 (Measurement), 201 (Measurement), 400, 401, 403 |

**Compliance & Alerting**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​batches/​{batch​Id}/​compliance-events | Get the compliance events of a batch | batch​Id (path) | 200 (Compliance​Event​Resource[]), 403 |
| **GET** /​deviation-alerts/​{alert​Id} | Get a deviation alert | alert​Id (path) | 200 (Deviation​Alert​Detail​Response), 403, 404 |
| **POST** /​deviation-alerts/​{alert​Id}/​acknowledgements | Acknowledge a deviation alert | alert​Id (path) | 201 (Deviation​Alert​Response), 403, 404, 409 |
| **POST** /​deviation-alerts/​{alert​Id}/​email-notifications | E-mail a critical alert to the laboratory | alert​Id (path) | 201 (Alert​Email​Notification), 403, 404, 409, 502 |
| **POST** /​deviation-alerts/​{alert​Id}/​resolutions | Resolve a deviation alert | alert​Id (path), body: Resolve​Alert​Request | 201 (Deviation​Alert​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-alerts | Get the deviation alerts of an environment | laboratory​Id (path), environment​Id (path), status (query, opcional), severity (query, opcional), device​Id (query, opcional), active (query, opcional) | 200 (Deviation​Alert​Response[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-alerts | Register a deviation of an environment or container | laboratory​Id (path), environment​Id (path), body: Create​Deviation​Alert​Request | 200 (Deviation​Alert​Response), 201 (Deviation​Alert​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​compliance-events | Get the compliance events of an equipment | laboratory​Id (path), equipment​Id (path) | 200 (Compliance​Event​Resource[]), 403 |
| **GET** /​users/​me/​notification-preferences | Get the notification preferences of the authenticated user | — | 200 (Notification​Preference​Resource) |
| **PUT** /​users/​me/​notification-preferences | Update the notification preferences of the authenticated user | body: Update​Notification​Preference​Request | 200 (Notification​Preference​Resource), 400 |
| **GET** /​users/​me/​notifications | Get the notifications of the authenticated user | unread (query, opcional), limit (query, opcional) | 200 (Notification[]), 400 |
| **POST** /​users/​me/​notifications/​{notification​Id}/​read-receipts | Mark a notification as read | notification​Id (path) | 201 (Notification), 404 |
| **POST** /​users/​me/​notifications/​read-receipts | Mark every notification as read | — | 201 (Notifications​Read) |
| **GET** /​users/​me/​notifications/​unread-count | Count the unread notifications of the authenticated user | — | 200 (Unread​Notifications) |

**Profile Management**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​profile | Get the profile of a staff member | laboratory​Id (path), staff​Id (path) | 200 (Profile), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​profile/​photo | Get the photo of a staff member | laboratory​Id (path), staff​Id (path) | 200, 403, 404 |
| **GET** /​users/​me/​profile | Get the profile of the authenticated user | — | 200 (Profile), 401 |
| **PUT** /​users/​me/​profile | Update the profile of the authenticated user | body: Update​Profile​Request | 200 (Profile), 400, 401 |
| **GET** /​users/​me/​profile/​photo | Get the photo of the authenticated user | — | 200, 404 |
| **PUT** /​users/​me/​profile/​photo | Replace the photo of the authenticated user | — | 200 (Profile), 400, 413, 415 |
| **DELETE** /​users/​me/​profile/​photo | Remove the photo of the authenticated user | — | 204, 401 |

**Identity & Access Management**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **POST** /​authentication/​password-recovery-requests | Request a password recovery | body: Password​Recovery​Request | 202 (Password​Recovery​Accepted), 400 |
| **POST** /​authentication/​password-resets | Reset the password with the verification code | body: Password​Reset​Request | 200 (Password​Reset​Completed), 400 |
| **POST** /​authentication/​sign-in | User sign-in | body: Sign​In​Resource | 200 |
| **POST** /​authentication/​sign-up | User sign-up | body: Sign​Up​Resource | 200 |
| **GET** /​roles | Get roles | — | 200 (Role​Resource[]) |
| **GET** /​users | Get users | — | 200 (User​Resource[]) |
| **GET** /​users/​{user​Id} | Get a user | user​Id (path) | 200 (User​Resource), 403, 404 |
| **PUT** /​users/​{user​Id}/​roles/​{role​Name} | Assign a role to a user | user​Id (path), role​Name (path) | 200 (User​Resource), 400, 404 |
| **GET** /​users/​me | Get the account of the authenticated user | — | 200 (User​Resource), 401 |
| **PUT** /​users/​me | Update the username and the e-mail | body: Update​Account​Request | 200 (Authenticated​User​Resource), 400, 401, 409 |
| **GET** /​users/​me/​onboarding | Get current user's onboarding state | — | 200 (User​Onboarding​Resource), 401 |
| **POST** /​users/​me/​password-changes | Change the password | body: Change​Password​Request | 204, 400, 401 |

**Payments & Subscriptions**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​laboratories/​{laboratory​Id}/​subscriptions | Get the subscriptions of a laboratory | laboratory​Id (path), status (query, opcional) | 200 (Subscription​Resource[]) |
| **POST** /​stripe/​webhooks | Process Stripe webhook | Stripe-Signature (header) | 200 (Stripe​Webhook​Resource) |
| **POST** /​subscription-checkout-sessions | Create subscription checkout session | body: Create​Checkout​Session​Resource | 200 |
| **GET** /​subscription-plans | Get subscription plans | — | 200 (Subscription​Plan​Resource[]) |
| **POST** /​subscriptions/​{subscription​Id}/​cancellation-requests | Cancel the renewal of a subscription | subscription​Id (path) | 201 (Subscription​Resource), 403, 404, 409 |
| **GET** /​subscriptions/​{subscription​Id}/​payments | Get the payments of a subscription | subscription​Id (path) | 200 (Subscription​Payment​Resource[]) |

**Reporting & Audit**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​batches/​{batch​Id}/​audit-logs | Get the audit log of a batch | batch​Id (path), date​From (query, opcional), date​To (query, opcional) | 200 (Audit​Log​Entry​Resource[]) |
| **GET** /​batches/​{batch​Id}/​reports | Get the reports of a batch | batch​Id (path) | 200 (Audit​Report​Resource[]) |
| **POST** /​batches/​{batch​Id}/​reports | Generate a batch traceability report | batch​Id (path), body: Generate​Batch​Report​Resource | 201 (Audit​Report​Resource), 400, 403 |
| **POST** /​laboratories/​{laboratory​Id}/​compliance-reports | Generate the environmental report of a period | laboratory​Id (path), body: Generate​Compliance​Report​Resource | 201 (Audit​Report​Resource), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​deviation-trends | Get the deviation indicators of an environment | laboratory​Id (path), environment​Id (path), from (query, opcional), to (query, opcional) | 200 (Deviation​Trend​Response[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​log-reports | Generate a log report of an equipment | laboratory​Id (path), environment​Id (path), equipment​Id (path), body: Export​Equipment​Log​Resource | 201 (Audit​Report​Resource), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​audit-logs | Get the audit log of an equipment | laboratory​Id (path), equipment​Id (path), date​From (query, opcional), date​To (query, opcional) | 200 (Audit​Log​Entry​Resource[]) |
| **POST** /​laboratories/​{laboratory​Id}/​inventory/​reports | Generate the inventory report | laboratory​Id (path), body: Generate​Inventory​Report​Request | 201 (Audit​Report​Resource), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​kpi-dashboards | Get the indicators of the laboratory | laboratory​Id (path), from (query, opcional), to (query, opcional), environment​Id (query, opcional) | 200 (Kpi​Dashboard​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​reports | Get the reports generated in the laboratory | laboratory​Id (path) | 200 (Audit​Report​Resource[]) |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​audit-logs | Get the activity of a staff member | laboratory​Id (path), staff​Id (path) | 200 (Audit​Log​Entry​Resource[]), 403, 404 |
| **GET** /​reports/​{report​Id} | Get audit report by ID | report​Id (path) | 200 |
| **GET** /​reports/​{report​Id}/​content | Download a stored report | report​Id (path) | 200 |

**Tracking & Telemetry**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​actuation-events | Get the actions of the container monitor | laboratory​Id (path), environment​Id (path), device​Id (path), from (query, opcional), to (query, opcional) | 200 (Actuation​Event[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​actuation-events | Record an action of the container monitor | laboratory​Id (path), environment​Id (path), device​Id (path), body: Record​Actuation​Event​Request | 200 (Actuation​Event), 201 (Actuation​Event), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile | Get the environmental profile of the container monitor | laboratory​Id (path), environment​Id (path), device​Id (path) | 200 (Environmental​Profile), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​actuation-rules | Save the actuation rules of the container monitor | laboratory​Id (path), environment​Id (path), device​Id (path), body: Update​Actuation​Rules​Request | 200 (Environmental​Profile), 400, 403 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​environmental-profile/​thresholds | Save the thresholds of the container monitor | laboratory​Id (path), environment​Id (path), device​Id (path), body: Update​Thresholds​Request | 200 (Environmental​Profile), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​telemetry-measurements | Get the readings of the container monitor | laboratory​Id (path), environment​Id (path), device​Id (path), from (query, opcional), to (query, opcional), metric (query, opcional) | 200 (Measurement[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors/​{device​Id}/​telemetry-measurements | Record a reading of the container monitor | laboratory​Id (path), environment​Id (path), device​Id (path), body: Record​Measurement​Request | 200 (Measurement), 201 (Measurement), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​environmental-profile | Get the profile the device applies | laboratory​Id (path), environment​Id (path), device​Id (path) | 200 (Environmental​Profile), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​devices/​{device​Id}/​telemetry-status | Get the connection status of a device | laboratory​Id (path), environment​Id (path), device​Id (path) | 200 (Device​Telemetry​Status​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-profile | Get the environmental profile of the environment | laboratory​Id (path), environment​Id (path) | 200 (Environmental​Profile), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-profile/​thresholds | Save the thresholds of the environment | laboratory​Id (path), environment​Id (path), body: Update​Thresholds​Request | 200 (Environmental​Profile), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​telemetry-measurements | Get the readings of the environmental device | laboratory​Id (path), environment​Id (path), from (query, opcional), to (query, opcional), metric (query, opcional) | 200 (Measurement[]), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​telemetry-measurements | Record a reading of the environmental device | laboratory​Id (path), environment​Id (path), body: Record​Measurement​Request | 200 (Measurement), 201 (Measurement), 400, 403 |

**Product Batch Management**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​laboratories/​{laboratory​Id}/​batches | List laboratory batches | laboratory​Id (path) | 200 (Batch​Response[]), 400, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products | List products | laboratory​Id (path), environment​Id (path) | 200 (Pharmaceutical​Product​Response[]), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products | Register a product | laboratory​Id (path), environment​Id (path), body: Create​Product​Request | 201 (Pharmaceutical​Product​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id} | Get a product | laboratory​Id (path), environment​Id (path), product​Id (path) | 200 (Pharmaceutical​Product​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches | List product batches | laboratory​Id (path), environment​Id (path), product​Id (path) | 200 (Batch​Response[]), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches | Register a product batch | laboratory​Id (path), environment​Id (path), product​Id (path), body: Create​Batch​Request | 201 (Batch​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id} | Get a product batch | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path) | 200 (Batch​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment | Get the container of a product batch | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path) | 200 (Batch​Container​Response), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​container-assignment | Store a product batch in a container | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path), body: Assign​Batch​Container​Request | 200 (Batch​Container​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​equipment-usages | Register an equipment usage | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path), body: Register​Equipment​Usage​Request | 201 (Equipment​Usage​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​raw-material-usages | Register a raw material usage | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path), body: Register​Raw​Material​Usage​Request | 201 (Raw​Material​Usage​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​rejections | Reject a product batch | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path), body: Reject​Batch​Request | 201 (Batch​Rejection​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​releases | Release a product batch | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path), body: Release​Batch​Request | 201 (Batch​Release​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​staff-participations | Register a staff participation | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path), body: Register​Staff​Participation​Request | 201 (Staff​Participation​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​products/​{product​Id}/​batches/​{batch​Id}/​traceability | Get the traceability of a batch | laboratory​Id (path), environment​Id (path), product​Id (path), batch​Id (path) | 200 (Batch​Traceability​Response), 403, 404 |

**Inventory Management**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-material-batches | List the raw material lots of an environment | laboratory​Id (path), environment​Id (path), expiration​Status (query, opcional), within​Days (query, opcional) | 200 (Raw​Material​Batch​Response[]), 400, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-material-imports | Import a legacy raw material into the environment | laboratory​Id (path), environment​Id (path), body: Import​Raw​Material​Request | 201 (Raw​Material​Response), 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials | List raw materials | laboratory​Id (path), environment​Id (path), stock​Status (query, opcional) | 200 (Raw​Material​Response[]), 400, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials | Register a raw material | laboratory​Id (path), environment​Id (path), body: Save​Raw​Material​Resource | 201 (Raw​Material​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id} | Get a raw material | laboratory​Id (path), environment​Id (path), raw​Material​Id (path) | 200 (Raw​Material​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id} | Update a raw material | laboratory​Id (path), environment​Id (path), raw​Material​Id (path), body: Save​Raw​Material​Resource | 200 (Raw​Material​Response), 400, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches | List the lots of a raw material | laboratory​Id (path), environment​Id (path), raw​Material​Id (path), usable (query, opcional) | 200 (Raw​Material​Batch​Response[]), 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches | Register a received raw material lot | laboratory​Id (path), environment​Id (path), raw​Material​Id (path), body: Receive​Raw​Material​Batch​Resource | 201 (Raw​Material​Batch​Response), 400, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id} | Get a raw material lot | laboratory​Id (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path) | 200 (Raw​Material​Batch​Response), 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​container-assignment | Get the container of a raw material lot | laboratory​Id (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path) | 200 (Raw​Material​Batch​Container​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​container-assignment | Store a raw material lot in a container | laboratory​Id (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path), body: Assign​Raw​Material​Batch​Container​Request | 200 (Raw​Material​Batch​Container​Response), 400, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​batches/​{raw​Material​Batch​Id}/​reviews | Review a raw material lot | laboratory​Id (path), environment​Id (path), raw​Material​Id (path), raw​Material​Batch​Id (path), body: Review​Raw​Material​Batch​Resource | 201 (Raw​Material​Batch​Review​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​movements | List the stock and review movements of a raw material | laboratory​Id (path), environment​Id (path), raw​Material​Id (path) | 200 (Inventory​Movement​Resource[]) |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​stock | Get the usable stock of a raw material | laboratory​Id (path), environment​Id (path), raw​Material​Id (path) | 200 (Raw​Material​Stock​Response), 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​raw-materials/​{raw​Material​Id}/​usages | List the product batches that used a raw material | laboratory​Id (path), environment​Id (path), raw​Material​Id (path) | 200 (Raw​Material​Usage​Response[]), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​inventory/​legacy-materials | Preview pre-Inventory records pending explicit import into an environment | laboratory​Id (path) | 200 (Legacy​Material​Resource[]), 400, 401, 403 |
| **GET** /​laboratories/​{laboratory​Id}/​raw-materials | getRawMaterials_1 | laboratory​Id (path), low​Stock (query, opcional) | 200 (Raw​Material​Response[]) |
| **GET** /​laboratories/​{laboratory​Id}/​raw-materials/​{legacy​Raw​Material​Id}/​usages | Get material consumption history | laboratory​Id (path), legacy​Raw​Material​Id (path) | 200 (Raw​Material​Usage​Response[]) |

**Equipment Management**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **POST** /​laboratories/​{laboratory​Id}/​devices/​container-monitors | Register a container monitor | laboratory​Id (path), body: Register​Iot​Device​Request | 201 (Equipment​Response), 400, 403, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​devices/​environmental-devices | Register an environmental device | laboratory​Id (path), body: Register​Iot​Device​Request | 201 (Equipment​Response), 400, 403, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​edge-gateways | Register an Edge Gateway *(nuevo)* | laboratory​Id (path), body: Register​Edge​Gateway​Request | 201 (Equipment​Response), 400, 401, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​edge-gateways/​{equipment​Id}/​api-key | Get Edge Gateway API key status *(nuevo)* | laboratory​Id (path), equipment​Id (path) | 200 (Edge​Gateway​Api​Key​Status), 401, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​edge-gateways/​{equipment​Id}/​api-key | Generate Edge Gateway API key *(nuevo)* | laboratory​Id (path), equipment​Id (path) | 201 (Issued​Edge​Gateway​Api​Key), 401, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​container-monitors | Associate a container monitor with the environment | laboratory​Id (path), environment​Id (path), body: Assign​Device​Request | 201 (Equipment​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​edge-gateway-coverage | Get the Edge Gateway coverage of the environment *(nuevo)* | laboratory​Id (path), environment​Id (path) | 200 (Edge​Gateway​Coverage), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​environmental-devices | Associate an environmental device with the environment | laboratory​Id (path), environment​Id (path), body: Assign​Device​Request | 201 (Equipment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments | List equipment of the environment *(nuevo)* | laboratory​Id (path), environment​Id (path), iot (query, opcional) | 200 (Equipment​Response[]), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments | Associate an equipment with the environment | laboratory​Id (path), environment​Id (path), body: Assign​Equipment​Request | 201 (Equipment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records | List maintenance records | laboratory​Id (path), environment​Id (path), equipment​Id (path) | 200 (Maintenance​Record​Response[]), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​maintenance-records | Register a maintenance | laboratory​Id (path), environment​Id (path), equipment​Id (path), body: Register​Maintenance​Request | 201 (Maintenance​Record​Response), 400, 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​equipments/​{equipment​Id}/​status-changes | Register a status change | laboratory​Id (path), environment​Id (path), equipment​Id (path), body: Change​Equipment​Status​Request | 201 (Equipment​Status​Change​Response), 400, 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments | List equipment | laboratory​Id (path) | 200 (Equipment​Response[]), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​equipments | Register an equipment | laboratory​Id (path), body: Register​Equipment​Request | 201 (Equipment​Response), 400, 403, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id} | Get an equipment | laboratory​Id (path), equipment​Id (path) | 200 (Equipment​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs | Get the BPM parameter ranges of an equipment | laboratory​Id (path), equipment​Id (path) | 200 (Bpm​Parameter​Config​Response[]) |
| **GET** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name} | Get the range of a BPM parameter of an equipment | laboratory​Id (path), equipment​Id (path), parameter​Name (path) | 200 (Bpm​Parameter​Config​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​equipments/​{equipment​Id}/​bpm-configs/​{parameter​Name} | Configure the range of a BPM parameter of an equipment | laboratory​Id (path), equipment​Id (path), parameter​Name (path), body: Configure​Bpm​Request | 200 (Bpm​Parameter​Config​Response), 400, 403 |

**Laboratory Management**

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **POST** /​laboratories | Create a new laboratory | body: Create​Laboratory​Request | 201 (Laboratory​Response), 400, 409 |
| **GET** /​laboratories/​{laboratory​Id} | Get laboratory by ID | laboratory​Id (path) | 200 (Laboratory​Response), 404 |
| **PUT** /​laboratories/​{laboratory​Id} | Update laboratory profile | laboratory​Id (path), body: Update​Laboratory​Request | 200 (Laboratory​Response), 403, 404 |
| **GET** /​laboratories/​{laboratory​Id}/​environments | List the environments of a laboratory | laboratory​Id (path) | 200 (Environment​Response[]), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​environments | Register an environment | laboratory​Id (path), body: Create​Environment​Request | 201 (Environment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id} | Get an environment of a laboratory | laboratory​Id (path), environment​Id (path) | 200 (Environment​Response), 403, 404 |
| **PUT** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id} | Update an environment | laboratory​Id (path), environment​Id (path), body: Update​Environment​Request | 200 (Environment​Response), 400, 403, 404, 409 |
| **POST** /​laboratories/​{laboratory​Id}/​environments/​{environment​Id}/​usage-assignments | Assign the usage of an environment | laboratory​Id (path), environment​Id (path), body: Assign​Environment​Usage​Request | 201 (Environment​Usage​Assignment​Response), 400, 403, 404, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​staff | List staff | laboratory​Id (path) | 200 (Staff​Member​Response[]), 403 |
| **POST** /​laboratories/​{laboratory​Id}/​staff | Register a staff member | laboratory​Id (path), body: Register​Staff​Request | 201 (Registered​Staff​Response), 400, 403, 409 |
| **GET** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id} | Get a staff member | laboratory​Id (path), staff​Id (path) | 200 (Staff​Member​Response), 403, 404 |
| **POST** /​laboratories/​{laboratory​Id}/​staff/​{staff​Id}/​deactivations | Deactivate a staff member | laboratory​Id (path), staff​Id (path) | 201 (Staff​Member​Response), 403, 404, 409 |

**Edge API** (`http://<estación local>:5000`)

| Endpoint | Acción | Parámetros | Respuestas |
|----------|--------|------------|------------|
| **POST** /​api/​v1/​auth/​sign-in | Autenticar un nodo ESP32 | X-API-Key (header), body: device_​id | 200 (identidad y tipo del nodo), 400, 401, 415 |
| **POST** /​api/​v1/​monitoring/​environment-readings | Recibir la calidad de aire y el movimiento del Monitor de Ambiente | X-API-Key (header), body: device_​id, measured_​at, air_​quality, motion, profile_​version | 201 (lecturas guardadas), 200 (reintento idéntico), 400, 401, 403, 409, 415 |
| **POST** /​api/​v1/​monitoring/​container-readings | Recibir temperatura, humedad, luminosidad y etiqueta RFID de un Monitor de Contenedor | X-API-Key (header), body: device_​id, measured_​at, temperature, humidity, luminosity, rfid_​tag, profile_​version | 201, 200, 400, 401, 403, 409, 415 |
| **POST** /​api/​v1/​control/​actuation-events | Recibir una acción ejecutada por un Monitor de Contenedor | X-API-Key (header), body: device_​id, action, trigger_​metric, trigger_​state, result, occurred_​at, profile_​version | 201 (evento guardado), 200, 400, 401, 403, 409, 415 |
| **GET** /​api/​v1/​configurations/​{device​Id} | Entregar al nodo el perfil ambiental que aplica | device_​id (path), X-API-Key (header) | 200 (umbrales, reglas de actuación y versión del perfil), 401, 404 |
| **POST** /​api/​v1/​devices/​enroll | Enrolar un nodo autorizado por el Cloud (solo en desarrollo) | body: device_​id, device_​type | 201 (API key del nodo, una sola vez), 400, 403, 409, 415 |

**Ejemplos de llamadas y respuestas**

1) Un Edge Gateway consulta los dispositivos IoT que atiende. El Edge envía el identificador del Gateway en la ruta y su API key en el encabezado; el Cloud responde con los dispositivos del ambiente del Gateway (hasta 15), con los identificadores que el Edge usa para sincronizar.

```http
GET /api/v1/edge-gateways/EDGE-001/iot-devices
X-API-Key: <API key del Edge Gateway>
```

```json
[
  {
    "id": 21,
    "laboratoryId": 1,
    "environmentId": 3,
    "name": "Environmental Monitor",
    "sensorExternalId": "ENV-001",
    "deviceType": "ENVIRONMENTAL_DEVICE",
    "status": "OPERATIONAL"
  }
]
```

2) El Edge Gateway sincroniza una lectura de un dispositivo. El Cloud la evalúa con el perfil ambiental vigente y responde `201` con la medición registrada y su estado; si la misma lectura llega de nuevo responde `200` con la ya guardada, y si el dispositivo no pertenece al Gateway responde `403`.

```http
POST /api/v1/edge-gateways/EDGE-001/iot-devices/21/telemetry-measurements
X-API-Key: <API key del Edge Gateway>
Content-Type: application/json
```

```json
{
  "metric": "TEMPERATURE",
  "value": 21.5,
  "textValue": "E200-3412-0001",
  "measuredAt": "2026-10-03T15:00:00Z",
  "profileVersion": 3
}
```

```json
{
  "id": 120,
  "deviceId": 7,
  "environmentId": 3,
  "metric": "TEMPERATURE",
  "value": 21.5,
  "textValue": "…",
  "unit": "°C",
  "measuredAt": "…",
  "state": "…",
  "thresholdValue": 1,
  "profileVersion": 1
}
```

3) Un Monitor de Ambiente envía al Edge API las métricas medidas en un momento. El Edge valida su API key, aplica las reglas del perfil y guarda las lecturas como pendientes de sincronización; responde `201` con las lecturas guardadas o `200` ante un reintento idéntico.

```http
POST /api/v1/monitoring/environment-readings
X-API-Key: <API key del nodo>
Content-Type: application/json
```

```json
{
  "device_id": "ENV-001",
  "measured_at": "2026-11-13T15:00:00Z",
  "air_quality": 412.5,
  "motion": false,
  "profile_version": 3
}
```

```json
{
  "device_id": "ENV-001",
  "measured_at": "2026-11-13T15:00:00Z",
  "profile_version": 3,
  "readings": [
    {
      "id": 1,
      "metric": "AIR_QUALITY",
      "value": 412.5,
      "text_value": null,
      "sync_status": "PENDING"
    },
    {
      "id": 2,
      "metric": "MOTION",
      "value": 0,
      "text_value": null,
      "sync_status": "PENDING"
    }
  ]
}
```

Las siguientes capturas muestran la documentación desplegada con los datos de ejemplo de las operaciones agregadas en este sprint.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/services-documentation-evidence/swagger-edge-gateways.jpg" alt="Swagger UI - Edge Gateways" width="90%">
  <p><em>Figura: Operaciones del Edge Gateway en Swagger UI. Esta evidencia muestra el grupo Edge Gateways con los endpoints con los que el Edge lee sus dispositivos IoT y envía telemetría, eventos de actuación y perfiles ambientales, autenticados con el encabezado X-API-Key.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/services-documentation-evidence/swagger-edge-telemetry.jpg" alt="Swagger UI - Telemetría del Edge Gateway" width="90%">
  <p><em>Figura: Detalle del registro de telemetría de un Edge Gateway en Swagger UI. Esta evidencia muestra la descripción de la operación, los parámetros con el encabezado X-API-Key y el cuerpo de ejemplo de una lectura de temperatura.</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/services-documentation-evidence/swagger-edge-telemetry-responses.jpg" alt="Swagger UI - Respuestas de la telemetría del Edge Gateway" width="90%">
  <p><em>Figura: Respuestas documentadas del registro de telemetría en Swagger UI. Esta evidencia muestra el ejemplo de la medición devuelta con su estado y valor de umbral, tanto para una lectura ya recibida (200) como para una nueva (201).</em></p>
</div>

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/services-documentation-evidence/swagger-edge-gateway-api-key.jpg" alt="Swagger UI - API key del Edge Gateway" width="90%">
  <p><em>Figura: Registro de un Edge Gateway y emisión de su API key en Swagger UI. Esta evidencia muestra las operaciones del laboratorio con las que el responsable de calidad registra el Gateway y genera la API key que se entrega una sola vez.</em></p>
</div>

Commits relacionados con la documentación de los servicios en este sprint (48):

**qualitrack-platform**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-platform | feature/​env-example | bae9930 | docs: add .env.example with the environment variables of the API | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​env-example | e26e111 | docs​(changelog): add .env.example | — | 02/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​inventory | 340f4c0 | doc​(inventory): add documentation for commands | — | 05/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​batch | d7e6264 | docs​(batch): document the laboratory batch list | — | 07/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-environment-devices | e96b6ba | docs​(equipment): document the value objects, converters and tenant lookup | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​backend-review | 6aeb1be | refactor​(inventory): remove the ignored Swagger tag and keep the getter annotation on its own line | Root​Resource​Tag​Customizer replaces the tags of every operation with the root resource of its path, so the Inventory Management tag of Inventory​Controller never reached Swagger UI. | 09/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​equipment-edge-gateway-capacity | 8926998 | docs​(equipment): record edge gateways in changelog and backend diagram | — | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | fix/​develop-review | 1d7be4e | refactor: remove the Swagger tags that the root resource customizer overrides | Root​Resource​Tag​Customizer gives every operation the tag of its root resource (/​api/​v1/​{root}), so the @Tag annotations added by #30, #31 and #33 on ten controllers never reached the Open​API document.… | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | fa71f53 | feat​(tracking): add the actuation event resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | c67990a | feat​(tracking): add the measurement resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 3ec4a9f | feat​(tracking): add the environmental profile resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 83a2fa2 | feat​(tracking): add the record measurement resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | f533d2d | feat​(tracking): add the record actuation event resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 76e1545 | feat​(tracking): add the update thresholds resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | cf9652d | feat​(tracking): add the update actuation rules resource | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | e12ee11 | feat​(tracking): add the environmental profile command from resource assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 2d72676 | feat​(tracking): add the actuation event resource from entity assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 6bcc121 | feat​(tracking): add the record actuation event command from resource assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 35719a6 | feat​(tracking): add the measurement resource from entity assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | ea9a833 | feat​(tracking): add the environmental profile resource from entity assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 2f671b7 | feat​(tracking): add the telemetry response assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | fd51e0b | feat​(tracking): add the record measurement command from resource assembler | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 5354e81 | feat​(tracking): add the container monitor telemetry controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 6e25538 | feat​(tracking): add the parsing of the tracking request values | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 22b04b6 | feat​(tracking): add the edge gateway telemetry controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 712d863 | feat​(tracking): add the edge gateway profiles controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 1bf460a | feat​(tracking): add the device tracking controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 49f75cd | feat​(tracking): add the environment telemetry controller | — | 13/11/2026 |
| Io​Tech-2620-8741/​qualitrack-platform | feature/​tracking | 0865e40 | docs​(diagrams): add the edge gateway controllers to the tracking backend diagram | The command service, not the telemetry controllers, depends on the current user. | 13/11/2026 |

**qualitrack-edge-service**

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​repository-base | a49dbc1 | docs: add the README and the Quali​Track proprietary license | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​device-sign-in | 5ac46d4 | docs: document the device sign-in and the devices commands | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-connection | e84cd14 | docs: document the connection with the cloud and the cloud commands | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​telemetry-reception | f422b71 | docs: document the reception of readings and actions | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​cloud-synchronization | 2b20fc2 | docs: document the synchronization of the pending telemetry | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​profile-configuration | 8011f0c | docs: document the profiles and the configuration of the nodes | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​docker-deployment | f4a2df3 | docs: document the deployment on the local station | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | f9a6010 | docs: add the architecture decision records | ADR-0001 to ADR-0010: bounded contexts, SQLite with Peewee, API key per request, registration with commands, operator account in the cloud, registry and profiles in Tracking, background… | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | b63c9fe | docs: add the class diagram of the bounded contexts | Plant​UML diagram of IAM, Tracking and the shared infrastructure with their layers, protocols, implementations, the anti-corruption layer, the cloud gateways and the composition of the application. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | 34dd746 | docs: add the technical stories TS53-TS64 with their traceability matrix | The Edge stories of the report with Gherkin acceptance criteria that describe the implemented behavior, and a Requirements Traceability Matrix to the classes and functions that implement each one. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​documentation | 7425aac | docs: link the technical stories and the documentation from the README | — | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​local-node-registry | 0aa5cac | docs: document that the Edge keeps only its own nodes | README, TS64 scenarios and traceability, ADR-0011 and the class diagram. | 03/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​synced-telemetry-retention | 128baf2 | docs: document the retention of the telemetry (ADR-0012) | — | 04/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​environment-device-registry | aeea9af | docs: record the registry per environment (ADR-0013) | — | 08/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | feature/​retire-cloud-environment-ids | 5271e77 | docs​(adr): record edge gateway authentication in ADR-0014 | Supersedes ADR-0005 and ADR-0013, amends ADR-0011 and updates the README, the class diagram and the changelog. | 10/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 7f142f6 | docs: record the sync context (ADR-0015) | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 96e74bc | docs​(stories): align the synchronization stories with the edge gateway | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | release/​v0.3.0 | 2f89ee3 | docs: document the gateway session and the enrollment endpoint | — | 12/11/2026 |
| Io​Tech-2620-8741/​qualitrack-edge-service | fix/​sync-tracking-repositories | 9860b90 | docs​(sync): describe the registry of the edge gateway in the docstrings | Since ADR-0014 the registry caches every Io​T device the cloud assigns to this Edge Gateway, also before it is registered in the Edge; the docstrings still described the registry of the laboratory… | 13/11/2026 |

#### 6.2.2.8. Software Deployment Evidence for Sprint Review

En el Sprint 2 cada producto se publica de forma automática al integrar una versión en la rama `main`: la Landing Page en GitHub Pages, la Web Application en Firebase Hosting y el Cloud REST API en Azure Container Apps, cada uno con su workflow de GitHub Actions. Las ramas `develop` y `main` de los repositorios de código están protegidas por reglas que exigen un pull request con las pruebas de integración continua aprobadas, y cada versión se publica con su etiqueta y su GitHub Release. El Edge Service se despliega con Docker Compose en la estación local de cada instalación, y su workflow verifica ese despliegue en cada pull request.

| Producto | Versión desplegada | Destino | Mecanismo |
|----------|--------------------|---------|-----------|
| Landing Page | v1.1.0 | GitHub Pages | Workflow `Deploy to GitHub Pages` al integrar en `main` |
| Web Application | v2.5.0 | Firebase Hosting | Workflow `Deploy to Firebase Hosting on merge` al integrar en `main` |
| Cloud REST API | v1.2.0 | Azure Container Apps y Azure Database for MySQL | Workflow `Deploy to Azure Container Apps` al integrar en `main` |
| Edge Service | v0.3.1 | Estación local (Raspberry Pi 4) | Docker Compose con Gunicorn; imagen arm64 construida en CI |
| Mobile Application | develop | Android | APK compilado con Flutter apuntando al Cloud REST API |

**Despliegue del Cloud REST API.** El pipeline creado en el Sprint 1 ejecuta las pruebas con Maven, construye la imagen Docker en Azure Container Registry y actualiza la revisión de Azure Container Apps. En este sprint se publicaron con él las versiones 1.1.0 y 1.2.0. Como la base de datos de producción usa `ddl-auto=none`, antes de publicar la versión 1.2.0 se creó en ella la tabla de las API keys de los Edge Gateways y dos índices de las alertas de desviación, con un script que se ejecuta una sola vez y termina con una consulta de verificación.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/deployment-evidence/backend-azure-deploy.jpg" alt="Despliegue del Cloud REST API en Azure" width="90%">
  <p><em>Figura: Workflow de despliegue del Cloud REST API en GitHub Actions. Esta evidencia muestra la ejecución que publicó la versión 1.2.0 al integrar su pull request en main: las pruebas con Maven, el inicio de sesión en Azure, la publicación de la imagen en Azure Container Registry y la actualización de Azure Container Apps.</em></p>
</div>

**Despliegue de la Web Application.** Cada versión integrada en `main` se compila con `npm ci && npm run build` y se publica en el sitio `qualitrack-iotech` de Firebase Hosting. En este sprint se publicaron las versiones 1.1.1 a 2.5.0.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/deployment-evidence/web-firebase-deploy.jpg" alt="Despliegue de la Web Application en Firebase Hosting" width="90%">
  <p><em>Figura: Workflow de despliegue de la Web Application en GitHub Actions. Esta evidencia muestra la publicación de la versión 2.5.0 en el sitio de producción de Firebase Hosting, con el resultado success y la URL https://qualitrack-iotech.web.app.</em></p>
</div>

**Despliegue de la Landing Page.** En este sprint la Landing Page pasó de la publicación desde una rama a un workflow de GitHub Actions que sube la carpeta `public/` como artefacto y la despliega en GitHub Pages, de modo que el sitio se sirve desde la URL raíz del repositorio.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/deployment-evidence/website-pages-deploy.jpg" alt="Despliegue de la Landing Page en GitHub Pages" width="90%">
  <p><em>Figura: Workflow de despliegue de la Landing Page en GitHub Actions. Esta evidencia muestra la configuración de Pages, la carga de public/ como sitio y el despliegue de la versión 1.1.0 reportado como exitoso.</em></p>
</div>

**Despliegue del Edge Service.** El Edge Service se ejecuta en la estación local de cada instalación, una Raspberry Pi 4 con Docker Engine, mediante `docker-compose.yml`, que levanta el servicio `qualitrack-edge` con Gunicorn y conserva la base SQLite en el volumen `qualitrack-data`. Los pasos de despliegue son:

1. Copiar `.env.production` con el identificador del Edge Gateway (`CLOUD_DEVICE_ID`), su API key (`CLOUD_API_KEY`), la URL del Cloud REST API y `CLOUD_SYNC_ENABLED=true`.
2. Levantar el servicio con `docker compose up -d --build`.
3. Registrar cada nodo ESP32 con `flask --app app devices register <id> <tipo>`, que entrega la API key del nodo una sola vez.
4. Sincronizar con el Cloud con `flask --app app cloud sync`, que lee los dispositivos IoT del Gateway, entrega sus perfiles a los nodos y envía la telemetría pendiente.

El workflow de integración continua reproduce este despliegue en cada pull request: levanta el servicio con Docker Compose, registra un nodo, verifica su autenticación y la recepción de una lectura, reinicia el contenedor y comprueba que la lectura pendiente se conserva en el volumen. Además construye la imagen para la arquitectura arm64 de la Raspberry Pi 4.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/deployment-evidence/edge-docker-smoke-test.jpg" alt="Despliegue del Edge Service con Docker Compose" width="90%">
  <p><em>Figura: Prueba del despliegue del Edge Service en GitHub Actions. Esta evidencia muestra el registro de un Monitor de Contenedor, su autenticación con respuesta 200, la recepción de una lectura con respuesta 201 y el reinicio del servicio con Docker Compose conservando la lectura pendiente de sincronización.</em></p>
</div>

**Mobile Application.** La primera versión se compila con `flutter build apk --dart-define=API_BASE_URL=<URL del Cloud REST API>` y se instala en dispositivos Android, donde consume el Cloud REST API desplegado en Azure. Su workflow de integración continua ejecuta el análisis estático y las pruebas en cada pull request hacia `develop`. La distribución del APK mediante Firebase App Distribution forma parte del spike SP10 y queda para el siguiente sprint, junto con la publicación de su primera versión en `main`.

#### 6.2.2.9. Team Collaboration Insights during Sprint

Durante el Sprint 2 el equipo mantuvo GitFlow y Conventional Commits, y reforzó la integración del trabajo: cada funcionalidad se desarrolló en una rama `feature/*` o `fix/*` creada desde `develop` y se integró mediante un pull request que exige las pruebas de integración continua aprobadas. Las versiones se publicaron en `main` con ramas `release/*`, su etiqueta y su GitHub Release, y luego se sincronizaron con `develop`. Cada Bounded Context tuvo un responsable en todos los productos donde aparece, según la matriz de liderazgo y colaboración.

**Landing Page.** En la nueva versión de la Landing Page participaron Baca Camargo, Vitaly Arturo; Cutiri Agüero, Fabrizio Alexander; Guzmán Cabrejos, Yaku Mateo; Huapaya Galindo, Dyron; Lopez Roman, Franco Mauricio; Montes Ramos, Henry Jaredt; Quiroz Caceres, Adrian Alonso; Ruiz Madrid, Billy Jake y Torres Apolinario, Giovany Smith, con el encabezado y el selector de idioma compartidos, la internacionalización, la documentación de los scripts, las fotos del equipo, la guía de estilos y el despliegue con GitHub Actions.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/team-collaboration-insights/insights-website.jpg" alt="GitHub Insights - Landing Page" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio de la Landing Page en GitHub Insights. Esta evidencia muestra los commits integrados en main durante el sprint y los integrantes que los realizaron.</em></p>
</div>

**Web Application.** En la Web Application participaron Baca Camargo, Vitaly Arturo; Cutiri Agüero, Fabrizio Alexander; Guzmán Cabrejos, Yaku Mateo; Huapaya Galindo, Dyron; Lopez Roman, Franco Mauricio; Quiroz Caceres, Adrian Alonso; Ruiz Madrid, Billy Jake y Torres Apolinario, Giovany Smith. El trabajo se organizó en pull requests por Bounded Context: la aplicación de las capas de Domain-Driven Design, las validaciones y pruebas, el rediseño de las vistas con la guía de estilos y la integración de los Edge Gateways.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/team-collaboration-insights/insights-web-app.jpg" alt="GitHub Insights - Web Application" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio de la Web Application en GitHub Insights. Esta evidencia muestra los commits integrados en main durante el sprint, concentrados en las semanas del rediseño y de la integración con los servicios.</em></p>
</div>

**Cloud REST API.** En el Cloud REST API participaron Cutiri Agüero, Fabrizio Alexander; Guzmán Cabrejos, Yaku Mateo; Huapaya Galindo, Dyron; Lopez Roman, Franco Mauricio; Quiroz Caceres, Adrian Alonso; Ruiz Madrid, Billy Jake y Torres Apolinario, Giovany Smith, con la estructura táctica de cada Bounded Context, los Edge Gateways, la documentación de Tracking & Telemetry en Swagger y los pagos de renovación.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/team-collaboration-insights/insights-platform.jpg" alt="GitHub Insights - Cloud REST API" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio del Cloud REST API en GitHub Insights. Esta evidencia muestra los commits integrados en main con las versiones 1.1.0 y 1.2.0.</em></p>
</div>

**Mobile Application.** En la Mobile Application participaron Baca Camargo, Vitaly Arturo; Cutiri Agüero, Fabrizio Alexander; Guzmán Cabrejos, Yaku Mateo; Huapaya Galindo, Dyron; Lopez Roman, Franco Mauricio; Quiroz Caceres, Adrian Alonso; Ruiz Madrid, Billy Jake y Torres Apolinario, Giovany Smith. Como su primera versión del sprint aún no se publica en `main`, sus analíticos de contribución todavía no reflejan este trabajo; la evidencia es la lista de pull requests integrados en `develop`.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/team-collaboration-insights/mobile-merged-pull-requests.jpg" alt="Pull requests de la Mobile Application" width="90%">
  <p><em>Figura: Pull requests integrados en develop en el repositorio de la Mobile Application. Esta evidencia muestra el trabajo de varios integrantes en las pantallas, los Bounded Contexts y las correcciones de usabilidad, cada uno con su verificación de integración continua.</em></p>
</div>

**Edge Service.** En el Edge Service participaron Cutiri Agüero, Fabrizio Alexander; Guzmán Cabrejos, Yaku Mateo; Huapaya Galindo, Dyron; Quiroz Caceres, Adrian Alonso; Ruiz Madrid, Billy Jake y Torres Apolinario, Giovany Smith, con la autenticación de los nodos, la recepción de telemetría, la sincronización con el Cloud, el despliegue con Docker Compose y las correcciones de su auditoría.

<div align="center">
  <img src="../../assets/img/main-content/chapter-vi/sprint-2/team-collaboration-insights/insights-edge-service.jpg" alt="GitHub Insights - Edge Service" width="90%">
  <p><em>Figura: Analíticos de contribución del repositorio del Edge Service en GitHub Insights. Esta evidencia muestra los commits integrados en main con las versiones 0.1.0 a 0.3.1.</em></p>
</div>

**Interpretación.** En total el equipo realizó 1353 commits en el sprint, frente a los 322 del Sprint 1, y el trabajo se integró de forma continua mediante pull requests revisados por la integración continua, en lugar de concentrarse en los días previos a la entrega como en el sprint anterior. Los commits se distribuyeron entre el 26 de octubre y el 13 de noviembre, con su mayor actividad en la semana del 2 de noviembre, cuando se integró la estructura de Domain-Driven Design en la Web Application y en la Mobile Application, y los productos nuevos (Edge Service y Mobile Application) reunieron a varios integrantes. Como oportunidades de mejora, el equipo se propone publicar la Mobile Application en `main` para que sus contribuciones se reflejen en los analíticos, incorporar a las Embedded Applications a los integrantes con menos participación en los repositorios de código y actualizar el estado de las tareas en Jira al mismo ritmo que los pull requests.
