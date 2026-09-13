### 2.4. Big Picture Event Storming

El Big Picture Event Storming nos ayuda a explorar los eventos relacionados con los laboratorios. Se empezó colocando eventos de dominio relacionados sin importar el orden. Luego, se formaron líneas de tiempo que ayuden a denotar una secuencia de eventos de dominio que posea coherencia con el negocio y sus relaciones con otros eventos. Finalmente, se identificaron los actores que interactúan en el negocio y los puntos de dolor. A continuación, se adjuntan las capturas de pantalla de cada paso realizado para diagramar el Big Picture Event Storming del proyecto: 

**Step 1 - Free Exploracion**

<div align="center">
  <img src="../assets/img/chapter-ii/events-as-is.png" alt ="Big Picture" width=700>
</div>

<br>

En esta primera etapa, el equipo realizó una exploración libre de los eventos relevantes del dominio. Los eventos fueron identificados sin establecer inicialmente un orden específico, buscando recoger los diferentes acontecimientos que forman parte de las actividades de gestión de calidad de los productos farmacéuticos dentro de los laboratorios.

Durante esta exploración se identificaron eventos relacionados con la **recepción y gestión de materias primas**, **inspección y aceptación de materiales**, **producción y evaluación de lotes**, **desarrollo y viabilidad de productos**, **monitoreo de condiciones ambientales**, **tratamiento de desviaciones**, **distribución y seguimiento de suministros**, **gestión de registros de calidad** y **auditorías**.

**Paso 2: Structured organization**

En la segunda etapa, los eventos identificados fueron organizados cronológicamente y agrupados en flujos que representan diferentes procesos del dominio. Asimismo, se incorporaron los actores responsables de los eventos para representar las responsabilidades dentro de cada proceso

De acuerdo con la guía, los actores se representan mediante tarjetas amarillas y permiten identificar quién desencadena o participa en cada evento, mientras que los Hot Spots se utilizan para señalar preguntas, dudas o situaciones críticas que requieren una posterior profundización.

Como resultado de esta organización, se establecieron los siguientes ocho flujos principales:

a) **Environmental Monitoring and Control**

<div align="center">
  <img src="../assets/img/chapter-ii/enviromental-monitoring-control.png" alt ="Flow 1" width=700>
</div>

<br>

Este flujo representa las actividades relacionadas con el establecimiento y monitoreo de las condiciones ambientales de las áreas. El proceso inicia con la participación del Quality Supervisor, quien identifica el área y establece los requerimientos y parámetros ambientales que deben cumplirse. Posteriormente, Maintenance interviene para realizar la calibración del instrumento de medición.

Luego, el Quality Staff coloca el instrumento y realiza las mediciones ambientales correspondientes, considerando temperatura, humedad y presión diferencial. Una vez obtenidos los valores, el Assigned Personnel registra las mediciones, para que finalmente el Quality Supervisor revise los registros obtenidos.

El Hot Spot identificado plantea la siguiente incertidumbre:

*“How do you confirm that an out-of-range condition really corresponds to an environmental deviation?”*

Este punto resulta relevante porque, ante una medición que se encuentra fuera de los parámetros establecidos, es necesario confirmar que el valor obtenido corresponde realmente a una desviación y no a un problema relacionado con la medición o el instrumento encargado de medir el ambiente. Esto coincide con lo señalado en las entrevistas, donde se menciona la necesidad de verificar la lectura y el instrumento antes de determinar cómo proceder ante una condición fuera de rango.

b) **Environmental Deviation Management**

<div align="center">
  <img src="../assets/img/chapter-ii/enviromental-deviation-management.png" alt ="Flow 2" width=700>
</div>

<br>

Este flujo representa el proceso que se desarrolla cuando se identifica una condición ambiental fuera de los parámetros establecidos. El proceso inicia cuando el Quality Staff detecta una condición fuera de rango y notifica al Quality Supervisor. A partir de ello, el supervisor identifica la desviación ambiental, detiene la actividad y se inicia la investigación de la causa, solicitando la intervención de Maintenance.

Posteriormente, Maintenance confirma la medición y corrige la condición ambiental. Una vez realizada la corrección, el Quality Staff vuelve a verificar el ambiente mediante una nueva medición. En este punto se presenta el Hot Spot, relacionado con la determinación de cuándo la condición puede considerarse restablecida y cuándo es posible continuar con la actividad.

Finalmente, el Quality Supervisor determina el restablecimiento de la condición y se reanuda la actividad. El Quality Staff registra la desviación ocurrida.

El Hot Spot identificado plantea la siguiente incertidumbre:

*“Who determines that the environmental condition has been corrected and that the activity can resume?”*

Este Hot Spot se ubica después de Environment Rechecked porque, una vez corregida la condición y realizada la nueva verificación, existe una decisión sobre si las condiciones son adecuadas para restablecer la condición y reanudar la actividad. Esta situación es consistente con las entrevistas, donde se señala que, ante una condición fuera de rango, se verifica nuevamente la medición y la continuidad de la actividad depende de la confirmación de que las condiciones hayan vuelto a los parámetros establecidos.


c) **Product Development and Production**

<div align="center">
  <img src="../assets/img/chapter-ii/product-development-and-production.png" alt ="Flow 2" width=700>
</div>

<br>


Este flujo representa las actividades relacionadas con la producción y evaluación de un lote. El proceso inicia con el Production Staff, quien comienza la producción, identifica el lote, selecciona las materias primas necesarias y realiza su dispensación para posteriormente completar la fabricación.

Una vez finalizada la fabricación, interviene el Quality Staff, quien realiza el control de calidad y evalúa el lote obtenido. A partir de esta evaluación se presenta una decisión sobre el resultado del lote, pudiendo ser liberado o rechazado.

El Hot Spot identificado plantea la siguiente incertidumbre:

*“What criteria are considered to determine if a batch is approved or rejected?”*


El Hot Spot se ubica después de Batch Evaluated, ya que en este punto surge la incertidumbre respecto a los criterios utilizados para determinar si el lote puede ser liberado o debe ser rechazado.

Este punto permite profundizar posteriormente en los criterios y condiciones que intervienen en la decisión de aceptación del lote, sin asumir todavía una solución tecnológica

d) **Raw Material Management**

<div align="center">
  <img src="../assets/img/chapter-ii/raw-material-management.png" alt ="Flow 2" width=700>
</div>

<br>

Este flujo representa el proceso mediante el cual las materias primas son recibidas, identificadas, verificadas y almacenadas antes de ser utilizadas en los procesos de producción. El proceso comienza con la participación del Supplier, quien proporciona la documentación asociada a la materia prima. Posteriormente, el área de Receiving recibe físicamente la materia prima y registra su identificación mediante el lote y código de recepción. Luego, Quality Staff verifica la información y documentación necesaria para determinar si la materia prima cumple con los requisitos establecidos.

Como resultado de esta verificación, la materia prima puede ser aceptada o rechazada. Cuando es rechazada, se registra la información del lote correspondiente. Finalmente, las materias primas aceptadas son almacenadas bajo las condiciones establecidas para su posterior utilización. En las entrevistas se señala que las materias primas se identifican por lote y que, antes de utilizarse, deben contar con información técnica que respalde su uso, como el certificado de análisis.

El Hot Spot identificado plantea la siguiente incertidumbre:

*“What criteria are used to accept or reject an incoming batch, and where is that decision registered?”*

Este punto es importante porque las entrevistas muestran que existen criterios y verificaciones antes de utilizar una materia prima, pero los criterios específicos pueden depender de los procedimientos y requisitos de cada organización. César, por ejemplo, señala que existe un proceso previo de selección y calificación de proveedores y materias primas, mientras que Ohmar menciona que el certificado de análisis es necesario para respaldar técnicamente el uso de un insumo.

d) **Quality Records and Audits**


<div align="center">
  <img src="../assets/img/chapter-ii/quality-records-and-audits.png" alt ="Flow 2" width=700>
</div>

<br>

Este flujo representa las actividades relacionadas con la generación, revisión y consulta de los registros de calidad, así como la atención de solicitudes de información durante una auditoría. El proceso inicia con el Quality Staff, quien registra la información correspondiente en un registro de calidad. Posteriormente, el Quality Supervisor revisa dicho registro y consulta los registros históricos y de desviaciones cuando necesita información sobre eventos o controles realizados anteriormente.

Cuando se realiza una auditoría, el Auditor solicita la información necesaria y el Quality Supervisor proporciona los registros de calidad requeridos.

