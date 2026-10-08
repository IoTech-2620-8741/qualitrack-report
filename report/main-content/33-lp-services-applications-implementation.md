## 6.2. Landing Page, Services & Applications Implementation

### 6.2.1. Sprint 1

#### 6.2.1.1. Sprint Planning 1

#### 6.2.1.2. Aspect Leaders and Collaborators

#### 6.2.1.3. Sprint Backlog 1

#### 6.2.1.4. Development Evidence for Sprint Review

#### 6.2.1.5. Testing Suite Evidence for Sprint Review

#### 6.2.1.6. Execution Evidence for Sprint Review

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

En esta sección, se mostrarán las evidencias guardadas y documentadas sobre el despliegue del software que nosotros hemos incluido en el alcance de este primer sprint. Es importante documentar las acciones de despliegue para replicarlas y/o mejorarlas en los siguientes sprints.

**Despliegue de la aplicación backend, incluyendo base de datos**:

Nombre del repositorio en la organización: qualitrack-platform

Previo a iniciar los pasos:

* Para el uso del servicio SMTP con Gmail, debes tener creado una contraseña de aplicacion en tu cuenta de correo a usar:

1) En myaccount.google.com, buscamos **Contraseñas de aplicaciones** o entramos a [Contraseñas de aplicaciones](https://myaccount.google.com/apppasswords):

2) Ingresas el nombre de la aplicación, en este caso, escribimos **iotech-qualitrack**:

![Previous Step 1 - Ingreso del nombre de la aplicación](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-previous-step-1.png)

3) Finalmente, mostrará la contraseña para la aplicación, que nos permitirá usar la cuenta de correo para las aplicaciones externas:

![Previous Step 2 - Contraseña de aplicación generada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-previous-step-2.png)

**Paso 1: Registro de proveedores en Azure:**

1) En [Portal de Azure](https://portal.azure.com/), buscamos en la barra de navegación **Suscripciones**:

![Step 1-1 - Búsqueda en el portal de Azure](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-1-1.png)

2) Seleccionamos la suscripción que tenemos:

![Step 1-2 - Selección de la suscripción](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-1-2.png)

3) Vamos a Configuración y después Proveedores de Recursos:

![Step 1-3 - Proveedores de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-1-3.png)

4) Seleccionamos los siguientes recursos: Microsoft.App, Microsoft.OperationalInsights, Microsoft.ContainerRegistry, Microsoft.DBforMySQL y Microsoft.ManagedIdentity y le damos a registrar.

![Step 1-4 - Registro de los proveedores de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-1-4.png)

**Paso 2: Creación de grupo de recursos, identidad en GitHub y permisos:**

1) Buscamos **Grupos de recursos**:

![Step 2-1 - Búsqueda de grupos de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-1.png)

2) Le damos a Crear grupo de recursos:

![Step 2-2 - Creación del grupo de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-2.png)

3) Ingresamos el nombre y la región del grupo de recursos a crear:

![Step 2-3 - Nombre y región del grupo de recursos](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-3.png)

4) Le damos a crear grupo de recursos:

![Step 2-4 - Confirmación de creación del grupo](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-4.png)

![Step 2-5 - Grupo de recursos creado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-5.png)

5) Ahora, vamos a **Identidades administradas**:

![Step 2-6 - Acceso a identidades administradas](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-6.png)

6) Le damos a crear, seleccionamos nuestro grupo, el nombre y la región para la identidad:

![Step 2-7 - Datos de la identidad administrada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-7.png)

![Step 2-8 - Datos de la identidad administrada (región)](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-8.png)

7) Creamos la identidad administrada:

![Step 2-9 - Creación de la identidad administrada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-9.png)

8) Dentro de la identidad, vamos a Configuración y después Credenciales federadas:

![Step 2-10 - Credenciales federadas](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-10.png)

9) Agregaremos una credencial para Github Actions que nos permitirá realizar CI/CD con todos los valores que nos piden:

![Step 2-11 - Credencial para GitHub Actions](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-11.png)

10) Volvemos a grupos de recursos, entramos a Control de Acceso (IAM) y agregamos una asignación de roles con rol de **Colaborador**, en miembros, seleccionamos la credencial dentro de la identidad administrada:

![Step 2-12 - Asignación de rol Colaborador en IAM](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-12.png)

![Step 2-13 - Selección de la identidad como miembro](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-2-13.png)

**Paso 3: Registro de imagen de contenedor**

1) Buscamos y entramos a **Container registries** y creamos un registro, seleccionando nuestro grupo e ingresando un nombre con una región y un plan de precios y lo creamos:

![Step 3-1 - Búsqueda de Container registries](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-3-1.png)

![Step 3-2 - Botón Crear en Container registries](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-3-2.png)

![Step 3-3 - Datos básicos del registro de contenedor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-3-3.png)

![Step 3-4 - Revisión y validación del registro de contenedor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-3-4.png)

**Paso 4: Creación de la base de datos MySQL**

1) Buscamos y entramos a **Azure Database for MySQL servers**:

![Step 4-1 - Búsqueda de Azure Database for MySQL](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-1.png)

2) Le damos a Crear y seleccionamos la opción **Servidor flexible**:

![Step 4-2 - Opción Servidor flexible](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-2.png)

3) En Datos básicos, seleccionamos nuestro grupo de recursos **iotech-qualitrack-rg**, ingresamos el nombre **iotech-qualitrack-mysql**, la región **Chile Central** y la versión **8.4**:

![Step 4-3 - Datos básicos del servidor flexible](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-3.png)

4) En Carga de trabajo, seleccionamos **Desarrollo o aficionado** y verificamos que quede el tamaño **Burstable B1ms** con **20 GiB** de almacenamiento. Además, dejamos desactivada la opción de Alta disponibilidad:

![Step 4-4 - Proceso, almacenamiento y alta disponibilidad](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-4.png)

5) En Autenticación, seleccionamos únicamente **MySQL**, ingresamos el usuario **iotechadmin** y una contraseña segura. Es importante guardar esta contraseña, ya que no se puede recuperar después:

![Step 4-5 - Autenticación del servidor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-5.png)

6) En la pestaña Redes, seleccionamos como método de conectividad **Acceso público** y marcamos la opción **Permitir acceso público desde cualquier servicio de Azure dentro de Azure a este servidor**, lo que permitirá que nuestra Container App se conecte a la base de datos. Opcionalmente, podemos agregar nuestra IP actual si queremos conectarnos desde MySQL Workbench:

![Step 4-6 - Configuración de redes](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-6.png)

7) Le damos a Revisar y crear, verificamos que la validación sea superada y creamos el servidor. Este proceso puede tardar varios minutos:

![Step 4-7 - Revisión de la configuración del servidor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-7.png)

![Step 4-8 - Implementación completada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-8.png)

8) Cuando termine el despliegue, entramos al servidor, vamos a **Bases de datos** y le damos a Agregar:

![Step 4-9 - Lista de bases de datos del servidor](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-9.png)

9) Ingresamos el nombre de la base de datos **iotech_qualitrack** y la guardamos:

![Step 4-10 - Creación de la base de datos iotech_qualitrack](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-10.png)

10) Finalmente, en **Información general**, copiamos el nombre del servidor, que termina en **.mysql.database.azure.com**, ya que lo usaremos más adelante para la configuración del back-end:

![Step 4-11 - Nombre del servidor en Información general](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-4-11.png)

**Paso 5: Creación en Container Apps con imagen temporal**

1) Creamos una aplicación contenedora de Container Apps, lo crearemos desde bash porque la creación mediante la GUI de Azure crea una versión que no admite secretos:

* Registramos las variables del nombre de grupo de recursos y región:

![Step 5-1 - Variables de grupo de recursos y región](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-5-1.png)

* Creamos el entorno para la aplicación de contenedores en el grupo de recursos y región:

![Step 5-2 - Creación del entorno de Container Apps](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-5-2.png)

![Step 5-3 - Entorno de Container Apps creado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-5-3.png)

* Creamos la aplicación de contenedores dentro del entorno creado:

![Step 5-4 - Creación de la aplicación contenedora](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-5-4.png)

**Paso 6: Agregación de identidad, permisos, secretos y variables**

1) Para la agregación de identidad, usaremos Shell:

* Obtener el ID de la identidad de la aplicación de contenedor dentro del grupo de recursos:

![Step 6-1 - Obtención del ID de la identidad de la aplicación](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-6-1.png)

* Asigna permisos para descargar imágenes de contenedores en el ACR:

![Step 6-2 - Asignación del rol AcrPull en el registro de contenedores](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-6-2.png)

* Configura la identidad administrada por el sistema de la aplicación de contenedor:

![Step 6-3 - Configuración de la identidad del sistema en el registro](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-6-3.png)

2) Para los secretos, ingresamos desde la aplicación de contenedor a seguridad, secretos y agregamos los secretos que necesitamos:

![Step 6-4 - Secretos de la aplicación contenedora](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-6-4.png)

3) Configuramos la entrada en Redes, entradas y cambiamos el puerto de entrada a 8080 (el que escucha Spring Boot):

![Step 6-5 - Configuración de la entrada en el puerto 8080](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-6-5.png)

4) Ingresaremos las variables de entorno para la aplicación, en este caso, haremos referencia a los secretos para algunas variables de entorno:

![Step 6-6 - Variables de entorno de la aplicación](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-6-6.png)

**Paso 7: Ingreso de secretos en el repositorio**

1) Entramos en nuestro repositorio, opciones, secretos y variables y agregamos los secretos de repositorio para conexión a Azure:

* Los datos AZURE_SUBSCRIPTION_ID y AZURE_TENANT_ID se consiguen con este comando:
```bash
az account show --query "{tenant:tenantId, subscription:id}" -o table
```

* El AZURE_CLIENT_ID es del paso 2

![Step 7-1 - Sección de secretos y variables de GitHub Actions](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-7-1.png)

![Step 7-2 - Secretos de repositorio para la conexión a Azure](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-7-2.png)

**Paso 8: Creación de rama en repositorio para CI-CD junto a Azure**

1) Creamos una nueva rama feature para la integración de workflows:

![Step 8-1 - Creación de la rama feature/ci-cd-azure](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-8-1.png)

2) Creamos los archivos deploy.yml y ci.yml dentro de .github/workflows

![Step 8-2 - Workflow deploy.yml](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-8-2.png)

![Step 8-3 - Workflow ci.yml](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-8-3.png)

3) Hacemos push a la rama feature, creamos un PR, esperamos que el test de CI termine y hacemos merge:

![Step 8-4 - Pull request fusionado con el CI aprobado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-8-4.png)

* Para que funcionen correctamente los workflows creados, deben restringir los merge sin previa creación de un PR.

**Paso 9: Creación de rama release versión 1.0.0**

1) Creamos nuestra rama release, en la versión 1.0.0 y la pasamos a remoto:

![Step 9-1 - Creación y push de la rama release/v1.0.0](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-9-1.png)

2) Creamos nuestro PR hacia main:

* Previo a la creación del PR, verificamos que todo lo creado en Azure funcione correctamente.

![Step 9-2 - Creación del pull request hacia main](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-9-2.png)

3) Esperamos a que las pruebas y el despliegue integrados en workflows terminen:

![Step 9-3 - Verificaciones del pull request en curso](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-9-3.png)

![Step 9-4 - Verificaciones del pull request aprobadas](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-9-4.png)

4) Después de aceptar y realizar el merge a main, esperamos a que termine el workflow de despliegue hacia Azure Container Apps que hemos creado:

* Posteriormente, se realizó un hotfix (**hotfix/deploy-image-flag**) hacia main para corregir la construcción de la imagen Docker en el workflow de despliegue. Este es el workflow que terminó correctamente:

![Step 9-6 - Workflow de despliegue completado](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-9-5.png)

**Paso 10: Verificaciones y pasos finales**

1) Entramos a la aplicación del contenedor, dentro, entramos a revisiones y réplicas:

![Step 10-1 - Revisiones y réplicas de la aplicación contenedora](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-1.png)

2) Verificamos que podemos entrar a la documentación Swagger con el link: [Qualitrack Swagger Documentation](https://iotech-qualitrack-api.wonderfulocean-c1f38f8b.chilecentral.azurecontainerapps.io/swagger-ui/index.html)

![Step 10-2 - Documentación Swagger de la API desplegada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-2.png)

3) Verificamos la base de datos usando MySQL Workbench mediante una conexión remota y si existen las tablas:

![Step 10-3 - Conexión exitosa en MySQL Workbench](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-3.png)

![Step 10-4 - Tablas de la base de datos iotech_qualitrack](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-4.png)

4) Etiquetamos la rama main con la nueva versión de lanzamiento:

![Step 10-5 - Lista de releases del repositorio](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-5.png)

![Step 10-6 - Creación de la release v1.0.0](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-6.png)

![Step 10-7 - Release v1.0.0 publicada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-7.png)

* También eliminamos las ramas release y hotfix, cumpliendo el estándar Gitflow

5) En nuestra aplicación de contenedores, en la sección aplicaciones, contenedores y variables de entorno quitamos SPRING_JPA_HIBERNATE_DDL_AUTO para evitar cambios de esquema:

![Step 10-8 - Variable SPRING_JPA_HIBERNATE_DDL_AUTO a eliminar](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-step-10-8.png)

**Despliegue de la aplicación web**

#### 6.2.1.9. Team Collaboration Insights during Sprint
