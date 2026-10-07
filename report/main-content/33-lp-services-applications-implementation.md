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

Step 1-1

2) Seleccionamos la suscripción que tenemos:

Step-1-2

3) Vamos a Configuración y después Proveedores de Recursos:

Step-1-3

4) Seleccionamos los siguientes recursos: Microsoft.App, Microsoft.OperationalInsights, Microsoft.ContainerRegistry, Microsoft.DBforMySQL y Microsoft.ManagedIdentity y le damos a registrar.

Step-1-4

#### 6.2.1.9. Team Collaboration Insights during Sprint
