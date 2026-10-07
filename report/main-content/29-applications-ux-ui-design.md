## 5.4. Applications UX/UI Design
Esta sección detalla el diseño de las interfaces operativas de la plataforma Restock, abarcando tanto la aplicación web de gestión como la aplicación móvil de monitoreo. El diseño UX/UI se ha centrado en la eficiencia operativa, buscando que el flujo de información entre las básculas inteligentes y el usuario final sea directo, minimizando errores en la interpretación de datos de inventario.

### 5.4.1. Applications Wireframes

Se presentan los esquemas estructurales de las aplicaciones, los cuales definen la lógica de navegación y la distribución de los componentes funcionales. Estos wireframes de media fidelidad sirven para validar la usabilidad del sistema, permitiendo organizar los módulos de visualización de peso, alertas de temperatura y gestión de reportes de manera coherente, antes de proceder con la implementación de estilos visuales.

#### Web Application

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

### 5.4.3. Applications Mock-ups

#### Web Application

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



### 5.4.4. Applications User Flow Diagrams.
