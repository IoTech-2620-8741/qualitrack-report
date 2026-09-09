## 3.3. Product Backlog

El Product Backlog organiza las User Stories y Technical Stories según el valor que aportan al desarrollo y validación de QualiTrack.

Las primeras historias corresponden al **Landing Page**, debido a que permiten presentar y validar la propuesta de valor desde las primeras etapas del proyecto. Posteriormente se prioriza el flujo de registro, suscripción y creación del laboratorio.

A continuación se encuentran las funcionalidades relacionadas con el núcleo IoT de QualiTrack: configuración de ambientes, dispositivos, monitoreo, detección de desviaciones, respuesta automática, Edge, alertas y aplicación móvil.

Las funcionalidades de inventario, lotes de producto, reportes y auditoría complementan la solución y permiten conservar las capacidades de gestión de calidad desarrolladas anteriormente.

Para la estimación se utiliza la escala de Story Points **1, 2 y 3**.

| # Orden | User Story ID | Título | Descripción | Story Points |
|---:|---|---|---|---:|
| 1 | US01 | Conocer la propuesta de valor | Como visitante, quiero conocer qué problema resuelve QualiTrack, para determinar si puede ser útil para mi organización. | 2 |
| 2 | US02 | Navegar por la información pública | Como visitante, quiero acceder a las diferentes secciones del sitio público, para encontrar fácilmente la información que necesito. | 1 |
| 3 | US03 | Conocer cómo funciona QualiTrack | Como visitante, quiero comprender cómo funciona QualiTrack, para conocer cómo supervisa y responde ante cambios ambientales. | 2 |
| 4 | US04 | Conocer los beneficios de QualiTrack | Como visitante, quiero conocer los beneficios de QualiTrack, para identificar cómo puede ayudar en la supervisión. | 1 |
| 5 | US05 | Conocer a IoTech y al equipo | Como visitante, quiero conocer a IoTech y a las personas que desarrollan QualiTrack, para identificar quiénes son responsables de la solución. | 1 |
| 6 | US06 | Consultar testimonios | Como visitante, quiero conocer experiencias relacionadas con QualiTrack, para comprender cómo otras personas perciben la solución. | 1 |
| 7 | US07 | Comparar planes de suscripción | Como visitante, quiero comparar los planes disponibles, para identificar la alternativa adecuada. | 2 |
| 8 | US08 | Solicitar información sobre QualiTrack | Como visitante, quiero comunicarme con el equipo, para resolver dudas sobre la solución. | 2 |
| 9 | US09 | Consultar contenido en el idioma preferido | Como visitante, quiero consultar QualiTrack en español o inglés, para comprender la información. | 2 |
| 10 | US10 | Consultar documentos legales | Como visitante, quiero consultar los documentos legales, para conocer las condiciones del servicio. | 1 |
| 11 | TS01 | Soporte técnico del Landing Page | Como Developer, quiero implementar el Landing Page adaptable, bilingüe y accesible, para mantener una experiencia consistente. | 2 |
| 12 | US11 | Crear una cuenta | Como visitante interesado, quiero crear una cuenta, para comenzar a utilizar QualiTrack. | 2 |
| 13 | US12 | Iniciar sesión | Como usuario registrado, quiero iniciar sesión, para acceder al flujo correspondiente a mi cuenta. | 2 |
| 14 | US13 | Cerrar sesión | Como usuario autenticado, quiero cerrar mi sesión, para proteger mi acceso. | 1 |
| 15 | US14 | Recuperar el acceso | Como usuario registrado, quiero recuperar el acceso a mi cuenta, para volver a utilizarla. | 2 |
| 16 | US15 | Acceder según responsabilidad | Como usuario autenticado, quiero utilizar solo las funciones permitidas, para trabajar según mi responsabilidad. | 2 |
| 17 | TS02 | Servicios de autenticación y autorización | Como Developer, quiero disponer de servicios de autenticación y autorización, para proteger los recursos. | 3 |
| 18 | US16 | Contratar un plan | Como usuario autenticado, quiero contratar un plan, para activar el servicio. | 3 |
| 19 | US17 | Continuar según la suscripción | Como usuario autenticado, quiero continuar desde el punto correspondiente a mi cuenta, para no saltar ni repetir pasos. | 3 |
| 20 | US18 | Consultar el estado de la suscripción | Como usuario con suscripción, quiero conocer mi plan y periodo, para revisar las condiciones vigentes. | 2 |
| 21 | US19 | Consultar los pagos registrados | Como usuario con suscripción, quiero consultar mis pagos, para revisar mi historial. | 2 |
| 22 | US20 | Cancelar una suscripción | Como usuario con suscripción, quiero cancelar la renovación, para dejar de continuar con el servicio. | 2 |
| 23 | TS03 | Integración con el servicio de pagos | Como Developer, quiero integrar el backend con el proveedor de pagos, para procesar suscripciones. | 3 |
| 24 | TS04 | Validación del acceso por suscripción | Como Developer, quiero validar el estado de la suscripción, para impedir accesos no permitidos. | 3 |
| 25 | US21 | Crear el laboratorio | Como responsable de calidad, quiero registrar mi laboratorio, para comenzar a configurar QualiTrack. | 2 |
| 26 | US22 | Actualizar el laboratorio | Como responsable de calidad, quiero actualizar sus datos, para mantener la información vigente. | 2 |
| 27 | US23 | Registrar un ambiente | Como responsable de calidad, quiero registrar ambientes, para organizar equipos y mediciones. | 2 |
| 28 | US24 | Registrar personal básico | Como responsable de calidad, quiero registrar personal, para identificarlo en la trazabilidad. | 2 |
| 29 | TS05 | Servicios de laboratorio | Como Developer, quiero proveer servicios del laboratorio, ambientes y personal, para utilizar información persistida. | 3 |
| 30 | US30 | Registrar un equipo o dispositivo | Como responsable de calidad, quiero registrar recursos físicos, para identificarlos dentro de QualiTrack. | 2 |
| 31 | US31 | Asociar un equipo con un ambiente | Como responsable de calidad, quiero indicar dónde se encuentra un equipo, para conocer su ubicación. | 2 |
| 32 | US32 | Actualizar estado de un equipo | Como responsable de calidad, quiero conocer su disponibilidad, para evitar utilizar equipos no disponibles. | 2 |
| 33 | US33 | Registrar mantenimiento | Como responsable de calidad, quiero registrar mantenimientos, para conservar su historial. | 2 |
| 34 | TS07 | Servicios de equipos y mantenimiento | Como Developer, quiero proveer servicios de equipos y mantenimiento, para compartir información confiable. | 3 |
| 35 | US34 | Configurar rangos ambientales | Como responsable de calidad, quiero definir rangos permitidos, para detectar desviaciones. | 3 |
| 36 | US35 | Configurar respuestas automáticas | Como responsable de calidad, quiero definir respuestas ante desviaciones, para adaptar el comportamiento del dispositivo. | 3 |
| 37 | US36 | Consultar condiciones actuales | Como responsable de calidad, quiero consultar mediciones recientes, para conocer la situación del ambiente. | 2 |
| 38 | US38 | Conocer el estado ambiental | Como personal operativo, quiero conocer si el ambiente está normal, en advertencia o crítico, para reconocer problemas. | 2 |
| 39 | US39 | Conocer el estado desde el dispositivo | Como personal operativo, quiero conocer localmente el estado, para no depender de la aplicación. | 2 |
| 40 | US40 | Ejecutar una respuesta automática | Como personal operativo, quiero que el dispositivo responda automáticamente, para iniciar una acción oportuna. | 3 |
| 41 | US41 | Mantener el control sin Internet | Como personal operativo, quiero mantener el control local, para continuar respondiendo durante una interrupción. | 3 |
| 42 | TS08 | Recepción de mediciones en Edge | Como Developer, quiero almacenar mediciones en Edge, para conservarlas temporalmente. | 3 |
| 43 | TS10 | Procesamiento local y actuadores | Como Developer, quiero implementar la evaluación local y actuadores, para permitir respuesta automática. | 3 |
| 44 | TS11 | Sincronización de configuración | Como Developer, quiero sincronizar rangos y reglas, para mantener la configuración vigente. | 3 |
| 45 | TS09 | Sincronización con Cloud | Como Developer, quiero sincronizar datos pendientes, para centralizar la información. | 3 |
| 46 | US42 | Consultar acciones automáticas | Como responsable de calidad, quiero consultar las acciones ejecutadas, para saber cómo respondió el dispositivo. | 2 |
| 47 | US43 | Reconocer una alarma local | Como personal operativo, quiero reconocer una alarma, para indicar que está siendo atendida. | 2 |
| 48 | US37 | Consultar historial de mediciones | Como responsable de calidad, quiero consultar mediciones históricas, para revisar cambios en el tiempo. | 2 |
| 49 | US49 | Recibir una notificación | Como responsable de calidad, quiero recibir alertas de desviaciones, para conocerlas oportunamente. | 2 |
| 50 | US50 | Consultar alertas activas | Como responsable de calidad, quiero consultar alertas pendientes, para priorizar la atención. | 2 |
| 51 | US51 | Consultar detalle de alerta | Como responsable de calidad, quiero conocer el origen y las acciones relacionadas con una alerta, para entenderla. | 2 |
| 52 | US52 | Registrar atención de alerta | Como responsable de calidad, quiero registrar que una alerta está siendo atendida, para conservar evidencia. | 2 |
| 53 | US53 | Cerrar una alerta | Como responsable de calidad, quiero registrar la resolución, para conservar evidencia de su cierre. | 2 |
| 54 | US55 | Consultar desde el móvil | Como responsable de calidad, quiero consultar ambientes y alertas desde el móvil, para supervisar a distancia. | 3 |
| 55 | TS13 | Servicio de alertas y notificaciones | Como Developer, quiero procesar alertas y notificaciones externas, para comunicar eventos relevantes. | 3 |
| 56 | US25 | Registrar una materia prima | Como responsable de calidad, quiero registrar materias primas, para gestionar inventario y trazabilidad. | 2 |
| 57 | US26 | Registrar un lote de materia prima | Como responsable de calidad, quiero registrar lotes de materias primas, para conocer cantidades y vencimientos. | 2 |
| 58 | US27 | Consultar stock disponible | Como responsable de calidad, quiero conocer el stock utilizable, para planificar su uso. | 2 |
| 59 | US28 | Cambiar estado de un lote | Como responsable de calidad, quiero controlar el estado de un lote, para evitar usos no permitidos. | 2 |
| 60 | US29 | Identificar stock bajo o vencimientos | Como responsable de calidad, quiero identificar materiales que requieren atención, para actuar oportunamente. | 2 |
| 61 | TS06 | Servicios de inventario | Como Developer, quiero gestionar lotes y stock mediante servicios, para mantener datos consistentes. | 3 |
| 62 | US44 | Registrar un producto | Como responsable de calidad, quiero registrar un producto, para fabricar diferentes lotes. | 2 |
| 63 | US45 | Registrar un lote de producto | Como responsable de calidad, quiero registrar una fabricación específica, para conservar sus datos. | 2 |
| 64 | US46 | Registrar consumo de materia prima | Como responsable de calidad, quiero registrar lote y cantidad utilizada, para mantener trazabilidad y stock. | 3 |
| 65 | US47 | Asociar equipos y personal | Como responsable de calidad, quiero registrar los recursos utilizados, para mantener evidencia. | 2 |
| 66 | US48 | Consultar trazabilidad de lote | Como responsable de calidad, quiero consultar los recursos relacionados, para reconstruir la fabricación. | 3 |
| 67 | TS12 | Servicios de lotes y trazabilidad | Como Developer, quiero gestionar productos, lotes y consumos, para mantener consistencia entre módulos. | 3 |
| 68 | US54 | Identificar lotes afectados | Como responsable de calidad, quiero identificar productos relacionados con materias primas observadas o rechazadas, para evaluar impacto. | 3 |
| 69 | US56 | Consultar auditoría | Como responsable de calidad, quiero consultar operaciones registradas, para saber qué ocurrió y quién las realizó. | 2 |
| 70 | US57 | Consultar indicadores ambientales | Como responsable de calidad, quiero consultar indicadores reales, para evaluar el comportamiento de los ambientes. | 3 |
| 71 | US58 | Generar reporte ambiental | Como responsable de calidad, quiero generar un reporte ambiental, para disponer de información consolidada. | 3 |
| 72 | US59 | Generar reporte de trazabilidad | Como responsable de calidad, quiero generar un reporte de un lote, para conservar evidencia de fabricación. | 3 |
| 73 | US60 | Generar reportes de inventario y mantenimiento | Como responsable de calidad, quiero generar reportes operativos, para revisar información consolidada. | 3 |
| 74 | TS14 | Servicios de reportes e indicadores | Como Developer, quiero generar reportes usando información persistida, para evitar datos estáticos o ficticios. | 3 |

**Evidencia del Product Backlog:**

![Product Backlog QualiTrack](../assets/img/chapter-iii/product-backlog.png)

**Enlace público al Product Backlog:**

> [Agregar URL pública del Product Backlog]
