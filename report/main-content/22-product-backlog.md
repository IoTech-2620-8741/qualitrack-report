## 3.3. Product Backlog

El Product Backlog organiza las User Stories y Technical Stories según el valor que aportan a QualiTrack. Se priorizan inicialmente las historias del Landing Page por ser el primer entregable del proyecto, seguidas por las funcionalidades asociadas al núcleo del negocio, como trazabilidad, gestión de materias primas, lotes, ambientes, equipos, monitoreo y alertas. Posteriormente se consideran las capacidades de soporte, como reportes, suscripciones, pagos y gestión de acceso. Para la estimación del esfuerzo se utiliza la escala de Story Points basada en Fibonacci: 1, 2, 3, 5 y 8.

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
| 10 | US10 | Consultar documentos legales | Como visitante, quiero consultar los documentos legales, para conocer las condiciones del servicio. | 2 |
| 11 | TS01 | Soporte técnico del Landing Page | Como Developer, quiero implementar el Landing Page adaptable, bilingüe y accesible, para mantener una experiencia consistente. | 2 |
| 12 | US25 | Registrar una materia prima | Como responsable de calidad, quiero registrar materias primas, para gestionar inventario y trazabilidad. | 3 |
| 13 | US26 | Registrar un lote de materia prima | Como responsable de calidad, quiero registrar lotes de materias primas, para conocer cantidades y vencimientos. | 3 |
| 14 | US27 | Consultar stock disponible | Como responsable de calidad, quiero conocer el stock utilizable, para planificar su uso. | 3 |
| 15 | US28 | Cambiar estado de un lote | Como responsable de calidad, quiero controlar el estado de un lote, para evitar usos no permitidos. | 3 |
| 16 | US29 | Identificar stock bajo o vencimientos | Como responsable de calidad, quiero identificar materiales que requieren atención, para actuar oportunamente. | 5 |
| 17 | TS06 | Servicios de inventario | Como Developer, quiero gestionar lotes y stock mediante servicios, para mantener datos consistentes. | 5 |
| 18 | US44 | Registrar un producto | Como responsable de calidad, quiero registrar un producto, para fabricar diferentes lotes. | 2 |
| 19 | US45 | Registrar un lote de producto | Como responsable de calidad, quiero registrar una fabricación específica, para conservar sus datos. | 3 |
| 20 | US46 | Registrar consumo de materia prima | Como responsable de calidad, quiero registrar lote y cantidad utilizada, para mantener trazabilidad y stock. | 5 |
| 21 | US47 | Asociar equipos y personal | Como responsable de calidad, quiero registrar los recursos utilizados, para mantener evidencia. | 3 |
| 22 | US48 | Consultar trazabilidad de lote | Como responsable de calidad, quiero consultar los recursos relacionados, para reconstruir la fabricación. | 5 |
| 23 | TS12 | Servicios de lotes y trazabilidad | Como Developer, quiero gestionar productos, lotes y consumos, para mantener consistencia entre módulos. | 8 |
| 24 | US54 | Identificar lotes afectados | Como responsable de calidad, quiero identificar productos relacionados con materias primas observadas o rechazadas, para evaluar impacto. | 8 |
| 25 | US21 | Crear el laboratorio | Como responsable de calidad, quiero registrar mi laboratorio, para comenzar a configurar QualiTrack. | 2 |
| 26 | US22 | Actualizar el laboratorio | Como responsable de calidad, quiero actualizar sus datos, para mantener la información vigente. | 2 |
| 27 | US23 | Registrar un ambiente | Como responsable de calidad, quiero registrar ambientes, para organizar equipos y mediciones. | 3 |
| 28 | US24 | Registrar personal básico | Como responsable de calidad, quiero registrar personal, para identificarlo en la trazabilidad. | 2 |
| 29 | TS05 | Servicios de laboratorio | Como Developer, quiero proveer servicios del laboratorio, ambientes y personal, para utilizar información persistida. | 5 |
| 30 | US30 | Registrar un equipo o dispositivo | Como responsable de calidad, quiero registrar recursos físicos, para identificarlos dentro de QualiTrack. | 3 |
| 31 | US31 | Asociar un equipo con un ambiente | Como responsable de calidad, quiero indicar dónde se encuentra un equipo, para conocer su ubicación. | 3 |
| 32 | US32 | Actualizar estado de un equipo | Como responsable de calidad, quiero conocer su disponibilidad, para evitar utilizar equipos no disponibles. | 3 |
| 33 | US33 | Registrar mantenimiento | Como responsable de calidad, quiero registrar mantenimientos, para conservar su historial. | 5 |
| 34 | TS07 | Servicios de equipos y mantenimiento | Como Developer, quiero proveer servicios de equipos y mantenimiento, para compartir información confiable. | 5 |
| 35 | US34 | Configurar rangos ambientales | Como responsable de calidad, quiero definir rangos permitidos, para detectar desviaciones. | 5 |
| 36 | US35 | Configurar respuestas automáticas | Como responsable de calidad, quiero definir respuestas ante desviaciones, para adaptar el comportamiento del dispositivo. | 8 |
| 37 | US36 | Consultar condiciones actuales | Como responsable de calidad, quiero consultar mediciones recientes, para conocer la situación del ambiente. | 3 |
| 38 | US38 | Conocer el estado ambiental | Como personal operativo, quiero conocer si el ambiente está normal, en advertencia o crítico, para reconocer problemas. | 3 |
| 39 | US39 | Conocer el estado desde el dispositivo | Como personal operativo, quiero conocer localmente el estado, para no depender de la aplicación. | 5 |
| 40 | US40 | Ejecutar una respuesta automática | Como personal operativo, quiero que el dispositivo responda automáticamente, para iniciar una acción oportuna. | 8 |
| 41 | US41 | Mantener el control sin Internet | Como personal operativo, quiero mantener el control local, para continuar respondiendo durante una interrupción. | 8 |
| 42 | TS08 | Recepción de mediciones en Edge | Como Developer, quiero almacenar mediciones en Edge, para conservarlas temporalmente. | 8 |
| 43 | TS10 | Procesamiento local y actuadores | Como Developer, quiero implementar la evaluación local y actuadores, para permitir respuesta automática. | 8 |
| 44 | TS11 | Sincronización de configuración | Como Developer, quiero sincronizar rangos y reglas, para mantener la configuración vigente. | 5 |
| 45 | TS09 | Sincronización con Cloud | Como Developer, quiero sincronizar datos pendientes, para centralizar la información. | 5 |
| 46 | US42 | Consultar acciones automáticas | Como responsable de calidad, quiero consultar las acciones ejecutadas, para saber cómo respondió el dispositivo. | 3 |
| 47 | US43 | Reconocer una alarma local | Como personal operativo, quiero reconocer una alarma, para indicar que está siendo atendida. | 3 |
| 48 | US37 | Consultar historial de mediciones | Como responsable de calidad, quiero consultar mediciones históricas, para revisar cambios en el tiempo. | 3 |
| 49 | US49 | Recibir una notificación | Como responsable de calidad, quiero recibir alertas de desviaciones, para conocerlas oportunamente. | 3 |
| 50 | US50 | Consultar alertas activas | Como responsable de calidad, quiero consultar alertas pendientes, para priorizar la atención. | 3 |
| 51 | US51 | Consultar detalle de alerta | Como responsable de calidad, quiero conocer el origen y las acciones relacionadas con una alerta, para entenderla. | 3 |
| 52 | US52 | Registrar atención de alerta | Como responsable de calidad, quiero registrar que una alerta está siendo atendida, para conservar evidencia. | 3 |
| 53 | US53 | Cerrar una alerta | Como responsable de calidad, quiero registrar la resolución, para conservar evidencia de su cierre. | 3 |
| 54 | US55 | Consultar desde el móvil | Como responsable de calidad, quiero consultar ambientes y alertas desde el móvil, para supervisar a distancia. | 5 |
| 55 | TS13 | Servicio de alertas y notificaciones | Como Developer, quiero procesar alertas y notificaciones externas, para comunicar eventos relevantes. | 5 |
| 56 | US56 | Consultar auditoría | Como responsable de calidad, quiero consultar operaciones registradas, para saber qué ocurrió y quién las realizó. | 3 |
| 57 | US57 | Consultar indicadores ambientales | Como responsable de calidad, quiero consultar indicadores reales, para evaluar el comportamiento de los ambientes. | 5 |
| 58 | US58 | Generar reporte ambiental | Como responsable de calidad, quiero generar un reporte ambiental, para disponer de información consolidada. | 5 |
| 59 | US59 | Generar reporte de trazabilidad | Como responsable de calidad, quiero generar un reporte de un lote, para conservar evidencia de fabricación. | 5 |
| 60 | US60 | Generar reportes de inventario y mantenimiento | Como responsable de calidad, quiero generar reportes operativos, para revisar información consolidada. | 5 |
| 61 | TS14 | Servicios de reportes e indicadores | Como Developer, quiero generar reportes usando información persistida, para evitar datos estáticos o ficticios. | 5 |
| 62 | US16 | Contratar un plan | Como usuario autenticado, quiero contratar un plan, para activar el servicio. | 5 |
| 63 | US17 | Continuar según la suscripción | Como usuario autenticado, quiero continuar desde el punto correspondiente a mi cuenta, para no saltar ni repetir pasos. | 5 |
| 64 | US18 | Consultar el estado de la suscripción | Como usuario con suscripción, quiero conocer mi plan y periodo, para revisar las condiciones vigentes. | 2 |
| 65 | US19 | Consultar los pagos registrados | Como usuario con suscripción, quiero consultar mis pagos, para revisar mi historial. | 3 |
| 66 | US20 | Cancelar una suscripción | Como usuario con suscripción, quiero cancelar la renovación, para dejar de continuar con el servicio. | 3 |
| 67 | TS03 | Integración con el servicio de pagos | Como Developer, quiero integrar el backend con el proveedor de pagos, para procesar suscripciones. | 8 |
| 68 | TS04 | Validación del acceso por suscripción | Como Developer, quiero validar el estado de la suscripción, para impedir accesos no permitidos. | 5 |
| 69 | US11 | Crear una cuenta | Como visitante interesado, quiero crear una cuenta, para comenzar a utilizar QualiTrack. | 3 |
| 70 | US12 | Iniciar sesión | Como usuario registrado, quiero iniciar sesión, para acceder al flujo correspondiente a mi cuenta. | 3 |
| 71 | US13 | Cerrar sesión | Como usuario autenticado, quiero cerrar mi sesión, para proteger mi acceso. | 1 |
| 72 | US14 | Recuperar el acceso | Como usuario registrado, quiero recuperar el acceso a mi cuenta, para volver a utilizarla. | 3 |
| 73 | US15 | Acceder según responsabilidad | Como usuario autenticado, quiero utilizar solo las funciones permitidas, para trabajar según mi responsabilidad. | 3 |
| 74 | TS02 | Servicios de autenticación y autorización | Como Developer, quiero disponer de servicios de autenticación y autorización, para proteger los recursos. | 3 |

**Evidencia del Product Backlog:**

![Product Backlog QualiTrack](../assets/img/chapter-iii/product-backlog.png)

**Enlace público al Product Backlog:**

> [Agregar URL pública del Product Backlog]
