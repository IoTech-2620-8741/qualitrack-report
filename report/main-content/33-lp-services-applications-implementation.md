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

**Despliegue de la aplicación Back-end**:

Nombre del repositorio en la organización: qualitrack-platform

Previo a iniciar los pasos:

* Para el uso del servicio SMTP con Gmail, debes tener creado una contraseña de aplicacion en tu cuenta de correo a usar:

1) En myaccount.google.com, buscamos **Contraseñas de aplicaciones** o entramos a [Contraseñas de aplicaciones](https://myaccount.google.com/apppasswords):

2) Ingresas el nombre de la aplicación, en este caso, escribimos **iotech-qualitrack**:

![Previous Step 1 - Ingreso del nombre de la aplicación](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-previous-step-1.png)

3) Finalmente, mostrará la contraseña para la aplicación, que nos permitirá usar la cuenta de correo para las aplicaciones externas:

![Previous Step 2 - Contraseña de aplicación generada](../assets/img/chapter-vi/sprint-1/deployment-evidence/sprint-1-deployment-previous-step-2.png)

**Paso 1: Registro de proveedores en Azure**

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

#### 6.2.1.9. Team Collaboration Insights during Sprint
