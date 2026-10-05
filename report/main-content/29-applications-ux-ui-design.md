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

### 5.4.3. Applications Mock-ups

#### Web Application

#### Mobile Application

### 5.4.4. Applications User Flow Diagrams.
