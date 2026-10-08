## 5.4. Applications UX/UI Design
Esta sección detalla el diseño de las interfaces operativas de la plataforma Restock, abarcando tanto la aplicación web de gestión como la aplicación móvil de monitoreo. El diseño UX/UI se ha centrado en la eficiencia operativa, buscando que el flujo de información entre las básculas inteligentes y el usuario final sea directo, minimizando errores en la interpretación de datos de inventario.

### 5.4.1. Applications Wireframes

Se presentan los esquemas estructurales de las aplicaciones, los cuales definen la lógica de navegación y la distribución de los componentes funcionales. Estos wireframes de media fidelidad sirven para validar la usabilidad del sistema, permitiendo organizar los módulos de visualización de peso, alertas de temperatura y gestión de reportes de manera coherente, antes de proceder con la implementación de estilos visuales.

#### Web Application

En esta sección se presentan los esquemas de media fidelidad diseñados específicamente para la aplicación web de QualiTrack. El enfoque principal de estos wireframes es organizar la información operativa y facilitar la consulta de los principales indicadores relacionados con la gestión de calidad farmacéutica. La arquitectura de información busca proporcionar una navegación clara y estructurada para el personal del laboratorio, permitiendo acceder de manera eficiente a información sobre trazabilidad, equipos, alertas, telemetría y procesos de calidad.

**Dashboard**

**Descripción:** Esquema de media fidelidad del dashboard principal de QualiTrack, diseñado para ofrecer una visión general del estado operativo del laboratorio. La interfaz organiza indicadores, gráficos, filtros y listados relacionados con el seguimiento de las operaciones, permitiendo consultar rápidamente información relevante sobre equipos, alertas, trazabilidad y procesos de calidad.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/DashBoard.png" width=600>
  
</div>

**Desviaciones Ambientales**

**Descripción:** Esquema de media fidelidad de la pantalla de monitoreo de desviaciones ambientales de QualiTrack, diseñada para consultar y analizar los registros de parámetros ambientales del laboratorio. La interfaz organiza los registros en una tabla y presenta su comportamiento mediante una gráfica temporal, facilitando la identificación de variaciones y posibles desviaciones respecto a los parámetros establecidos.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Deviation Ambiental.png" width=600>
  
</div>

**Lista de equipos**

**Descripción:** Esquema de media fidelidad de la pantalla de gestión de equipos de QualiTrack, diseñada para consultar y organizar los equipos registrados en el laboratorio. La interfaz incorpora indicadores generales, búsqueda y filtros, además de una tabla con la información principal de cada equipo, facilitando su seguimiento y gestión dentro de los procesos de calidad y trazabilidad.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Lista de Equipos.png" width=600>
  
</div>

**Catálogo de Materias Primas**

**Descripción:** Esquema de media fidelidad de la pantalla de gestión de materias primas de QualiTrack, diseñada para consultar y administrar los insumos registrados para los procesos de fabricación. La interfaz presenta un listado organizado de las materias primas y sus principales datos, facilitando su identificación, seguimiento y trazabilidad dentro de las operaciones del laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Catalogo de Materias Primas.png" width=600>
  
</div>

**Productos Farmacéuticos**

**Descripción:** Esquema de media fidelidad de la pantalla de seguimiento de productos farmacéuticos en proceso de fabricación de QualiTrack, diseñada para consultar los lotes de producción y la información asociada a las materias primas utilizadas. La interfaz permite visualizar y gestionar los registros relacionados con cada lote, facilitando el seguimiento del proceso productivo y manteniendo la trazabilidad de los insumos empleados.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Productos.png" width=600>
  
</div>



**Perfil de Usuario**

**Descripción:** Esquema de media fidelidad de la pantalla de perfil de usuario de QualiTrack, diseñada para consultar y gestionar la información asociada a la cuenta. La interfaz organiza los datos personales y de contacto, junto con opciones de configuración y preferencias del usuario, permitiendo mantener actualizada su información y controlar determinados aspectos de su cuenta.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Profile.png" width=600>
  
</div>

**Perfil del Laboratorio**

**Descripción:** Esquema de media fidelidad de la pantalla de perfil del laboratorio de QualiTrack, diseñada para consultar la información general asociada a la organización. La interfaz presenta los principales datos identificativos y de configuración del laboratorio, organizados en una sección central, junto con una opción para modificar la información registrada.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Perfil de Laboratorio.png" width=600>
  
</div>

**Registro de Dispositivos IoT**

**Descripción:** Esquema de media fidelidad de la pantalla de registro de dispositivos IoT de QualiTrack, diseñada para incorporar y configurar dispositivos destinados al monitoreo de las condiciones de materias primas y productos farmacéuticos. La interfaz permite registrar la información de los dispositivos, incluyendo aquellos utilizados para el monitoreo ambiental y los contenedores inteligentes, que permiten controlar parámetros como temperatura y luminosidad.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Registro de equipos iot dispostivo ambientales o contenedores).png" width=600>
  
</div>

**Lista de Ambientes del Laboratorio**

**Descripción:** Esquema de media fidelidad de la pantalla de gestión de ambientes del laboratorio de QualiTrack, diseñada para consultar y administrar los espacios registrados dentro de la organización. La interfaz presenta un listado estructurado de los ambientes y sus principales datos, incorporando acciones para editar o gestionar cada registro, facilitando su organización y asociación con los procesos de monitoreo y control del laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Lista de Ambientes de un Laboratorio.png" width=600>
  
</div>

**Planes de Suscripción**

**Descripción:** Esquema de media fidelidad de la pantalla de planes de suscripción de QualiTrack, diseñada para presentar las diferentes alternativas disponibles para los laboratorios. La interfaz organiza cada plan en tarjetas independientes, mostrando sus principales características y condiciones, junto con una acción para seleccionar la alternativa que mejor se adapte a las necesidades de la organización.

<div align="center">

  <img src="../assets/img/chapter-v/WireFrame Web/Subscripciones.png" width=600>
  
</div>

#### Mobile Application

En esta sección se presentan los esquemas de media fidelidad diseñados específicamente para dispositivos móviles. El enfoque principal de estos wireframes es la optimización de la experiencia de usuario (UX) en pantallas reducidas, priorizando la visualización rápida de alertas de stock y el estado de las básculas inteligentes. La arquitectura de información aquí expuesta busca minimizar la carga cognitiva del personal operativo, permitiendo una gestión de inventario eficiente y ágil mediante una navegación simplificada.

### 5.4.2. Applications Wireflow Diagrams

**Inicio de Sesión**

**Descripción:** Esquema estructural de la pantalla principal de inicio de sesión que define la disposición de campos para acceso estándar mediante credenciales o inicio de sesión único (SSO) corporativo.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_sign_in.png"  height="600">
</div>

**Registro de Usuario**

**Descripción:** Esquema estructural de la pantalla de registro de nuevos usuarios, definiendo la disposición de campos para la creación de credenciales mediante correo.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_sign_up.png"  height="600">
</div>

**Dashboard de Monitoreo General**

**Descripción:** Esquema de la pantalla principal que define la disposición estructural de indicadores de estado de los contenedores, ambientes, alertas y metricas.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_dashboard.png"  height="600">
</div>

**Dashboard Risk Overview**

**Descripción:** Esquema de la pantalla extendida de la sección Risk Overview, define la disposición de las alertas registradas por los equipos.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_dashboard_view_all.png"  height="600">
</div>

**Dashboard de telemetría**

**Descripción:** Esquema de estructural que define la disposición de las métricas registradas por el equipo seleccionado: estado de conexión con su latencia, las anomalías detectadas y la gráfica del perfil de temperatura.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_telemetry.png"  height="600">
</div>

**Data Log de telemetria**

**Descripción:** Esquema de estructural del registro detallado de lecturas de los sensores, filtrable por equipo y rango de fechas, que identifica en cada entrada el parámetro, la fecha y hora.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_telemetry_datalog.png"  height="600">
</div>

**Alertas de cumplimiento**

**Descripción:** Esquema de estructural del centro de alertas que presenta los indicadores de alertas sin resolver y desviaciones críticas, el filtrado de incidentes por estado.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_compilance_alerts.png"  height="600">
</div>

**Alertas críticas y desviaciones**

**Descripción:** Esquema estructural de la ventana emergente de alertas críticas que detalla el sensor, la unidad de almacenamiento y el lote afectados.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_compilance_alerts_details.png"  height="600">
</div>

**Manejo de lotes**

**Descripción:** Esquema de estructural de la lista de lotes de producción que presenta los indicadores de lotes liberados, pendientes y rechazados.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_batch_management.png"  height="600">
</div>

**Información general de Lote**

**Descripción:** Esquema de estructura de la información general de los lotes ya sean pendientes, aceptados o rechazados.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_batch_general_info.png"  height="600">
</div>

**Materiales del Lote**

**Descripción:** Esquema de estructura de los materiales usados para la creación de los lotes.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_batch_material_used.png"  height="600">
</div>

**Confirmación de Lote**

**Descripción:** Esquema de estructura de la pantalla de confirmación o rechazo de los lotes.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_batch_status.png"  height="600">
</div>

**Manejo de Productos**

**Descripción:** Esquema de estructura del catálogo de productos registrados que organiza en una tabla el código, el nombre, las especificaciones BPM.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_product_management.png"  height="600">
</div>

**Registro de Productos**

**Descripción:** Esquema de estructura del formulario de registro de productos farmacéuticos.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_product_register.png"  height="600">
</div>

**Inventario de Material Primas**

**Descripción:** Esquema de estructura del inventario de materias primas que advierte los materiales por debajo del umbral mínimo.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_inventory_management.png"  height="600">
</div>

**Registro de Materia Prima**

**Descripción:** Esquema de estructura del formulario de registro de materias primas.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_inventory_register.png"  height="600">
</div>

**Facturación de suscripción**

**Descripción:** Esquema de estructura de la pantalla de facturación que presenta la suscripción activa con su plan, estado y periodo, las opciones para cambiar de plan o cancelarla.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_suscription_payment.png"  height="600">
</div>

**Planes de suscripción**

**Descripción:** Esquema de estructura de la pantalla de planes con facturación mensual que compara los planes Enterprise y Standard Lab según su precio.

<div align="center">
  <img src="../assets/img/chapter-v/Wireframe App Mobile/wireframe_suscription_plans.png"  height="600">
</div>

### 5.4.3. Applications Wireflow Diagrams

Un wireflow o flujo de pantalla es un diagrama donde se reúnen distintos wireframes realizados cuya finalidad es contar las metas del usuario (User Goal) con la aplicación y cómo las consiguen.

**- Task Flow 1:** Registro de un nuevo usuario y activación de su suscripción

<div align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-1.png"  alt="task flow 1">
</div>

#### Pasos del Task Flow 1:
1. El visitante ingresa a la página de inicio de QualiTrack
2. El visitante selecciona crear una cuenta como QA Manager / Supervisor
3. El visitante completa su usuario, correo y contraseña
4. El visitante inicia sesión con sus credenciales
5. El usuario revisa los planes de suscripción y selecciona uno
6. El usuario completa el pago en Stripe
7. El usuario registra los datos de su laboratorio
8. El usuario ingresa al Dashboard

**- User Goal 1:** Como visitante, quiero crear mi cuenta como QA Manager, activar una suscripción y registrar mi laboratorio, para comenzar a utilizar QualiTrack.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-1.png"
    alt="wire-flow-1"/>
</p>

El visitante ingresa a QualiTrack y crea su cuenta en modo QA Manager / Supervisor con su usuario, correo y contraseña. Luego inicia sesión, elige uno de los planes disponibles y completa el pago en Stripe. Con la suscripción activa, registra el nombre, RUC, dirección, teléfono y normativas aplicables de su laboratorio, y accede al Dashboard para comenzar a configurar la plataforma.

**- Task Flow 2:** Inicio de sesión y actualización del perfil del laboratorio

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-2.png"
    alt="task-flow-2"/>
</p>

#### Pasos del Task Flow 2:
1. El responsable de calidad ingresa a la aplicación web
2. El responsable de calidad inicia sesión con su usuario y contraseña
3. El responsable de calidad visualiza el Dashboard
4. El responsable de calidad va a la sección de Perfil del laboratorio
5. El responsable de calidad selecciona editar el perfil
6. El responsable de calidad actualiza los datos del laboratorio
7. El responsable de calidad guarda los cambios
8. El responsable de calidad visualiza el perfil actualizado

**- User Goal 2:** Como responsable de calidad y supervisión, quiero iniciar sesión y mantener actualizados los datos de mi laboratorio, para que la información registrada en QualiTrack esté vigente.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-2.png"/>
</p>

El responsable de calidad inicia sesión con sus credenciales y llega al Dashboard, donde ve el resumen de lotes, alertas, materias primas y telemetría. Desde el menú lateral accede al perfil del laboratorio, edita su nombre, dirección, teléfono o normativas aplicables, y guarda los cambios para mantener la información vigente.

**- Task Flow 3:** Registro de un ambiente

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-3.png"
    alt="task-flow-3"/>
</p>

#### Pasos del Task Flow 3:
1. El responsable de calidad va a la sección de Ambientes
2. El responsable de calidad selecciona registrar un ambiente
3. El responsable de calidad ingresa el código, nombre y descripción del ambiente
4. El responsable de calidad selecciona el uso del ambiente
5. El responsable de calidad confirma el registro
6. El responsable de calidad visualiza el nuevo ambiente en la lista

**- User Goal 3:** Como responsable de calidad y supervisión, quiero registrar los ambientes de mi laboratorio o almacén e indicar su uso, para organizar las zonas que QualiTrack supervisará.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-3.png"
    alt="wire-flow-3"/>
</p>

El responsable de calidad accede a la sección de Ambientes, que inicialmente no tiene registros, y abre el formulario de registro. Ingresa un código único dentro del laboratorio, el nombre y la descripción de la zona, y elige su uso principal: producción, laboratorio, almacenamiento de materias primas, almacenamiento de productos u otro. Al confirmar, el nuevo ambiente aparece en la lista con su uso identificado.

**- Task Flow 4:** Actualización de un ambiente y su uso

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-4.png"
    alt="task-flow-4"/>
</p>

#### Pasos del Task Flow 4:
1. El responsable de calidad va a la lista de ambientes
2. El responsable de calidad selecciona editar un ambiente
3. El responsable de calidad modifica el nombre y la descripción
4. El responsable de calidad guarda los cambios
5. El responsable de calidad abre el selector de uso desde la lista
6. El responsable de calidad elige el nuevo uso del ambiente
7. El responsable de calidad visualiza el ambiente actualizado
   
**- User Goal 4:** Como responsable de calidad y supervisión, quiero actualizar la información y el uso de un ambiente, para mantener correctamente identificada cada zona.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-4.png"
    alt="wire-flow-4"/>
</p>

El responsable de calidad selecciona un ambiente desde la lista y edita su nombre y descripción, manteniendo su código como identificador. Después de guardar, cambia el uso del ambiente directamente desde la lista mediante el selector de uso, y el sistema refleja la actualización en la tabla.

**- Task Flow 5:** Registro de personal del laboratorio

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-5.png"
    alt="task-flow-5"/>
</p>

#### Pasos del Task Flow 5:
1. El responsable de calidad va a la sección de Personal
2. El responsable de calidad selecciona agregar personal
3. El responsable de calidad ingresa el nombre, cargo y correo corporativo
4. El responsable de calidad elige el tipo de acceso: operador o auditor
5. El responsable de calidad confirma el registro
6. El sistema muestra las credenciales temporales del nuevo usuario

**- User Goal 5:** Como responsable de calidad y supervisión, quiero registrar al personal de mi laboratorio y asignarle un tipo de acceso, para que operadores y auditores puedan ingresar a QualiTrack.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-5.png"
    alt="wire-flow-5"/>
</p>

El responsable de calidad registra a un miembro del personal con su nombre, cargo y correo corporativo, que se convierte en su usuario, y define si tendrá acceso como operador o como auditor. La plataforma crea la cuenta y envía las credenciales por correo; si el envío falla, muestra una contraseña temporal para entregarla directamente, que el usuario deberá cambiar en su primer inicio de sesión.

**- Task Flow 6:** Supervisión de la telemetría desde la aplicación móvil

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-6.png"
    alt="task-flow-6"/>
</p>

#### Pasos del Task Flow 6:
1. El personal operativo ingresa a la aplicación móvil
2. El personal operativo abre el menú principal
3. El personal operativo va a la sección de Telemetría
4. El personal operativo selecciona el área a supervisar
5. El personal operativo revisa el estado de conexión y las lecturas actuales
6. El personal operativo abre el registro de lecturas
7. El personal operativo filtra las lecturas por equipo y rango de fechas
   
**- User Goal 6:** Como personal operativo, quiero revisar desde el móvil las lecturas actuales y el historial de mediciones de un área, para verificar si las condiciones son adecuadas.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-6.png"
    alt="wire-flow-6"/>
</p>

El personal operativo accede a la sección de Telemetría desde el menú de la aplicación móvil, selecciona el área que desea supervisar y revisa el estado de conexión, las anomalías detectadas y las lecturas actuales de los sensores. Luego consulta el registro de lecturas, donde puede filtrar por equipo y rango de fechas para identificar mediciones fuera de los parámetros BPM.

**- Task Flow 7:** Revisión y resolución de una alerta de desviación

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-7.png"
    alt="task-flow-7"/>
</p>

#### Pasos del Task Flow 7:
1. El responsable de calidad ingresa a la aplicación móvil
2. El responsable de calidad abre una alerta crítica desde el Dashboard
3. El responsable de calidad revisa el resumen de las alertas críticas
4. El responsable de calidad va a la sección de Alertas
5. El responsable de calidad selecciona una alerta sin resolver
6. El responsable de calidad revisa la severidad, el valor registrado y el umbral
7. El responsable de calidad registra las notas de resolución
8. El responsable de calidad marca la alerta como resuelta
   
**- User Goal 7:** Como responsable de calidad y supervisión, quiero revisar una alerta de desviación y registrar su resolución desde el móvil, para conservar evidencia de cómo fue atendida.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-7.png"
    alt="wire-flow-7"/>
</p>

El responsable de calidad identifica una alerta crítica desde el Dashboard de la aplicación móvil y revisa su resumen. Luego accede a la lista de alertas de cumplimiento, abre el detalle de una desviación sin resolver para revisar su severidad, el valor registrado y el umbral permitido, y registra las notas de resolución antes de marcarla como resuelta. La alerta pasa al estado resuelta y conserva la evidencia de su atención.

**- Task Flow 8:** Revisión y liberación de un lote de producto

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-8.png"
    alt="task-flow-8"/>
</p>

#### Pasos del Task Flow 8:
1. El responsable de calidad abre el menú principal
2. El responsable de calidad va a la sección de Lotes
3. El responsable de calidad selecciona un lote pendiente
4. El responsable de calidad revisa la información general del lote
5. El responsable de calidad revisa las materias primas utilizadas
6. El responsable de calidad selecciona liberar el lote
7. El responsable de calidad ingresa la fecha y las notas de liberación
8. El responsable de calidad confirma la liberación
   
**- User Goal 8:** Como responsable de calidad y supervisión, quiero revisar la información y las materias primas de un lote antes de liberarlo, para que la decisión quede sustentada y registrada.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-8.png"
    alt="wire-flow-8"/>
</p>

El responsable de calidad accede a los lotes de producción y selecciona un lote pendiente de liberación. Revisa su información general y el historial de materias primas utilizadas con sus cantidades y fechas de uso. Con esa información abre el proceso de liberación, registra la fecha y las notas de verificación de calidad, y confirma la decisión para que quede registrada en el lote.

**- Task Flow 9:** Registro de una materia prima en el inventario

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-9.png"
    alt="task-flow-9"/>
</p>

#### Pasos del Task Flow 9:
1. El responsable de calidad abre el menú principal
2. El responsable de calidad va a la sección de Inventario
3. El responsable de calidad revisa las materias primas con stock bajo
4. El responsable de calidad selecciona agregar material
5. El responsable de calidad ingresa el nombre, código, proveedor y lote del proveedor
6. El responsable de calidad ingresa el vencimiento, la cantidad, la unidad y el stock mínimo
7. El responsable de calidad confirma el registro
8. El responsable de calidad visualiza la materia prima en el inventario
   
**- User Goal 9:** Como responsable de calidad y supervisión, quiero registrar una materia prima con su lote y su stock mínimo, para controlar su disponibilidad y saber cuándo reponerla.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-9.png"
    alt="wire-flow-9"/>
</p>

El responsable de calidad accede al inventario de materias primas, donde el sistema advierte cuántos materiales se encuentran por debajo del umbral mínimo. Desde allí registra una nueva materia prima con su código interno, proveedor, lote del proveedor, fecha de vencimiento, cantidad inicial, unidad de medida y stock mínimo. Al confirmar, el material aparece en el inventario con su estado de stock.

**- Task Flow 10:** Registro de cuenta e inicio de sesión desde la aplicación móvil

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-10.png"
    alt="task-flow-10"/>
</p>

#### Pasos del Task Flow 10:
1. El visitante ingresa a la aplicación móvil
2. El visitante selecciona registrarse como QA Manager / Supervisor
3. El visitante ingresa su usuario
4. El visitante ingresa y confirma su contraseña
5. El visitante crea su cuenta
6. El usuario regresa a la pantalla de inicio de sesión
7. El usuario inicia sesión con su usuario y contraseña
8. El usuario ingresa al Dashboard

**- User Goal 10:** Como visitante, quiero crear mi cuenta e iniciar sesión desde la aplicación móvil, para supervisar la operación del laboratorio desde cualquier lugar de la planta.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-10.png"
    alt="wire-flow-10"/>
</p>

El visitante accede a la aplicación móvil y, desde la pantalla de inicio de sesión, elige registrarse como QA Manager / Supervisor. Ingresa su usuario, define y confirma su contraseña, y crea la cuenta. Luego inicia sesión con sus credenciales y accede al Dashboard, donde visualiza el estado operativo del laboratorio. Si el usuario ya está registrado o las contraseñas no coinciden, el sistema impide crear la cuenta.

**- Task Flow 11:** Reconocimiento de alertas críticas desde el Dashboard

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-11.png"
    alt="task-flow-11"/>
</p>

#### Pasos del Task Flow 11:
1. El personal operativo ingresa a la aplicación móvil
2. El personal operativo revisa el panel de riesgos del Dashboard
3. El personal operativo selecciona ver todas las alertas críticas
4. El personal operativo revisa el sensor, el lote afectado, el valor registrado y el umbral BPM de la desviación principal
5. El personal operativo revisa el registro del incidente
6. El personal operativo reconoce la alerta
7. El personal operativo inspecciona las demás alertas críticas
8. El personal operativo cierra la ventana de alertas

**- User Goal 11:** Como personal operativo, quiero revisar y reconocer las alertas críticas desde el Dashboard, para dejar constancia de que estoy atendiendo las desviaciones detectadas.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-11.png"
    alt="wire-flow-11"/>
</p>

El personal operativo identifica en el panel de riesgos del Dashboard que existen alertas críticas y abre la ventana que las reúne. En la desviación principal revisa el sensor, la unidad de almacenamiento y el lote afectados, compara el valor registrado con el umbral BPM y lee el registro del incidente. Después reconoce la alerta para dejar constancia de su atención e inspecciona las demás alertas críticas. Desde esta ventana también puede abrir la investigación o consultar el audit log.

**- Task Flow 12:** Rechazo de un lote no conforme

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-12.png"
    alt="task-flow-12"/>
</p>

#### Pasos del Task Flow 12:
1. El responsable de calidad abre el menú principal
2. El responsable de calidad va a la sección de Lotes
3. El responsable de calidad revisa el detalle de un lote pendiente
4. El responsable de calidad selecciona rechazar el lote desde su tarjeta
5. El responsable de calidad ingresa la fecha de rechazo
6. El responsable de calidad describe el motivo regulatorio o la no conformidad BPM
7. El responsable de calidad confirma el rechazo
8. El responsable de calidad visualiza el lote con estado rechazado

**- User Goal 12:** Como responsable de calidad y supervisión, quiero rechazar un lote no conforme registrando la fecha y el motivo, para que la decisión quede sustentada según las Buenas Prácticas de Manufactura.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-12.png"
    alt="wire-flow-12"/>
</p>

El responsable de calidad accede a los lotes de producción y revisa el detalle de un lote pendiente de aprobación. Al identificar que no cumple los criterios de calidad, selecciona rechazarlo desde su tarjeta y completa el formulario de rechazo con la fecha y el motivo regulatorio, que es obligatorio según las BPM. Al confirmar, el lote pasa a estado rechazado y conserva las notas que sustentan la decisión.

**- Task Flow 13:** Registro de un producto farmacéutico

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-13.png"
    alt="task-flow-13"/>
</p>

#### Pasos del Task Flow 13:
1. El responsable de calidad abre el menú principal
2. El responsable de calidad va a la sección de Productos
3. El responsable de calidad revisa el catálogo de productos registrados
4. El responsable de calidad selecciona registrar un nuevo producto
5. El responsable de calidad ingresa el código interno y el nombre comercial
6. El responsable de calidad ingresa la descripción terapéutica
7. El responsable de calidad ingresa las especificaciones de calidad BPM
8. El responsable de calidad confirma el registro
9. El responsable de calidad visualiza el producto en el catálogo

**- User Goal 13:** Como responsable de calidad y supervisión, quiero registrar los productos farmacéuticos con sus especificaciones BPM, para asociarlos a los lotes que se fabrican y evaluar su calidad.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-13.png"
    alt="wire-flow-13"/>
</p>

El responsable de calidad accede al catálogo de productos farmacéuticos y selecciona registrar uno nuevo. Ingresa su código interno, nombre comercial y descripción terapéutica, y define las especificaciones de calidad BPM con los criterios de aceptación, los límites y los controles requeridos. Al confirmar, el producto aparece en el catálogo y queda disponible para asociarlo a los lotes de producción.

**- Task Flow 14:** Gestión de la suscripción y cambio de plan

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/task-flow-14.png"
    alt="task-flow-14"/>
</p>

#### Pasos del Task Flow 14:
1. El responsable de calidad abre el menú principal
2. El responsable de calidad va a la sección de Facturación
3. El responsable de calidad revisa el plan, el estado y el periodo de su suscripción
4. El responsable de calidad consulta el historial de pagos
5. El responsable de calidad descarga el recibo en PDF de un pago
6. El responsable de calidad selecciona cambiar de plan
7. El responsable de calidad compara los planes con facturación mensual y anual
8. El responsable de calidad selecciona un nuevo plan

**- User Goal 14:** Como responsable de calidad y supervisión, quiero revisar mi suscripción y su historial de pagos y cambiar de plan cuando lo necesite, para ajustar QualiTrack al tamaño de mi laboratorio.

<p align="center">
  <img src="../assets/img/chapter-v/Wireflow Diagrams/wireflow-14.png"
    alt="wire-flow-14"/>
</p>

El responsable de calidad accede al resumen de facturación, donde revisa el plan contratado, su estado y el periodo vigente, consulta el historial de pagos procesados por Stripe y descarga los recibos en PDF. Si necesita más usuarios o registros de equipos, selecciona cambiar de plan, compara las opciones con facturación mensual y anual y elige el plan que mejor se ajusta a su laboratorio. Desde el mismo resumen también puede cancelar la suscripción.

### 5.4.3. Applications Mock-ups

#### Web Application

En esta sección se presentarán los mockups de la aplicación web, los cuales corresponden a representaciones de media a alta fidelidad de las funcionalidades principales de QualiTrack. Para el diseño de los mockups, se tomó como base la estructura y organización visual definida previamente en los wireframes.

**Dashboard**

**Descripción:** Interfaz principal del dashboard de QualiTrack, diseñada para proporcionar una visión general del estado operativo del laboratorio. La pantalla presenta indicadores sobre equipos registrados, lotes en proceso, alertas abiertas y materiales con bajo stock. Asimismo, incorpora la visualización de telemetría de los equipos, alertas que requieren atención, información de suscripción y facturación, y un resumen del estado de los lotes de producción, permitiendo al responsable de calidad consultar rápidamente los principales aspectos de la operación del laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Dashboard.png" width=760>
  
</div>

**Historial de Alertas**

**Descripción:** Interfaz de consulta del historial de alertas de QualiTrack, diseñada para visualizar las alertas generadas en los ambientes y contenedores monitoreados, incluyendo aquellas que ya fueron resueltas. La pantalla permite filtrar los registros por estado y nivel de severidad, mostrando información sobre la fecha de detección, origen de la alerta, variable monitoreada, nivel de severidad y estado de atención. Además, incorpora el acceso al detalle de cada alerta para facilitar su seguimiento y revisión.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Alert History.png" width=760>
  
</div>

**Almacenamiento de Lote en Contenedor**

**Descripción:** Interfaz de gestión del almacenamiento de un lote de producto farmacéutico, diseñada para asociar un lote en proceso con un contenedor destinado a su conservación. La pantalla presenta información general del lote, como su estado, cantidad y fecha de inicio, y permite seleccionar el contenedor donde será almacenado. Esta asociación facilita el seguimiento de las condiciones de almacenamiento y la trazabilidad del lote durante su permanencia en el laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Almacenar Lote de Productos en Contenedor.png" width=760>
  
</div>

**Configuración de Parámetros BPM**

**Descripción:** Interfaz de configuración de parámetros BPM de QualiTrack, diseñada para establecer los valores de tolerancia utilizados en el monitoreo de las condiciones de calidad. La pantalla permite registrar el nombre del parámetro, definir sus valores mínimo y máximo y especificar la unidad de medida correspondiente, permitiendo establecer los rangos de referencia para el control y seguimiento de las mediciones para los equipos de laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Configuracion BPM.png" width=760>
  
</div>

**Registro de Laboratorio**

**Descripción:** Interfaz de registro de un nuevo laboratorio en QualiTrack, diseñada para crear el perfil de la organización y establecer la información necesaria para su incorporación a la plataforma. La pantalla permite registrar datos como el nombre del laboratorio, RUC, dirección física y teléfono de contacto, además de seleccionar las regulaciones aplicables a la organización. Finalmente, incorpora la acción para completar el registro del laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Crear Laboratorio.png" width=760>
  
</div>

**Creación de Lote de Producción**

**Descripción:** Interfaz de creación de un lote de producción de QualiTrack, diseñada para registrar una nueva fabricación y dar inicio a su trazabilidad digital. La pantalla permite ingresar el número de lote, fecha de inicio, cantidad, unidad y notas relacionadas con las BPM. Al registrarse, el lote inicia con estado pendiente, permitiendo posteriormente continuar con su seguimiento y gestión dentro del proceso de fabricación.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Crear Lote Producto.png" width=760>
  
</div>

**Generador de Reportes y Documentos**

**Descripción:** Interfaz del generador de reportes y documentos de QualiTrack, diseñada para facilitar la generación de documentación relacionada con los procesos de calidad y operación del laboratorio. La pantalla permite seleccionar diferentes tipos de reportes, como reportes de lotes, ambientales, inventario y registros de equipos, configurando los parámetros correspondientes antes de generar o exportar el documento en formato PDF.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Generador de reporte de pdf.png" width=760>
  
</div>

**Indicadores de Desviación**

**Descripción:** Interfaz de análisis de indicadores de desviación de QualiTrack, diseñada para evaluar el comportamiento de las variables monitoreadas en los ambientes y dispositivos registrados. La pantalla permite seleccionar un periodo y un ambiente, y presenta información sobre las lecturas evaluadas, el tiempo dentro del rango permitido, las desviaciones detectadas, los eventos críticos y la tendencia de cada variable. Además, incorpora una representación gráfica de las mediciones para facilitar la identificación de variaciones y condiciones críticas durante el periodo seleccionado.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Indicadores de Deviacion.png" width=760>
  
</div>

**Perfil del Laboratorio**

**Descripción:** Interfaz del perfil del laboratorio de QualiTrack, diseñada para consultar la información general de la organización registrada en la plataforma. La pantalla presenta el nombre e identificación del laboratorio, dirección física, teléfono de contacto y las regulaciones aplicables, además de incorporar la opción para editar los datos del perfil.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Laboratorio Profile.png" width=760>
  
</div>

**Ambientes**

**Descripción:** Interfaz de gestión de ambientes de QualiTrack, diseñada para consultar y administrar los espacios físicos del laboratorio o almacén donde se encuentran ubicados materiales, productos y dispositivos. La pantalla presenta el código, nombre, uso y descripción de cada ambiente, además de incorporar acciones para editar los registros y registrar nuevos ambientes. Los ambientes pueden estar destinados a producción, laboratorio, almacenamiento de materias primas o almacenamiento de productos terminados, facilitando su organización y asociación con las operaciones del laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Lista de Ambientes.png" width=760>
  
</div>

**Inventario de Materias Primas**

**Descripción:** Interfaz de gestión del inventario de materias primas de QualiTrack, diseñada para consultar y controlar las existencias disponibles en un ambiente determinado. La pantalla presenta información sobre las materias primas registradas, el stock utilizable, el balance físico y el stock mínimo establecido. Además, incorpora opciones de búsqueda, filtrado de materiales con stock bajo, consulta de próximos vencimientos y registro de nuevas materias primas, facilitando el control y seguimiento de los insumos utilizados en los procesos de fabricación.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Lista de Materia Prima.png" width=760>
  
</div>

**Registro de Personal**

**Descripción:** Interfaz para registrar nuevos miembros del personal del laboratorio en QualiTrack. Permite ingresar sus datos principales, como nombre completo, cargo y correo corporativo, además de definir el nivel de acceso según sus funciones. Se contemplan los perfiles de operador, encargado de registrar operaciones asignadas, y auditor, con permisos de consulta de registros y reportes sin modificarlos.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Register Staff.png" width=760>
  
</div>


**Gestión de Personal**

**Descripción:** Interfaz de gestión del personal de QualiTrack, diseñada para consultar y administrar los colaboradores registrados en el laboratorio. La pantalla presenta información como nombre completo, cargo, nivel de acceso, correo corporativo y estado laboral de cada persona, además de permitir consultar los registros asociados a un trabajador y agregar nuevos miembros del personal.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Lista de Personal Staff.png" width=760>
  
</div>

**Productos Farmacéuticos**

**Descripción:** Interfaz de gestión de los productos farmacéuticos registrados en QualiTrack, que permite consultar el catálogo de productos asociados a un ambiente determinado. La pantalla presenta el nombre del producto, su código, las especificaciones relacionadas con las directrices BPM/GMP y su estado, además de facilitar la búsqueda de productos, el acceso a los lotes de producción y el registro de nuevos productos.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Lista de Producto Farmaceuticos.png" width=760>
  
</div>


**Recepciones de Materia Prima**

**Descripción:** Interfaz de consulta y gestión de las recepciones de materias primas asociadas a un producto. Permite visualizar el stock utilizable, el saldo físico y el stock mínimo, así como consultar los lotes recibidos, sus cantidades, fechas de vencimiento, proveedor, contenedor asignado y estado. También permite registrar nuevas recepciones, editar la materia prima y gestionar el almacenamiento de los lotes en contenedores monitoreados.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Lista de Recepciones.png" width=760>
  
</div>

**Catálogo de Equipos y Dispositivos IoT**

**Descripción:** Interfaz de gestión del catálogo de equipos y dispositivos IoT registrados en QualiTrack. Permite consultar los equipos de proceso y dispositivos IoT, identificando su tipo, ambiente asociado y estado operativo. Además, facilita la búsqueda y filtrado de registros, así como el acceso a las funciones para registrar nuevos equipos o dispositivos IoT y mantener actualizado su estado.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Lista de dispositivos.png" width=760>
  
</div>

**Monitoreo Ambiental**

**Descripción:** Interfaz de monitoreo de las condiciones ambientales registradas por los dispositivos IoT en los diferentes ambientes y contenedores. Permite visualizar las últimas lecturas de variables como calidad del aire, movimiento, temperatura, humedad y luminosidad, además del estado de cada dispositivo. También permite identificar aquellos ambientes o contenedores que requieren revisión y acceder al historial de lecturas para realizar un seguimiento de las condiciones monitoreadas.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Monitoreo Ambiental.png" width=760>
  
</div>

**Movimiento de Materia Prima**

**Descripción:** Interfaz de consulta de los movimientos registrados para una materia prima. Permite visualizar las recepciones realizadas, los lotes de proveedor asociados, los cambios en el saldo disponible y la información de trazabilidad de cada movimiento. De esta manera, se facilita el seguimiento de las entradas de materia prima y el control de las cantidades recibidas dentro del inventario.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Movimiento de Materia Prima.png" width=760>
  
</div>

**Registro de Actividad Técnica**

**Descripción:** Interfaz para registrar las actividades técnicas realizadas sobre un equipo o dispositivo, en este caso el Monitor Space. Permite especificar la fecha, el tipo de intervención, el técnico responsable y una descripción detallada de la actividad realizada. Además, se considera el control de permisos para que los operadores solo puedan registrar los mantenimientos que ellos mismos realizaron, manteniendo la trazabilidad de las intervenciones técnicas.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Registrar Actividad tecnica.png" width=760>
  
</div>

**Registro de Ambiente**

**Descripción:** Interfaz para registrar un nuevo ambiente dentro del laboratorio. Permite ingresar un código único, el nombre y una descripción del espacio, además de definir su uso principal. De esta manera, los ambientes pueden ser identificados y organizados para facilitar posteriormente la ubicación y el monitoreo de materiales, productos y dispositivos IoT dentro del laboratorio.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Registrar Ambientes.png" width=760>
  
</div>

**Registro de Materia Prima**

**Descripción:** Interfaz para registrar una nueva materia prima en el inventario. Permite ingresar el código y nombre del material, seleccionar la unidad de medida y establecer el stock mínimo requerido. Esta información permite mantener un control adecuado de las materias primas y facilitar la identificación de aquellas que requieren reposición.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Registrar Matria Prima.png" width=760>
  
</div>

**Registro de Producto Farmacéutico**

**Descripción:** Interfaz para registrar un nuevo producto farmacéutico en el laboratorio. Permite ingresar el código interno y nombre comercial del producto, además de una descripción terapéutica opcional. También permite definir las especificaciones de calidad bajo BPM, incluyendo criterios de aceptación, límites y controles requeridos, asegurando que el producto quede registrado con la información necesaria para su gestión y control.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Registrar Producto.png" width=760>
  
</div>

**Registro de dispositivo IoT**

**Descripción:** Interfaz para registrar un nuevo dispositivo IoT en QualiTrack. Permite seleccionar el tipo de dispositivo, que puede ser Environmental Device para supervisar las condiciones generales de un ambiente, o Container Device para monitorear las condiciones dentro de un contenedor.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Registro de dispositivos Iot.png" width=760>
  
</div>

**Resumen de los ambientes**

Descripción: Interfaz que presenta un resumen consolidado de las mediciones registradas por los dispositivos IoT durante un periodo determinado. Permite seleccionar el periodo de consulta —últimas 24 horas, últimos 7 días o últimos 31 días— y filtrar la información por ambiente.
El resumen organiza las lecturas por dispositivo y variable monitoreada, mostrando la cantidad de lecturas, promedio, valor mínimo, valor máximo y última lectura registrada. Para los ambientes monitoreados se consideran variables como calidad del aire, movimiento, humedad, luminosidad y temperatura.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Resumen de Ambientes.png" width=760>
  
</div>

**Planes de suscripción**

**Descripción:** Interfaz que permite consultar y seleccionar el plan de suscripción de QualiTrack de acuerdo con las necesidades del laboratorio. Presenta cuatro alternativas: Free, Basic, Professional y Enterprise, diferenciadas por cantidad de usuarios, dispositivos IoT conectados y funcionalidades disponibles.


<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Subscription.png" width=760>
  
</div>

**Historial de telemetría**

**Descripción:** Interfaz que permite consultar el historial de las lecturas y acciones registradas por un dispositivo IoT durante un periodo determinado. El usuario puede seleccionar el ambiente, dispositivo, métrica y rango de fechas para consultar la información.

<div align="center">

  <img src="../assets/img/chapter-v/Mockup Web/Telemetry History.png" width=760>
  
</div>


#### Mobile Application

**Inicio de sesión**

**Descripción:** Pantalla de acceso a la aplicación móvil mediante usuario y contraseña, con enlaces para registrarse como QA Manager / Supervisor o como Lab Operator.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-login.png" alt="Pantalla de inicio de sesión de la aplicación móvil" height="400">
</div>

**Registro de QA Manager**

**Descripción:** Formulario de creación de cuenta para el responsable de la supervisión y liberación de lotes farmacéuticos, con usuario, contraseña y confirmación de contraseña.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-register-qa-manager.png" alt="Formulario de registro de cuenta QA Manager" height="400">
</div>

**Registro de Lab Operator**

**Descripción:** Formulario de creación de cuenta para el personal de análisis y ensayos de control en planta, con acceso directo al inicio de sesión.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-register-operator.png" alt="Formulario de registro de cuenta Lab Operator" height="400">
</div>

**Menú de navegación lateral**

**Descripción:** Panel de navegación con el perfil del usuario y su planta asignada, los módulos principales de la aplicación y el acceso para sincronizar la telemetría.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-burger-menu.png" alt="Menú lateral con los módulos principales de la aplicación" height="400">
</div>

**Dashboard general**

**Descripción:** Centro de mando que resume el índice de salud operativa, las métricas de lotes, alertas y materias primas, el estado de la telemetría en vivo, la distribución de recursos y los riesgos pendientes.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-general-dashboard.png" alt="Dashboard general con métricas operativas y riesgos" height="400">
</div>

**Alertas críticas del dashboard**

**Descripción:** Ventana emergente que lista las alertas críticas recientes y detalla la desviación principal con su sensor, lote afectado, valor registrado y umbral BPM, con acciones para investigar, reconocer o consultar el audit log.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-general-dashboard-view-all.png" alt="Ventana emergente de alertas críticas y desviaciones" height="400">
</div>

**Dashboard de telemetría**

**Descripción:** Panel de supervisión en tiempo real del área seleccionada, con el estado de conexión, las anomalías detectadas, el perfil de temperatura y las lecturas actuales de temperatura, calidad de aire y humedad.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-telemetry-dashboard.png" alt="Dashboard de telemetría en tiempo real" height="400">
</div>

**Data log de telemetría**

**Descripción:** Historial de lecturas de los sensores filtrable por equipo y rango de fechas, que distingue las mediciones normales de las desviaciones BPM.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-telemetry-datalog.png" alt="Historial de lecturas de sensores con desviaciones BPM" height="400">
</div>

**Alertas de cumplimiento**

**Descripción:** Centro de alertas que presenta los incidentes BPM activos por equipo, con indicadores de alertas sin resolver y desviaciones críticas, filtros por estado y la opción de reconocer todas las alertas.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-compliance-alerts.png" alt="Centro de alertas de cumplimiento BPM" height="400">
</div>

**Detalle de desviación sin resolver**

**Descripción:** Ventana de inspección técnica de una alerta pendiente que muestra su severidad, valor registrado, umbral y equipo, y solicita notas de resolución para marcarla como resuelta.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-compliance-alerts-unresolved.png" alt="Detalle de una desviación pendiente de resolución" height="400">
</div>

**Detalle de desviación resuelta**

**Descripción:** Ventana de inspección de una alerta ya atendida que conserva las notas de resolución como evidencia de la acción correctiva aplicada.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-compliance-alerts-resolved.png" alt="Detalle de una desviación resuelta con sus notas de resolución" height="400">
</div>

**Lotes de producción**

**Descripción:** Listado de lotes con indicadores por estado, búsqueda y filtros, en el que los lotes pendientes pueden aprobarse o rechazarse directamente desde su tarjeta.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-production-batches.png" alt="Listado de lotes de producción por estado" height="400">
</div>

**Detalle de lote pendiente**

**Descripción:** Ventana con la información general de un lote en espera de aprobación de QA, incluidas sus notas BPM de revisión.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-production-batches-pending.png" alt="Detalle de un lote pendiente de aprobación" height="400">
</div>

**Detalle de lote liberado**

**Descripción:** Ventana con la información general de un lote liberado, que muestra el producto, la cantidad, la fecha de inicio y las notas BPM.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-production-batches-release.png" alt="Detalle de un lote liberado" height="400">
</div>

**Detalle de lote rechazado**

**Descripción:** Ventana con la información general de un lote rechazado y las notas BPM que sustentan la decisión.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-production-batches-reject.png" alt="Detalle de un lote rechazado" height="400">
</div>

**Materias primas utilizadas**

**Descripción:** Pestaña del detalle del lote que muestra el historial de materias primas utilizadas con su cantidad y fecha de uso, como soporte de la trazabilidad.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-production-batches-materials-used.png" alt="Historial de materias primas utilizadas en el lote" height="400">
</div>

**Confirmación de liberación de lote**

**Descripción:** Formulario del proceso de liberación conforme a BPM que registra la fecha de liberación y las notas de verificación de calidad antes de confirmar la decisión.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-production-batches-confirm-release.png" alt="Formulario de liberación de lote conforme a BPM" height="400">
</div>

**Confirmación de rechazo de lote**

**Descripción:** Formulario de rechazo de un lote no conforme que exige registrar la fecha y el motivo regulatorio del rechazo, obligatorio según las Buenas Prácticas de Manufactura.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-production-batches-confirm-reject.png" alt="Formulario de rechazo de lote no conforme" height="400">
</div>

**Catálogo de productos farmacéuticos**

**Descripción:** Listado de productos registrados con búsqueda, código, nombre y especificaciones BPM, con acceso para registrar un nuevo producto.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-pharmaceutical-product.png" alt="Catálogo de productos farmacéuticos registrados" height="400">
</div>

**Registro de producto farmacéutico**

**Descripción:** Formulario para definir un producto con su código interno, nombre comercial, descripción terapéutica y especificaciones de calidad BPM.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-pharmaceutical-register.png" alt="Formulario de registro de producto farmacéutico" height="400">
</div>

**Inventario de materias primas**

**Descripción:** Tabla de materias primas con código interno, proveedor autorizado y stock actual, encabezada por una alerta de materiales por debajo del umbral mínimo.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-inventory-materials.png" alt="Inventario de materias primas con alerta de stock bajo" height="400">
</div>

**Registro de materia prima**

**Descripción:** Formulario para ingresar una materia prima con su proveedor, lote del proveedor, vencimiento, cantidad inicial, unidad de medida y umbral mínimo de stock.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-inventory-register.png" alt="Formulario de registro de materia prima" height="400">
</div>

**Planes de suscripción mensual**

**Descripción:** Vista comparativa de los planes Enterprise y Standard Lab con facturación mensual, detallando el precio, los usuarios, los registros de equipos y los beneficios incluidos.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-subscription-plans-month.png" alt="Planes de suscripción con facturación mensual" height="400">
</div>

**Planes de suscripción anual**

**Descripción:** Vista de los planes con la facturación anual seleccionada, que aplica el descuento por pago anual y actualiza el precio de cada plan.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-subscription-plans-year.png" alt="Planes de suscripción con facturación anual" height="400">
</div>

**Resumen de facturación**

**Descripción:** Pantalla de gestión de la suscripción activa que muestra el plan, su estado y el periodo vigente, junto con el historial de pagos procesados por Stripe y la descarga de recibos en PDF.

<div align="center">
  <img src="../assets/img/chapter-v/Mock Up App Mobile/mock-up-subscription-payment.png" alt="Resumen de la suscripción activa e historial de pagos" height="400">
</div>

### 5.4.4. Applications User Flow Diagrams.
