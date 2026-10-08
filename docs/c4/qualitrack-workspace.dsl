workspace "QualiTrack" "Plataforma IoT de monitoreo y control de condiciones ambientales para laboratorios y almacenes farmacéuticos, desarrollada por la startup IoTech." {

    model {

        !impliedRelationships false

        # ====================================================================
        #  PERSONAS
        # ====================================================================

        visitor = person "Visitor" "Consulta el sitio público antes de registrarse." "Visitor"
        qaSupervisor = person "Quality Supervisor" "Configura los ambientes y sus rangos, supervisa la telemetría y atiende alertas." "QA"
        plantOperator = person "Plant Operator" "Atiende las alertas y ejecuta las acciones correctivas en el ambiente." "Operator"
        fieldTechnician = person "Field Technician" "Instala, vincula y mantiene los nodos IoT y la estación local." "Internal"
        regulatoryInspector = person "Regulatory Inspector" "Revisa la evidencia de cumplimiento durante una inspección." "External"

        # ====================================================================
        #  SISTEMAS EXTERNOS
        # ====================================================================

        stripe = softwareSystem "Stripe" "Procesa los pagos de las suscripciones." "External"
        emailService = softwareSystem "Gmail SMTP" "Entrega los correos transaccionales: credenciales del personal, recuperación de contraseña y alertas críticas." "External"
        firebaseCloudMessaging = softwareSystem "Firebase Cloud Messaging" "Entrega las notificaciones push a la aplicación móvil." "External"
        sensingHardware = softwareSystem "QualiTrack Sensing Hardware" "Sensor, actuadores e interfaz física del nodo; no ejecuta software de QualiTrack." "External,Hardware"

        # ====================================================================
        #  SISTEMA PRINCIPAL
        # ====================================================================

        qualitrack = softwareSystem "QualiTrack Platform" "Monitorea las condiciones ambientales, ejecuta la respuesta automática local y conserva el registro trazable." "Platform" {

            # ---------------- Productos web ----------------

            landing = container "Landing Page" "Sitio público con la propuesta de valor, los planes y los documentos legales." "HTML5, CSS3, JavaScript" "WebStatic"

            webApplication = container "Web Application" "Entrega el contenido estático y la Single-Page Application de QualiTrack al navegador del usuario." "Angular build, Firebase Hosting" "WebServer"

            spa = container "Single-Page Application" "Gestión del laboratorio, configuración de rangos, supervisión, alertas y reportes desde el navegador." "TypeScript, Angular" "SPA" {
                webIam = component "Identity and Access UI" "Registro, inicio de sesión, recuperación de contraseña y cuenta del usuario." "Angular"
                webProfile = component "Profile UI" "Datos personales y foto de perfil del usuario y del personal." "Angular"
                webSubscriptions = component "Subscriptions UI" "Planes, contratación y estado de la suscripción." "Angular"
                webLaboratory = component "Laboratory UI" "Instalación, ambientes, personal y catálogo heredado." "Angular"
                webInventory = component "Inventory UI" "Catálogo, recepción, revisión, consumo y movimientos de materia prima." "Angular"
                webEquipment = component "Equipment UI" "Equipos y vinculación de los nodos IoT." "Angular"
                webMonitoring = component "Monitoring UI" "Telemetría, historial y configuración de rangos y reglas." "Angular"
                webBatch = component "Product Batch UI" "Productos farmacéuticos, lotes de producto y consumo de insumos." "Angular"
                webAlerting = component "Alerting UI" "Alertas activas, reconocimiento, cierre y avisos." "Angular"
                webReporting = component "Reporting UI" "Reportes de trazabilidad, indicadores y registro de auditoría." "Angular"
                webShared = component "Shared" "Cliente HTTP, interceptor de token y utilidades comunes." "Angular"
            }

            # ---------------- Producto móvil ----------------

            mobileApp = container "Mobile Application" "Consulta del estado de los ambientes, avisos de desviación y atención de alertas en sitio." "Dart, Flutter" "Mobile" {
                mobileIam = component "Identity and Access UI" "Inicio de sesión y sesión activa en el dispositivo." "Flutter"
                mobileMonitoring = component "Monitoring UI" "Estado ambiental vigente e historial del ambiente." "Flutter"
                mobileAlerting = component "Alerting UI" "Alertas activas y registro de la atención en sitio." "Flutter"
                mobileShared = component "Shared" "Cliente HTTP, cache local y recepción de notificaciones push." "Flutter"
            }

            mobileDb = container "Mobile Local Database" "Cache local y acciones pendientes de sincronización." "SQLite" "Database"

            # ---------------- Servicio central ----------------

            cloudApi = container "Cloud REST API" "Monolito modular: una unidad desplegable que aloja los diez bounded contexts." "Java 26, Spring Boot, Spring Data JPA" "API" {
                iam = component "Identity and Access Management" "Autenticación, roles, cuentas de usuario y recuperación de contraseña." "Java, Spring Boot" "ContextIAM,CommodityContext"
                profile = component "Profile Management" "Datos personales y foto de perfil de cada cuenta." "Java, Spring Boot" "ContextProfile,GenericContext"
                subscriptions = component "Payments and Subscriptions" "Planes, suscripciones y pagos del laboratorio." "Java, Spring Boot" "ContextPayments,GenericContext"
                laboratory = component "Laboratory Management" "Instalación, ambientes monitoreados, personal y catálogo heredado." "Java, Spring Boot" "ContextLaboratory,SupportingContext"
                inventory = component "Inventory Management" "Catálogo de materia prima, recepciones por proveedor y movimientos de stock." "Java, Spring Boot" "ContextInventory,SupportingContext"
                equipment = component "Equipment Management" "Equipos y nodos IoT vinculados a un ambiente." "Java, Spring Boot" "ContextEquipment,SupportingContext"
                tracking = component "Tracking and Telemetry" "Mediciones, perfiles ambientales y eventos de actuación." "Java, Spring Boot" "ContextTracking,CoreContext"
                productBatch = component "Product Batch Management" "Productos farmacéuticos, lotes de producto y consumo de materia prima." "Java, Spring Boot" "ContextBatch,SupportingContext"
                compliance = component "Compliance and Alerting" "Alertas por desviación, su atención, su escalamiento y los avisos." "Java, Spring Boot" "ContextCompliance,CoreContext"
                reporting = component "Reporting and Audit" "Indicadores, reportes de trazabilidad y registro de auditoría." "Java, Spring Boot" "ContextReporting,SupportingContext"
            }

            cloudDb = container "Cloud Database" "Base de datos central de los diez bounded contexts." "MySQL 8.4" "Database"

            # ---------------- Borde ----------------

            edgeApi = container "Edge REST API" "Recibe la telemetría de los nodos, la conserva localmente y la sincroniza con la nube." "Python, Flask, Peewee" "EdgeApp" {
                edgeIngestion = component "Telemetry Ingestion" "Recibe y valida las mediciones y los eventos de los nodos." "Flask"
                edgeConfiguration = component "Configuration Provider" "Entrega a los nodos la última configuración válida." "Flask"
                edgeSync = component "Cloud Synchronization" "Envía los registros pendientes y obtiene la configuración vigente." "Python"
                edgeStatus = component "Station Status" "Expone el estado de la estación y de los nodos vinculados." "Flask"
            }

            edgeDb = container "Edge Local Database" "Mediciones, configuración vigente y cola de sincronización." "SQLite" "Database"

            # ---------------- Dispositivo ----------------

            embeddedApp = container "Embedded Application" "Lee las variables ambientales, evalúa y acciona localmente, y comunica al borde." "C++, Arduino Framework, ESP32" "Embedded" {
                sensing = component "Environmental Sensing" "Lee temperatura, humedad y calidad del aire del sensor." "C++"
                localControl = component "Local Control" "Evalúa la lectura contra la configuración y acciona los actuadores." "C++"
                localHmi = component "Local HMI" "Muestra el estado, activa la alarma y atiende el pulsador." "C++"
                edgeClient = component "Edge Communication" "Envía telemetría y eventos, y obtiene la configuración vigente." "C++, HTTPClient"
            }
        }

        # ====================================================================
        #  RELACIONES - NIVEL DE SISTEMA
        # ====================================================================

        visitor -> qualitrack "Consulta la información pública y los planes de" "HTTPS"
        qaSupervisor -> qualitrack "Configura ambientes, supervisa y atiende alertas en" "HTTPS"
        plantOperator -> qualitrack "Consulta el estado del ambiente y reconoce alarmas en" "HTTPS / Interfaz física"
        fieldTechnician -> qualitrack "Instala y verifica los nodos y la estación local de" "HTTP"
        regulatoryInspector -> qaSupervisor "Solicita la evidencia de cumplimiento a"
        fieldTechnician -> sensingHardware "Ensambla, instala y calibra"
        qualitrack -> sensingHardware "Lee el sensor y acciona los actuadores de" "GPIO / I2C / PWM"

        qualitrack -> stripe "Gestiona las suscripciones mediante" "HTTPS / REST"
        stripe -> qualitrack "Notifica los eventos de pago a" "Webhook HTTPS" "Async"
        qualitrack -> emailService "Envía los correos transaccionales mediante" "SMTP / TLS"
        qualitrack -> firebaseCloudMessaging "Solicita las notificaciones push mediante" "HTTPS / API"
        firebaseCloudMessaging -> qualitrack "Entrega las notificaciones push a" "HTTPS" "Async"

        # ====================================================================
        #  RELACIONES - NIVEL DE CONTENEDOR
        # ====================================================================

        visitor -> landing "Consulta los planes y los documentos legales en" "HTTPS"
        qaSupervisor -> webApplication "Visita QualiTrack en" "HTTPS"
        qaSupervisor -> spa "Administra el laboratorio, supervisa y atiende alertas en" "HTTPS"
        qaSupervisor -> mobileApp "Consulta el estado de los ambientes y recibe avisos en" "HTTPS"
        plantOperator -> mobileApp "Consulta las alertas y registra su atención en" "HTTPS"
        plantOperator -> embeddedApp "Lee el estado y reconoce la alarma en" "Interfaz física"
        fieldTechnician -> edgeApi "Verifica el estado de la estación y de los nodos en" "HTTP"

        landing -> webApplication "Dirige al visitante hacia el registro y el inicio de sesión en" "HTTPS"
        landing -> mobileApp "Dirige al visitante hacia la descarga de" "HTTPS"
        webApplication -> spa "Entrega la aplicación al navegador del usuario" "HTTPS"

        spa -> cloudApi "Realiza las operaciones de dominio en" "JSON / HTTPS"
        spa -> stripe "Redirige al checkout alojado de" "HTTPS"
        mobileApp -> cloudApi "Consulta ambientes, alertas e historial en" "JSON / HTTPS"
        mobileApp -> mobileDb "Conserva el último estado conocido en" "SQLite"
        firebaseCloudMessaging -> mobileApp "Entrega las notificaciones push a" "HTTPS" "Async"

        cloudApi -> cloudDb "Lee y escribe la información de dominio en" "JPA / TCP 3306"
        cloudApi -> stripe "Crea las sesiones de pago en" "HTTPS / REST"
        stripe -> cloudApi "Notifica los eventos de pago a" "Webhook HTTPS" "Async"
        cloudApi -> emailService "Solicita el envío de correos a" "SMTP / TLS"
        cloudApi -> firebaseCloudMessaging "Solicita el envío de notificaciones push a" "HTTPS / API"

        edgeApi -> cloudApi "Sincroniza la telemetría y obtiene la configuración vigente de" "JSON / HTTPS"
        edgeApi -> edgeDb "Conserva las mediciones y la cola de sincronización en" "Peewee / SQLite"
        embeddedApp -> edgeApi "Envía telemetría y consulta la configuración en" "JSON / HTTP"
        embeddedApp -> sensingHardware "Lee el sensor, acciona y gobierna la interfaz física de" "GPIO / I2C / PWM"

        # ====================================================================
        #  RELACIONES - NIVEL DE COMPONENTE
        # ====================================================================

        # --- Entradas hacia los bounded contexts del monolito ---
        spa -> iam "Autentica al usuario y administra su cuenta en" "JSON / HTTPS"
        spa -> profile "Consulta y actualiza el perfil y la foto en" "JSON / HTTPS"
        spa -> subscriptions "Consulta los planes y contrata la suscripción en" "JSON / HTTPS"
        spa -> laboratory "Registra la instalación, sus ambientes y su personal en" "JSON / HTTPS"
        spa -> inventory "Registra y consulta los lotes de materia prima en" "JSON / HTTPS"
        spa -> equipment "Registra los equipos y vincula los nodos IoT en" "JSON / HTTPS"
        spa -> tracking "Consulta la telemetría y define los rangos en" "JSON / HTTPS"
        spa -> productBatch "Registra y consulta los productos y lotes en" "JSON / HTTPS"
        spa -> compliance "Consulta, reconoce y resuelve las alertas en" "JSON / HTTPS"
        spa -> reporting "Genera y exporta los reportes de trazabilidad en" "JSON / HTTPS"
        mobileApp -> iam "Inicia sesión y refresca el token en" "JSON / HTTPS"
        mobileApp -> laboratory "Consulta los ambientes de la instalación en" "JSON / HTTPS"
        mobileApp -> tracking "Consulta el estado ambiental y el historial en" "JSON / HTTPS"
        mobileApp -> compliance "Consulta las alertas y registra su atención en" "JSON / HTTPS"
        edgeApi -> tracking "Sincroniza la telemetría y obtiene la configuración en" "JSON / HTTPS"
        stripe -> subscriptions "Notifica los eventos de pago a" "Webhook HTTPS" "Async"

        # --- Relaciones entre bounded contexts ---
        subscriptions -> iam "Valida el token y resuelve al responsable mediante" "ACL"
        profile -> iam "Resuelve la cuenta a la que pertenece el perfil mediante" "ACL"
        profile -> laboratory "Resuelve el registro del personal vinculado a la cuenta mediante" "ACL"
        profile -> laboratory "Notifica la actualización del nombre del perfil a" "Evento de dominio" "Async"
        laboratory -> iam "Valida el token y resuelve los miembros mediante" "ACL"
        laboratory -> subscriptions "Verifica el plan vigente y su capacidad mediante" "ACL"
        inventory -> iam "Valida el token de acceso mediante" "ACL"
        inventory -> laboratory "Importa y bloquea el saldo inicial del catálogo heredado mediante" "ACL"
        equipment -> iam "Valida el token de acceso mediante" "ACL"
        equipment -> laboratory "Verifica el ambiente destino mediante" "ACL"
        tracking -> iam "Valida el token de acceso mediante" "ACL"
        tracking -> equipment "Resuelve el ambiente del dispositivo mediante" "ACL"
        tracking -> compliance "Notifica la desviación ambiental detectada a" "Evento de dominio" "Async"
        productBatch -> iam "Valida el token de acceso mediante" "ACL"
        inventory -> productBatch "Valida y bloquea el lote de producto mediante" "ACL"
        inventory -> productBatch "Notifica el consumo de materia prima a" "Evento de dominio"
        laboratory -> compliance "Notifica el bajo stock del catálogo heredado a" "Evento de dominio"
        compliance -> iam "Valida el token y resuelve los destinatarios mediante" "ACL"
        compliance -> profile "Obtiene el nombre de quien atiende la alerta mediante" "ACL"
        compliance -> productBatch "Consulta los lotes expuestos al ambiente mediante" "ACL"
        reporting -> iam "Valida el token de acceso mediante" "ACL"
        reporting -> tracking "Obtiene la telemetría del periodo mediante" "ACL"
        reporting -> compliance "Obtiene las alertas del periodo mediante" "ACL"

        # --- Bounded contexts hacia la persistencia y los servicios externos ---
        iam -> cloudDb "Lee y escribe usuarios, roles y credenciales en" "JPA"
        profile -> cloudDb "Lee y escribe los perfiles y sus fotos en" "JPA"
        subscriptions -> cloudDb "Lee y escribe planes, suscripciones y pagos en" "JPA"
        laboratory -> cloudDb "Lee y escribe instalaciones, ambientes y miembros en" "JPA"
        inventory -> cloudDb "Lee y escribe los lotes de materia prima en" "JPA"
        equipment -> cloudDb "Lee y escribe equipos, dispositivos y vinculaciones en" "JPA"
        tracking -> cloudDb "Lee y escribe mediciones, perfiles y actuaciones en" "JPA"
        productBatch -> cloudDb "Lee y escribe productos y lotes de producto en" "JPA"
        compliance -> cloudDb "Lee y escribe las alertas, su atención y los avisos en" "JPA"
        reporting -> cloudDb "Lee y escribe reportes y auditoría en" "JPA"
        iam -> emailService "Envía las credenciales del personal y los códigos de recuperación mediante" "SMTP / TLS"
        subscriptions -> stripe "Crea las sesiones de pago y consulta su estado en" "HTTPS / REST"
        compliance -> emailService "Envía el correo de desviación crítica mediante" "SMTP / TLS"
        compliance -> firebaseCloudMessaging "Solicita la notificación push de desviación a" "HTTPS / API"

        # --- Componentes de la Single-Page Application ---
        webIam -> webShared "Consume el servicio en la nube mediante"
        webProfile -> webShared "Consume el servicio en la nube mediante"
        webSubscriptions -> webShared "Consume el servicio en la nube mediante"
        webLaboratory -> webShared "Consume el servicio en la nube mediante"
        webInventory -> webShared "Consume el servicio en la nube mediante"
        webEquipment -> webShared "Consume el servicio en la nube mediante"
        webMonitoring -> webShared "Consume el servicio en la nube mediante"
        webBatch -> webShared "Consume el servicio en la nube mediante"
        webAlerting -> webShared "Consume el servicio en la nube mediante"
        webReporting -> webShared "Consume el servicio en la nube mediante"
        webBatch -> webInventory "Registra el consumo de materia prima mediante"
        webSubscriptions -> stripe "Redirige al checkout alojado de" "HTTPS"
        webShared -> cloudApi "Realiza las operaciones de dominio en" "JSON / HTTPS"

        # --- Componentes de la aplicación móvil ---
        mobileIam -> mobileShared "Consume el servicio en la nube mediante"
        mobileMonitoring -> mobileShared "Consume el servicio en la nube mediante"
        mobileAlerting -> mobileShared "Consume el servicio en la nube mediante"
        firebaseCloudMessaging -> mobileShared "Entrega la notificación de desviación a" "HTTPS" "Async"
        mobileShared -> cloudApi "Consulta ambientes, alertas e historial en" "JSON / HTTPS"
        mobileShared -> mobileDb "Conserva el último estado conocido en" "SQLite"

        # --- Componentes del servicio de borde ---
        embeddedApp -> edgeIngestion "Envía las mediciones y los eventos a" "JSON / HTTP"
        embeddedApp -> edgeConfiguration "Consulta la configuración vigente en" "JSON / HTTP"
        fieldTechnician -> edgeStatus "Verifica el estado de la estación en" "HTTP"
        edgeIngestion -> edgeDb "Registra las mediciones y la cola de sincronización en" "Peewee"
        edgeConfiguration -> edgeDb "Lee la configuración vigente de" "Peewee"
        edgeStatus -> edgeDb "Consulta el estado de los nodos en" "Peewee"
        edgeSync -> edgeDb "Toma los pendientes y conserva la configuración en" "Peewee"
        edgeSync -> cloudApi "Sincroniza la telemetría y obtiene la configuración de" "JSON / HTTPS"

        # --- Componentes de la aplicación embebida ---
        plantOperator -> localHmi "Lee el estado y acciona el pulsador en" "Interfaz física"
        localControl -> sensing "Obtiene la lectura ambiental de"
        localControl -> localHmi "Refleja el estado y activa la alarma mediante"
        localControl -> edgeClient "Envía la medición y el evento de actuación mediante"
        localHmi -> localControl "Notifica el reconocimiento del operario a"
        edgeClient -> localControl "Entrega la configuración vigente a"
        edgeClient -> edgeApi "Envía telemetría y consulta la configuración en" "JSON / HTTP"
        sensing -> sensingHardware "Lee la temperatura, la humedad y la calidad del aire de" "I2C"
        localControl -> sensingHardware "Acciona el ventilador y la compuerta de" "GPIO / PWM"
        localHmi -> sensingHardware "Gobierna el display, el indicador, la alarma y el pulsador de" "GPIO / I2C"

        # ====================================================================
        #  DESPLIEGUE
        # ====================================================================

        deploymentEnvironment "Production" {

            deploymentNode "Pharmaceutical Facility" "Sede del laboratorio o almacén cliente." "Red local Ethernet / WiFi" "OnPremise" {

                deploymentNode "QualiTrack Sensing Node" "Nodo IoT instalado en el ambiente monitoreado." "ESP32 DevKit v1 / BME680 / ventilador / servomotor SG90 / display / LED / buzzer / pulsador" "DeviceNode" {
                    embeddedAppInstance = containerInstance embeddedApp
                    sensingHardwareInstance = softwareSystemInstance sensingHardware
                }

                deploymentNode "QualiTrack Local Station" "Estación de borde de la sede." "Raspberry Pi 4 / Raspberry Pi OS Lite" "EdgeNode" {
                    deploymentNode "Docker Engine" "Motor de contenedores del borde." "Docker Compose" {
                        deploymentNode "qualitrack-edge" "Servicio de borde servido por Gunicorn." "Python 3 / Gunicorn" {
                            edgeApiInstance = containerInstance edgeApi
                        }
                        deploymentNode "Docker Volume qualitrack-data" "Volumen persistente del borde." "Docker Volume" {
                            edgeDbInstance = containerInstance edgeDb
                        }
                    }
                }
            }

            deploymentNode "Microsoft Azure" "Proveedor cloud del backend y de la base de datos central." "Azure - región Chile Central" "Cloud" {
                deploymentNode "iotech-qualitrack-rg" "Grupo de recursos de QualiTrack." "Azure Resource Group" {

                    containerRegistry = infrastructureNode "iotechqualitrack" "Registro que almacena la imagen Docker del backend publicada por GitHub Actions." "Azure Container Registry"

                    deploymentNode "Container Apps Environment" "Entorno administrado donde se ejecutan las aplicaciones de contenedores." "Azure Container Apps" {
                        deploymentNode "iotech-qualitrack-api" "Container App que ejecuta el monolito modular y publica OpenAPI en el puerto 8080." "Docker / Java 26 / Spring Boot" {
                            cloudApiInstance = containerInstance cloudApi
                        }
                    }

                    deploymentNode "iotech-qualitrack-mysql" "Servidor flexible de MySQL con la base de datos iotech_qualitrack." "Azure Database for MySQL Flexible Server / Burstable B1ms" {
                        cloudDbInstance = containerInstance cloudDb
                    }
                }
            }

            deploymentNode "GitHub Pages" "Hosting estático del sitio público." "GitHub Pages" "Cloud" {
                landingInstance = containerInstance landing
            }

            deploymentNode "Firebase" "Plataforma de Google para hosting, distribución y mensajería push." "Google Cloud" "Cloud" {
                deploymentNode "Firebase Hosting" "Publica el build de producción de la aplicación Angular." "Firebase Hosting" {
                    webApplicationInstance = containerInstance webApplication
                }
                deploymentNode "Firebase App Distribution" "Distribuye la compilación de prueba de la aplicación móvil." "Firebase App Distribution" {
                    appDistribution = infrastructureNode "APK Distribution" "Entrega el APK a los evaluadores registrados." "Firebase App Distribution"
                }
                deploymentNode "Firebase Cloud Messaging" "Mensajería push hacia los dispositivos registrados." "Firebase Cloud Messaging" {
                    fcmInstance = softwareSystemInstance firebaseCloudMessaging
                }
            }

            deploymentNode "User Computer" "Computador del responsable de calidad." "Windows / macOS / Linux" "ClientDevice" {
                deploymentNode "Web Browser" "Navegador donde se ejecuta la Single-Page Application." "Chrome / Edge / Safari" {
                    spaInstance = containerInstance spa
                }
            }

            deploymentNode "User Mobile Device" "Teléfono del responsable de calidad o del operario." "Android 10 o superior" "ClientDevice" {
                deploymentNode "Android OS" "Sistema operativo donde se instala la aplicación." "Android" {
                    mobileAppInstance = containerInstance mobileApp
                    mobileDbInstance = containerInstance mobileDb
                }
            }

            deploymentNode "Third-Party SaaS Providers" "Servicios externos consumidos por el backend." "Internet" "Cloud" {
                stripeInstance = softwareSystemInstance stripe
                emailServiceInstance = softwareSystemInstance emailService
            }

            containerRegistry -> cloudApiInstance "Provee la imagen del contenedor a" "Managed identity / HTTPS"
            appDistribution -> mobileAppInstance "Entrega e instala la compilación de prueba de" "HTTPS"
        }
    }

    views {

        # ================================================================
        #  4.1.3.1  SYSTEM LANDSCAPE
        # ================================================================
        systemLandscape "SystemLandscape" "Ecosistema de IoTech: personas involucradas, la plataforma y los servicios externos." {
            include *
            autoLayout tb 300 300
        }

        # ================================================================
        #  4.1.3.2  SYSTEM CONTEXT
        # ================================================================
        systemContext qualitrack "SystemContext" "Usuarios que interactúan con QualiTrack y servicios externos con los que se integra." {
            include *
            autoLayout lr 300 300
        }

        # ================================================================
        #  4.1.3.3  CONTAINERS
        # ================================================================
        container qualitrack "Containers" "Unidades desplegables de QualiTrack: productos web y móvil, monolito modular, borde y dispositivo." {
            include *
            autoLayout lr 300 300
        }

        # ================================================================
        #  4.2  COMPONENTES POR CONTENEDOR
        # ================================================================

        component cloudApi "Components-CloudApi" "Los diez bounded contexts como componentes del monolito modular y sus relaciones." {
            include *
            autoLayout lr 300 300
        }

        component spa "Components-SPA" "Funcionalidades de la Single-Page Application por bounded context." {
            include *
            autoLayout lr 300 300
        }

        component mobileApp "Components-MobileApp" "Funcionalidades de la aplicación móvil por bounded context." {
            include *
            autoLayout lr 300 300
        }

        component edgeApi "Components-EdgeApi" "Componentes del servicio de borde: ingesta, configuración, sincronización y estado." {
            include *
            autoLayout lr 300 300
        }

        component embeddedApp "Components-EmbeddedApplication" "Componentes del nodo IoT: sensado, control local, interfaz física y comunicación con el borde." {
            include *
            autoLayout lr 300 300
        }

        # ================================================================
        #  4.2.X.5  COMPONENTES POR BOUNDED CONTEXT
        # ================================================================

        component cloudApi "Components-IAM" "Bounded Context Identity and Access Management y sus relaciones." {
            include ->iam->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Profile" "Bounded Context Profile Management y sus relaciones." {
            include ->profile->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Payments" "Bounded Context Payments and Subscriptions y sus relaciones." {
            include ->subscriptions->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Laboratory" "Bounded Context Laboratory Management y sus relaciones." {
            include ->laboratory->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Inventory" "Bounded Context Inventory Management y sus relaciones." {
            include ->inventory->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Equipment" "Bounded Context Equipment Management y sus relaciones." {
            include ->equipment->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Tracking" "Bounded Context Tracking and Telemetry y sus relaciones." {
            include ->tracking->
            autoLayout lr 300 300
        }

        component cloudApi "Components-ProductBatch" "Bounded Context Product Batch Management y sus relaciones." {
            include ->productBatch->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Compliance" "Bounded Context Compliance and Alerting y sus relaciones." {
            include ->compliance->
            autoLayout lr 300 300
        }

        component cloudApi "Components-Reporting" "Bounded Context Reporting and Audit y sus relaciones." {
            include ->reporting->
            autoLayout lr 300 300
        }

        # ================================================================
        #  4.1.3.4  DEPLOYMENT
        # ================================================================
        deployment qualitrack "Production" "Deployment-Production" "Entorno de producción: sede farmacéutica, Microsoft Azure, hosting web y dispositivos de usuario." {
            include *
            autoLayout lr 300 300
        }

        # ================================================================
        #  ESTILOS
        # ================================================================
        styles {

            element "Element" {
                fontSize 22
            }

            element "Person" {
                shape Person
                background #4a5f7a
                color #ffffff
            }
            element "Visitor" {
                background #8a8a8a
            }
            element "QA" {
                background #0b5f8a
            }
            element "Operator" {
                background #2d7a4f
            }
            element "Internal" {
                background #5a6b7f
            }
            element "External" {
                background #9a9a9a
                color #ffffff
            }

            element "Software System" {
                background #1168bd
                color #ffffff
                shape RoundedBox
            }
            element "Platform" {
                background #0d8f5c
                color #ffffff
            }

            element "Container" {
                background #2e7cb8
                color #ffffff
                shape RoundedBox
            }
            element "WebStatic" {
                shape WebBrowser
                background #2e7cb8
            }
            element "WebServer" {
                background #2e7cb8
            }
            element "SPA" {
                shape WebBrowser
                background #1168bd
            }
            element "Mobile" {
                shape MobileDevicePortrait
                background #1168bd
            }
            element "API" {
                background #17607f
            }
            element "EdgeApp" {
                background #d97706
            }
            element "Embedded" {
                shape Box
                background #b45309
            }
            element "Hardware" {
                shape Box
                background #6b6b6b
                color #ffffff
            }
            element "Database" {
                shape Cylinder
                background #b02a37
                color #ffffff
            }

            # El color del componente indica la clasificación del bounded context
            element "Component" {
                shape RoundedBox
                background #dddddd
                color #1f1f1f
            }
            element "CoreContext" {
                background #d9ead3
                color #1f1f1f
            }
            element "SupportingContext" {
                background #fff2cc
                color #1f1f1f
            }
            element "GenericContext" {
                background #cfe2f3
                color #1f1f1f
            }
            element "CommodityContext" {
                background #eeeeee
                color #1f1f1f
            }

            element "Deployment Node" {
                color #444444
                fontSize 20
            }
            element "OnPremise" {
                background #fff8e6
            }
            element "EdgeNode" {
                background #fff1d6
            }
            element "DeviceNode" {
                background #fdf1e0
            }
            element "Cloud" {
                background #eaf3fb
            }
            element "ClientDevice" {
                background #eefaf3
            }
            element "Infrastructure Node" {
                background #567d94
                color #ffffff
                shape RoundedBox
            }

            relationship "Relationship" {
                thickness 2
                color #666666
                fontSize 20
                dashed false
            }
            relationship "Async" {
                dashed true
                color #7c3aed
            }
        }
    }
}
