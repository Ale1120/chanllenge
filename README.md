# Pagina Web que nos indica en que rama fue hecho su despligue.

Este es un repositorio de una pagina web sencilla donde fue relaizado a traves de node.js version 14,
con la finaliad de ralizar una pagina web que mediado una varible de entorno nos indique en que rama estamos,
para luego a la hora de realizar su despligue nos mande un saludo y nos indique en que entorno nos encontramos

Ejecutamos el servicio,
```$ npm start```

Luego nos dirigimo a nuestro navegador.

```http://localhost:8080/```

### Docker
Clonar el repositorio.

```$ git clone https://github.com/Ale1120/chanllenge.git```

Nos dirigimos a la caperta del repositorio.

```$ cd chanllenge```

Recreamos la imagen docker.

```$ docker build -t web-app-nodejs .```

ejecutamos el contenedor docker con la siguiente instruccion.

```$ docker run -it --name web-app-container -e ENVIRONMENT_NAME=<Your_Branch> -p 8080 web-app-node,js```

Luego nos dirigimo a nuestro navegador.

```http://localhost:8080/```

### Git Acction.
Para el apartado de CI/CD utilizamos un pipeline de git acction llamado **deploy.yml** ubicado en la carpeta **/.github/workflows/** del repositorio.

##### Creacion de credenciales.
Ingresamos a IAM y creamos un usario con permisos sobre los proudctos ECS y ECR, luego nos dirigimos a git actions y creamos un secreto con **ID** y el **key** del usuaruio previamente creado.

```
AWS_ACCESS_KEY_ID: <AWS_ACCESS_KEY_ID>
AWS_SECRET_ACCESS_KEY: <AWS_SECRET_ACCESS_KEY>
```

### Variables de entornos.

Esta son las variables que tenemos que modificar para realizar un despligue a **ECS** con git actions



```
env:
  AWS_REGION: MY_AWS_REGION                  
  ECR_REPOSITORY: MY_ECR_REPOSITORY           # set this to your Amazon ECR repository name
  ECS_SERVICE: MY_ECS_SERVICE                 # set this to your Amazon ECS service name
  ECS_CLUSTER: MY_ECS_CLUSTER                 # set this to your Amazon ECS cluster name
  ECS_TASK_DEFINITION: MY_ECS_TASK_DEFINITION # set this to the path to your Amazon ECS task definition
                                               # file, e.g. .aws/task-definition.json
  CONTAINER_NAME: MY_CONTAINER_NAME           # set this to the name of the container in the
                                               # containerDefinitions section of your task definition
```

Luego para ingresar a ver el portal web ir a el apartado de configuracion de la nueva tarea creada y copiar la ip publica en su navegador