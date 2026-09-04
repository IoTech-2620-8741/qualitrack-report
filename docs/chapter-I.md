# Capítulo I: Introducción

El presente capítulo introduce el contexto general del proyecto **QualiTrack**, una solución tecnológica desarrollada por la startup **IoTech** y orientada a mejorar el monitoreo y control de las condiciones ambientales en laboratorios y almacenes farmacéuticos.

En este tipo de instalaciones es necesario mantener condiciones adecuadas para proteger los procesos, materias primas, insumos y productos almacenados. Sin embargo, cuando la supervisión depende principalmente de revisiones manuales o de sistemas que trabajan de manera independiente, una variación importante en factores como la temperatura o la humedad puede no ser detectada o atendida oportunamente.

Frente a esta situación, QualiTrack propone integrar dispositivos IoT capaces de medir continuamente las condiciones del ambiente y actuar automáticamente cuando se detecten valores fuera de los rangos establecidos. Para ello, se plantea el uso de sensores que permitan obtener información como temperatura, humedad y calidad del aire, junto con actuadores capaces de ejecutar acciones como activar ventilación, abrir una compuerta o generar alertas visuales y sonoras.

La información obtenida por los dispositivos será procesada y posteriormente registrada en la plataforma QualiTrack, permitiendo que los responsables de laboratorios y almacenes puedan consultar el estado de las diferentes áreas, revisar mediciones anteriores, recibir alertas y conocer las acciones realizadas por los dispositivos.

De esta manera, el proyecto busca evolucionar QualiTrack hacia una solución IoT que combine monitoreo, respuesta automática y gestión de información, contribuyendo a reducir la dependencia de controles manuales y mejorar la trazabilidad de las condiciones ambientales dentro de instalaciones farmacéuticas.

### 1.1. Startup Profile

En esta sección se presenta el perfil de **IoTech**, startup responsable del desarrollo de QualiTrack. Se describen su propósito, enfoque tecnológico, misión y visión, así como los perfiles de los integrantes que participan en el desarrollo del proyecto.

IoTech busca desarrollar soluciones tecnológicas que permitan conectar el mundo físico con plataformas digitales, utilizando dispositivos IoT para obtener información del entorno, procesarla y generar acciones que permitan responder ante diferentes situaciones.

Dentro de este enfoque, la startup desarrolla QualiTrack como una solución dirigida al sector farmacéutico, buscando mejorar la manera en que laboratorios y almacenes supervisan las condiciones de sus instalaciones y mantienen un registro de los eventos que ocurren en ellas.

#### 1.1.1. Descripción de la Startup

**IoTech** es una startup tecnológica dedicada al desarrollo de soluciones basadas en Internet of Things (IoT) para organizaciones de diferentes industrias. Su enfoque se centra en integrar dispositivos inteligentes, sensores, conectividad, software y procesamiento de datos para apoyar la supervisión, control y automatización de procesos que requieren información constante y respuestas oportunas.

La startup desarrolla soluciones capaces de recopilar información del entorno en tiempo real, procesarla y convertirla en datos útiles para las organizaciones.

Además del monitoreo, IoTech busca que sus sistemas puedan responder automáticamente ante determinadas condiciones mediante dispositivos conectados, permitiendo ejecutar acciones previamente definidas y reducir la dependencia de intervenciones exclusivamente manuales.

Sus soluciones integran dispositivos IoT con servicios backend, aplicaciones web y móviles, permitiendo centralizar la información, registrar eventos y acciones ejecutadas, facilitar la trazabilidad de los procesos y apoyar la toma de decisiones.

IoTech busca desarrollar tecnologías confiables y adaptables a las necesidades particulares de cada organización, especialmente en procesos donde el monitoreo continuo, la precisión de los datos y la capacidad de respuesta son importantes para mantener la eficiencia y calidad de las operaciones.

##### Misión

Desarrollar soluciones IoT que ayuden a las organizaciones a monitorear, controlar y automatizar sus procesos mediante la integración de dispositivos conectados, software y datos, facilitando la detección de situaciones relevantes, la ejecución de respuestas oportunas y una mejor toma de decisiones.

##### Visión

Ser una startup tecnológica reconocida en Latinoamérica por el desarrollo de soluciones IoT innovadoras, confiables y adaptables que permitan a organizaciones de diferentes industrias mejorar la supervisión, automatización y gestión de sus procesos.

#### 1.1.2. Perfiles de integrantes del equipo

<table border="1" width="100%">

  <tr>
    <td width="140" valign="top" align="center">
      <img src="../assets/img/chapter-I/Billy.jpg" alt="Billy Ruiz Photo" width="120" />
    </td>
    <td valign="top">
      <strong>Billy Jake Ruiz Madrid - (U202116401)</strong> - Ingeniería de Software<br><br>
      Tengo 22 años, soy una persona tranquila, colaborativa y adaptable. Me gusta trabajar en equipo, aportando ideas y soluciones. Cuento con conocimientos en C++, Python y desarrollo de software, y siempre busco formas de hacer las cosas de manera eficiente. Además, me interesa seguir aprendiendo nuevas tecnologías y aplicar mis conocimientos en el desarrollo de soluciones que aporten valor al proyecto.
    </td>
  </tr>

  <tr>
    <td width="140" height="150" valign="top" align="center">
        <img src="../assets/img/chapter-I/Vitaly.jpeg" alt="Vitaly Baca Photo" width="120">
    </td>
    <td valign="top">
      <strong>Vitaly Baca Camargo Arturo - (u20231c426)</strong> - Ingeniería de Software<br><br>
      Tengo 21 años y soy una persona tranquila, colaborativa y adaptable. Me gusta trabajar en equipo, aportar ideas y buscar soluciones eficientes a los problemas que se presentan. Cuento con conocimientos en desarrollo Backend utilizando Java y Node.js, así como en desarrollo móvil con Flutter y Kotlin. También tengo conocimientos en diseño UX/UI y en Domain-Driven Design (DDD), lo que me permite tener una visión más completa del desarrollo de software. Me interesa seguir aprendiendo nuevas tecnologías y aplicar mis conocimientos para desarrollar soluciones eficientes que aporten valor a cada proyecto.
    </td>
  </tr>

  <tr>
    <td width="140" height="150" valign="top" align="center">
      <img src="../assets/img/chapter-I/Fabrizio.png" alt="Fabrizio Cutiri Photo" width="120">
    </td>
    <td valign="top">
      <strong>Fabrizio Alexander Cutiri Agüero - (U201914181)</strong> - Ingeniería de Software<br><br>
      Soy estudiante de Ingeniería de Software, responsable, puntual y con facilidad para adaptarme a diferentes situaciones y entornos de trabajo. Me apasiona la tecnología y disfruto diseñar y desarrollar soluciones innovadoras que ayuden a resolver problemas reales. Cuento con conocimientos en arquitectura de software, tanto en monolito como microservicios, aplico el enfoque Domain-Driven Design y desarrollo de aplicaciones web y móviles, abarcando tanto frontend como backend. Me interesa seguir fortaleciendo mis habilidades técnicas, aprender nuevas tecnologías y participar en proyectos donde pueda aplicar buenas prácticas de desarrollo y aportar soluciones de valor para las personas y organizaciones.
    </td>
  </tr>

  <tr>
    <td width="140" height="150" valign="top" align="center">
      <img src="../assets/img/chapter-I/Dyron.jpg" alt="Dyron Huapaya Photo" width="120">
    </td>
    <td valign="top">
      <strong>Dyron Huapaya Galindo - (U202322855)</strong> - Ingeniería de Software<br><br>
      Tengo 20 años. Me considero una persona que le gusta apoyar a su equipo y que apoya al equipo en momentos dificiles. Cuento con conocimientos en C++, C#, Java y Python. También se desarrollar aplicaciones front-end y back-end. Me gusta aprender nuevas tecnologías y temas interesantes, sobre todo, acerca del mundo tecnológico. Espero que mis cualidades aporten al equipo.
    </td>
  </tr>

  <tr>
    <td width="140" height="150" valign="top" align="center">
      <!-- Foto del integrante -->
    </td>
    <td valign="top">
      <strong>[Nombres y Apellidos] - ([Código UPC])</strong> - Ingeniería de Software<br><br>
      [Descripción del integrante]
    </td>
  </tr>

  <tr>
    <td width="140" height="150" valign="top" align="center">
      <!-- Foto del integrante -->
    </td>
    <td valign="top">
      <strong>[Nombres y Apellidos] - ([Código UPC])</strong> - Ingeniería de Software<br><br>
      [Descripción del integrante]
    </td>
  </tr>

  <tr>
    <td width="140" height="150" valign="top" align="center">
      <!-- Foto del integrante -->
    </td>
    <td valign="top">
      <strong>[Nombres y Apellidos] - ([Código UPC])</strong> - Ingeniería de Software<br><br>
      [Descripción del integrante]
    </td>
  </tr>

  <tr>
    <td width="140" height="150" valign="top" align="center">
      <!-- Foto del integrante -->
    </td>
    <td valign="top">
      <strong>[Nombres y Apellidos] - ([Código UPC])</strong> - Ingeniería de Software<br><br>
      [Descripción del integrante]
    </td>
  </tr>

</table>

### 1.2. Solution Profile

#### 1.2.1. Antecedentes y problemáticas

**1. ANTECEDENTES**

La industria farmacéutica requiere altos niveles de control y supervisión debido a que cualquier desviación durante la fabricación, análisis o almacenamiento de un producto puede afectar su calidad, seguridad y eficacia. En el Perú, la Dirección General de Medicamentos, Insumos y Drogas (DIGEMID) es la autoridad sanitaria encargada de regular, vigilar y fiscalizar los productos farmacéuticos y los establecimientos involucrados en estos procesos. Como parte de estas exigencias, los establecimientos deben cumplir con las Buenas Prácticas de Manufactura (BPM) y, cuando corresponda, con las Buenas Prácticas de Almacenamiento (BPA), las cuales contemplan aspectos relacionados con el control de procesos, equipos, condiciones ambientales, documentación y trazabilidad.

La relevancia de estos controles puede observarse en las actividades de fiscalización realizadas por DIGEMID. Entre noviembre de 2025 y mayo de 2026 se evaluaron 51 laboratorios farmacéuticos mediante inspecciones internacionales. De estos, 20 obtuvieron la certificación de Buenas Prácticas de Manufactura, mientras que 21 no alcanzaron la certificación, 3 presentaron observaciones parciales y 7 desistieron del proceso. Por lo tanto, el 41,2 % de los laboratorios evaluados no alcanzó la certificación y, considerando también las observaciones parciales y desistimientos, el 60,8 % no culminó dicha evaluación obteniéndola **(DIGEMID, 2026)**.

Asimismo, en julio de 2026 DIGEMID reunió a representantes de 120 laboratorios nacionales, entre ellos 43 fabricantes de productos farmacéuticos, para abordar las principales observaciones y oportunidades de mejora encontradas durante las actividades de inspección, certificación y vigilancia realizadas desde 2025. Entre los aspectos analizados estuvieron el control de calidad, la calificación de equipos y el aseguramiento de la calidad, demostrando que el fortalecimiento de los procesos de control continúa siendo una necesidad vigente en el sector **(DIGEMID, 2026)**.

Dentro de este contexto, una parte importante de las operaciones farmacéuticas requiere supervisar variables y condiciones que deben mantenerse dentro de determinados parámetros. Estas pueden incluir temperatura, humedad, presión u otras variables dependiendo del área, equipo o proceso involucrado. Cuando su supervisión depende de revisiones periódicas, registros manuales o sistemas independientes, pueden producirse retrasos entre la aparición de una desviación, su detección y la ejecución de una acción correctiva.

**2. PROBLEMÁTICA**

La problemática se centra en las dificultades para supervisar continuamente variables críticas, detectar oportunamente condiciones fuera de los parámetros establecidos y actuar ante ellas, además de mantener un registro centralizado y trazable de las mediciones, incidencias y acciones realizadas.

**Riesgo de errores humanos en registros críticos:** Cuando variables como temperatura, humedad, presión o pH son revisadas y posteriormente transcritas de manera manual, existe la posibilidad de errores de registro, omisiones o información ingresada fuera del momento en que ocurrió la actividad. Estas inconsistencias dificultan comprobar posteriormente las condiciones reales bajo las cuales se desarrolló determinado proceso.

**Detección tardía de desviaciones:** Cuando el control depende de revisiones periódicas, una desviación puede producirse entre una verificación y otra sin ser detectada inmediatamente. Esto genera un intervalo durante el cual una condición puede permanecer fuera de los parámetros esperados antes de que el personal tenga conocimiento de ella.

**Dependencia de la intervención humana para responder:** La detección de una desviación tampoco garantiza necesariamente una respuesta inmediata. En procesos donde los equipos de monitoreo y los mecanismos capaces de modificar las condiciones funcionan de manera independiente, una persona debe identificar el problema y posteriormente ejecutar la acción correspondiente. Por ello, la problemática no comprende únicamente la capacidad de supervisar una variable, sino también el tiempo que transcurre entre la detección de una situación anómala y la ejecución de una acción para responder ante ella.

**Trazabilidad fragmentada de la información:** Cuando las mediciones, incidencias y acciones correctivas se registran en diferentes medios, resulta más difícil reconstruir cronológicamente un evento. El personal puede tener que consultar diferentes fuentes para determinar qué variable presentó una desviación, cuándo ocurrió, cuánto tiempo permaneció fuera del rango esperado y qué acciones se realizaron. Esta fragmentación también incrementa el esfuerzo necesario para recuperar y relacionar la información solicitada durante revisiones internas, investigaciones de desviaciones, auditorías o inspecciones regulatorias.

**Análisis 5W + 2H**

**What (¿Qué problema existe?)**

Los laboratorios farmacéuticos presentan dificultades para supervisar continuamente variables críticas en determinadas áreas, detectar oportunamente condiciones fuera de los parámetros establecidos y ejecutar respuestas ante ellas. Además, las mediciones, incidencias y acciones realizadas pueden quedar distribuidas entre distintos registros, dificultando su trazabilidad.

**Why (¿Por qué es un problema?)**

Porque determinados procesos y productos requieren mantenerse bajo condiciones controladas. Una desviación que no sea detectada o atendida oportunamente puede prolongar la exposición a condiciones inadecuadas y generar posteriormente la necesidad de investigar lo ocurrido y determinar sus posibles consecuencias.

**Who (¿Quiénes se encuentran afectados?)**

El problema afecta directamente a los operarios y técnicos encargados de supervisar equipos y condiciones del entorno; a los analistas de control de calidad, responsables de verificar parámetros y resultados; y al personal de Aseguramiento de la Calidad (Quality Assurance), encargado de revisar desviaciones, verificar el cumplimiento de los procedimientos y mantener la documentación asociada.

También afecta a supervisores, jefes de producción, responsables de almacén y responsables técnicos o directores técnicos, quienes necesitan disponer de información confiable para supervisar las operaciones, investigar incidencias y sustentar el cumplimiento de los procedimientos durante auditorías e inspecciones.

**When (¿Cuándo ocurre?)**

La problemática puede presentarse durante las actividades que requieren mantener variables dentro de determinados parámetros, especialmente en áreas de producción, control de calidad, esterilización y almacenamiento.

El riesgo aumenta entre una revisión manual y la siguiente, cuando una desviación puede producirse sin ser detectada inmediatamente, y también después de una incidencia, cuando es necesario determinar cuándo ocurrió, cuánto tiempo duró y qué medidas fueron tomadas.

**Where (¿Dónde ocurre?)**

Se presenta principalmente en áreas de producción y fabricación, laboratorios de control de calidad, zonas de esterilización, cámaras o ambientes con condiciones controladas y almacenes de materias primas, insumos y productos farmacéuticos.

Estas áreas pueden requerir la supervisión de diferentes variables según las características del proceso, los equipos utilizados o las condiciones necesarias para conservar adecuadamente los productos.

**How (¿Cómo se manifiesta?)**

El problema se manifiesta mediante revisiones periódicas de equipos o instrumentos, transcripción manual de mediciones, registros almacenados en diferentes medios y ausencia de una relación directa entre la detección de una desviación y los mecanismos capaces de responder ante ella.

Como consecuencia, pueden presentarse errores u omisiones en los registros, detecciones tardías, dependencia de la disponibilidad del personal para atender incidencias y dificultades para reconstruir posteriormente lo sucedido.

**How much (¿Cuánto afecta el problema?)**

La magnitud de las dificultades relacionadas con el cumplimiento de las Buenas Prácticas puede observarse en las inspecciones realizadas por DIGEMID: de los 51 laboratorios evaluados entre noviembre de 2025 y mayo de 2026, solo 20 obtuvieron la certificación correspondiente en dicha evaluación **(DIGEMID, 2026)**.

Un caso de mayor impacto sobre el mercado peruano se produjo en 2025, cuando el Ministerio de Salud identificó 239 productos farmacéuticos cuyos laboratorios fabricantes no habían aprobado las inspecciones de Buenas Prácticas de Manufactura realizadas por DIGEMID. Como consecuencia de la revisión, se dispuso inicialmente la suspensión del registro sanitario de 57 productos y se anunció el retiro del registro de un segundo grupo de 50 productos **(Andina, 2025)**.

Si bien estos resultados no significan que los incumplimientos hayan sido causados específicamente por fallas en el monitoreo de temperatura, humedad u otras variables, permiten evidenciar las consecuencias que pueden alcanzar las deficiencias en el cumplimiento de los controles requeridos dentro de la industria farmacéutica.

### 1.2.2. Lean UX Process

Lean UX es un enfoque que permite desarrollar productos a partir de problemas, necesidades y supuestos que deben ser validados progresivamente con los usuarios. En lugar de considerar desde el inicio que una determinada solución será exitosa, el equipo identifica aquello que cree conocer sobre el negocio, los usuarios y las funcionalidades propuestas, para posteriormente convertir estas creencias en hipótesis que puedan ser evaluadas.

Para el desarrollo de **QualiTrack**, este proceso permite analizar las necesidades existentes en laboratorios y almacenes farmacéuticos relacionadas con la supervisión de las condiciones ambientales, la detección de desviaciones, la respuesta ante situaciones fuera de los parámetros establecidos y la trazabilidad de los eventos ocurridos.

A partir de la problemática identificada, se plantea un Problem Statement para la nueva iniciativa, seguido por los Business Assumptions, Business Outcome Assumptions, User Assumptions, User Outcome and Benefit Assumptions y Feature Assumptions. Finalmente, estos supuestos son relacionados mediante Hypothesis Statements y representados de manera conjunta en el Lean UX Canvas.


#### 1.2.2.1. Lean UX Problem Statements

Para definir el problema de negocio de QualiTrack se utiliza el enfoque de **Brand New Initiative**, considerando el estado actual del dominio, los segmentos involucrados, las necesidades que todavía no son atendidas adecuadamente, la estrategia propuesta y los resultados que permitirán evaluar posteriormente el éxito de la iniciativa.

**Problem Statement**

El estado actual del monitoreo y control de condiciones ambientales en laboratorios y almacenes farmacéuticos se encuentra enfocado principalmente en responsables de calidad y supervisión, así como en personal operativo, quienes deben verificar que variables como temperatura, humedad y otras condiciones relevantes se mantengan dentro de los parámetros definidos para cada área. En determinados escenarios, estas actividades pueden depender de revisiones periódicas, registros manuales o sistemas que funcionan de manera independiente.

Las soluciones y métodos existentes no siempre permiten integrar en un mismo proceso el monitoreo continuo de las condiciones ambientales, la detección inmediata de desviaciones, la ejecución automática de una respuesta física y el registro trazable de todo lo ocurrido. Esto puede generar un intervalo entre la aparición de una condición inadecuada, su identificación y la acción realizada para atenderla.

**QualiTrack** busca atender esta brecha mediante una solución IoT que permita monitorear continuamente las condiciones de laboratorios y almacenes farmacéuticos y responder automáticamente ante determinados eventos. Los dispositivos utilizarán sensores para obtener información del ambiente y actuadores para ejecutar acciones previamente configuradas, como activar ventilación, abrir una compuerta o generar una alarma. Las mediciones y acciones serán registradas y posteriormente estarán disponibles para su consulta y análisis desde QualiTrack.

Nuestro enfoque inicial estará dirigido a responsables de calidad y supervisión, así como al personal operativo de laboratorios y almacenes farmacéuticos en el Perú, especialmente en organizaciones que todavía dependen de controles manuales o de sistemas de monitoreo poco integrados.

Sabremos que la iniciativa está avanzando satisfactoriamente cuando, durante las pruebas y pilotos, observemos una reducción del tiempo necesario para detectar y responder ante desviaciones ambientales, una disminución de los registros manuales y una mayor disponibilidad de información trazable sobre las mediciones, alertas y acciones realizadas.

#### 1.2.2.2. Lean UX Assumptions

Los assumptions representan las creencias que el equipo considera razonables en esta etapa del proyecto, pero que todavía necesitan ser contrastadas mediante investigación, entrevistas, prototipos y pruebas con usuarios.

Para QualiTrack se consideran cinco categorías de assumptions: Business Assumptions, Business Outcome Assumptions, User Assumptions, User Outcome and Benefit Assumptions y Feature Assumptions.

**Business Assumptions**

* Creemos que los laboratorios y almacenes farmacéuticos necesitan mejorar la forma en que supervisan y registran las condiciones ambientales de sus diferentes áreas.
* Creemos que existe valor en una solución que no solo informe cuando aparece una desviación, sino que también pueda ejecutar una respuesta automática inicial mediante actuadores.
* Creemos que los responsables de calidad valorarán disponer de información centralizada sobre mediciones, alertas y acciones realizadas por los dispositivos.
* Creemos que una solución que combine dispositivos IoT con aplicaciones web y móvil puede reducir la dependencia de controles exclusivamente manuales.
* Creemos que un modelo de servicio escalable permitirá que organizaciones con diferentes cantidades de áreas y dispositivos puedan adoptar QualiTrack progresivamente.
* Creemos que iniciar la propuesta en el sector farmacéutico peruano permitirá validar la solución antes de considerar su expansión hacia otros mercados de Latinoamérica.

**Business Outcome Assumptions**

* Creemos que QualiTrack puede reducir el tiempo transcurrido entre la aparición de una desviación ambiental y la ejecución de una primera respuesta.
* Creemos que durante las pruebas del sistema al menos el 80% de las desviaciones correctamente detectadas podrán generar la acción automática configurada y su correspondiente registro.
* Creemos que la automatización de la captura de datos permitirá reducir progresivamente la cantidad de registros ambientales realizados manualmente en las áreas monitoreadas.
* Creemos que la centralización de las mediciones y eventos permitirá disminuir el tiempo requerido para reconstruir qué ocurrió durante una desviación.
* Creemos que los responsables de calidad podrán supervisar más de un área sin necesidad de encontrarse físicamente frente a cada dispositivo.
* Creemos que la validación del producto con organizaciones del sector permitirá obtener oportunidades para realizar pilotos y posteriormente adoptar el servicio.

**User Assumptions**

* Creemos que los responsables de calidad y supervisión necesitan conocer el estado de diferentes áreas sin realizar verificaciones presenciales constantes.
* Creemos que los responsables de calidad necesitan consultar información histórica para determinar cuándo ocurrió una desviación y qué acciones fueron realizadas.
* Creemos que los responsables de calidad necesitan definir los parámetros permitidos de acuerdo con las necesidades de cada área supervisada.
* Creemos que el personal operativo necesita reconocer rápidamente si las condiciones del área son normales, de advertencia o críticas.
* Creemos que el personal operativo necesita recibir una alerta local cuando se produzca una situación que requiera atención.
* Creemos que los usuarios consideran importante que el dispositivo pueda continuar funcionando localmente aunque exista una interrupción temporal de Internet.
* Creemos que los responsables de calidad valorarán recibir información y alertas desde un dispositivo móvil cuando no se encuentren físicamente en las instalaciones.

**User Outcome and Benefit Assumptions**

* Los responsables de calidad podrán supervisar las condiciones ambientales de varias áreas desde un mismo sistema.
* Los responsables de calidad podrán identificar con mayor rapidez cuándo y dónde ocurrió una desviación.
* Los responsables de calidad podrán conocer qué acciones fueron ejecutadas automáticamente por cada dispositivo.
* Los responsables de calidad podrán consultar mediciones históricas y eventos relacionados con una desviación sin recurrir a múltiples registros independientes.
* El personal operativo podrá conocer de manera inmediata el estado del ambiente en el que trabaja.
* El personal operativo podrá recibir una advertencia local cuando una condición requiera su atención.
* El personal operativo contará con una primera respuesta automática ante determinadas desviaciones, reduciendo el tiempo necesario para iniciar una acción.
* Los usuarios podrán conservar la continuidad del monitoreo y de las acciones locales aun cuando exista una interrupción temporal de la conexión con la nube.

**Feature Assumptions**

**FA01. Dispositivo IoT de monitoreo ambiental:**  
Creemos que un dispositivo equipado con sensores para medir temperatura, humedad y otras condiciones ambientales permitirá obtener información continua de las áreas supervisadas y reducir la dependencia de registros manuales.

**FA02. Control automático mediante actuadores:**  
Creemos que incorporar actuadores como ventiladores, servomotores, indicadores luminosos y alarmas permitirá ejecutar una respuesta inmediata cuando el dispositivo detecte condiciones de advertencia o críticas.

**FA03. Procesamiento local de reglas:**  
Creemos que permitir que el microcontrolador evalúe localmente las mediciones y las compare con los parámetros configurados permitirá mantener la capacidad de respuesta aun cuando no exista conexión temporal con Internet.

**FA04. Edge Service con almacenamiento temporal:**  
Creemos que un servicio Edge capaz de recibir y almacenar temporalmente las mediciones permitirá evitar la pérdida de información durante interrupciones de comunicación con la plataforma central.

**FA05. Configuración de parámetros y respuestas automáticas:**  
Creemos que permitir a los responsables definir rangos ambientales y las acciones asociadas a cada nivel de condición facilitará la adaptación del dispositivo a diferentes áreas de laboratorio o almacén.

**FA06. Monitoreo web con historial y alertas:**  
Creemos que una aplicación web que centralice mediciones, estados, alertas y acciones realizadas facilitará la supervisión y trazabilidad de las áreas monitoreadas.

**FA07. Aplicación móvil y notificaciones:**  
Creemos que una aplicación móvil capaz de mostrar el estado de las áreas y recibir alertas permitirá que los responsables se mantengan informados aun cuando no se encuentren físicamente en las instalaciones.

**FA08. Trazabilidad y reportes ambientales:**  
Creemos que conservar cronológicamente las mediciones, desviaciones, alertas, acciones automáticas y atenciones realizadas facilitará la revisión de incidentes y la elaboración de reportes para procesos internos de calidad.

#### 1.2.2.3. Lean UX Hypothesis Statements

Los Hypothesis Statements relacionan los resultados esperados del negocio con los usuarios, los beneficios que desean alcanzar y las funcionalidades propuestas. Cada hipótesis parte de uno de los Feature Assumptions definidos anteriormente y deberá ser validada posteriormente mediante investigación y experimentación.

**Hipótesis 1 — Dispositivo IoT de monitoreo ambiental**

**Creemos que** lograremos reducir la dependencia de registros ambientales manuales **si** los responsables de calidad y el personal operativo **alcanzan** acceso continuo a mediciones confiables de las condiciones del área **con** un dispositivo IoT que capture automáticamente las variables ambientales.

**Hipótesis 2 — Control automático mediante actuadores**

**Creemos que** lograremos reducir el tiempo necesario para ejecutar una primera respuesta ante una desviación **si** el personal operativo **alcanza** una respuesta inmediata ante condiciones de advertencia o críticas **con** actuadores controlados automáticamente por el dispositivo IoT.

**Hipótesis 3 — Procesamiento local de reglas**

**Creemos que** lograremos mantener la capacidad básica de respuesta ante interrupciones de conectividad **si** el personal operativo **alcanza** continuidad en la detección y atención inicial de desviaciones **con** reglas almacenadas y procesadas localmente por el microcontrolador.

**Hipótesis 4 — Edge Service con almacenamiento temporal**

**Creemos que** lograremos disminuir la pérdida de registros producida por interrupciones temporales de Internet **si** los responsables de calidad **alcanzan** continuidad en el historial de mediciones **con** un Edge Service que almacene temporalmente la información y la sincronice posteriormente.

**Hipótesis 5 — Configuración de parámetros y respuestas automáticas**

**Creemos que** lograremos adaptar QualiTrack a diferentes áreas de laboratorios y almacenes **si** los responsables de calidad **alcanzan** la capacidad de establecer las condiciones aceptables y las respuestas requeridas para cada área **con** una configuración de rangos y reglas de actuación asociadas a los dispositivos.

**Hipótesis 6 — Monitoreo web con historial y alertas**

**Creemos que** lograremos reducir el tiempo necesario para identificar y reconstruir una desviación **si** los responsables de calidad **alcanzan** acceso centralizado a las condiciones actuales e históricas de las áreas **con** una aplicación web que reúna mediciones, estados, alertas y acciones ejecutadas.

**Hipótesis 7 — Aplicación móvil y notificaciones**

**Creemos que** lograremos mejorar la atención oportuna de las alertas relevantes **si** los responsables de calidad **alcanzan** acceso remoto al estado de las áreas y a los eventos importantes **con** una aplicación móvil que proporcione monitoreo y notificaciones.

**Hipótesis 8 — Trazabilidad y reportes ambientales**

**Creemos que** lograremos disminuir el esfuerzo necesario para revisar eventos ambientales **si** los responsables de calidad **alcanzan** una reconstrucción clara de lo sucedido durante una desviación **con** un historial trazable y reportes que relacionen mediciones, alertas, acciones automáticas y atenciones realizadas.

#### 1.2.2.4. Lean UX Canvas

El Lean UX Canvas permite organizar visualmente el problema de negocio, los resultados esperados, los usuarios, los beneficios que buscan obtener, las soluciones propuestas, las hipótesis y los principales aspectos que deben validarse.

Para QualiTrack, el contenido del Lean UX Canvas se estructura de la siguiente manera:

| Sección | Contenido |
|---|---|
| **1. Business Problem** | En laboratorios y almacenes farmacéuticos pueden existir dificultades para monitorear continuamente las condiciones ambientales, detectar desviaciones oportunamente, ejecutar respuestas inmediatas y mantener una trazabilidad centralizada de las mediciones y acciones realizadas. |
| **2. Business Outcomes** | Reducir el tiempo de respuesta ante desviaciones; disminuir registros manuales; aumentar la cantidad de eventos ambientales registrados de manera trazable; facilitar la supervisión de varias áreas y obtener interés de organizaciones para realizar pilotos de QualiTrack. |
| **3. Users** | Responsables de calidad y supervisión; personal operativo de laboratorios y almacenes farmacéuticos. |
| **4. User Outcomes & Benefits** | Supervisar áreas de manera más rápida; conocer el estado actual del ambiente; identificar desviaciones; recibir alertas oportunamente; disponer de una primera respuesta automática; consultar históricos; conocer qué acciones ejecutó el dispositivo y disponer de información trazable. |
| **5. Solutions** | Dispositivo IoT con sensores; actuadores; procesamiento local en el microcontrolador; Edge Service; configuración de rangos y reglas; aplicación web; aplicación móvil; notificaciones y reportes ambientales. |
| **6. Hypotheses** | Las ocho hipótesis definidas a partir de los Feature Assumptions FA01 a FA08. |
| **7. What's the most important thing we need to learn first?** | Determinar si los usuarios consideran útil y confiable que el dispositivo detecte una desviación y ejecute automáticamente una acción física; validar qué variables necesitan monitorear, qué acciones esperan que se ejecuten y qué nivel de control desean conservar sobre dichas acciones. |
| **8. What's the least amount of work we need to do to learn the next most important thing?** | Realizar entrevistas con los segmentos objetivo y construir un prototipo funcional con un microcontrolador, sensores y actuadores que permita simular condiciones normales, de advertencia y críticas. Complementar la prueba con prototipos de las aplicaciones web y móvil para evaluar la comprensión de mediciones, alertas y acciones ejecutadas. |

**Lean UX Canvas de QualiTrack**

![Lean UX Canvas de QualiTrack](../assets/img/chapter-I/lean-ux-canvas.png)

### 1.3. Segmentos objetivo
