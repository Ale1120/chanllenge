Ejecutamos el servicio,
`$ npm start`

### Docker
Clonar el repositorio.

`$ git clone https://github.com/Ale1120/chanllenge.git`

Nos dirigimos a la caperta del repositorio.

`$ cd chanllenge`

Recreamos la imagen docker.

`$ docker build -t web-app-nodejs .`

ejecutamos el contenedor docker con la siguiente instruccion.

`$ docker run -it --name web-app-container -e ENVIRONMENT_NAME=<Your_Branch> -p 8080 web-app-node,js`

### Git Acction.
Para el apartado de CI/CD utilizamos un pipeline de git acction llamado **deploy.yml
** ubicado en la carpeta **/.github/workflows/** del repositorio.

##### Creacion de credenciales.
Ingresamos a IAM y creamos un usario con permisos sobre los proudctos ECS y ECR,


`AWS_ACCESS_KEY_ID: <AWS_ACCESS_KEY_ID>

 AWS_SECRET_ACCESS_KEY: <AWS_SECRET_ACCESS_KEY>`

### Variables de entornos.

Esta son las variables que tenemos que modificar para realizar un despligue a **ECS** con git actions


`env:
  # set this to your preferred AWS region, e.g. us-west-1
  AWS_REGION: MY_AWS_REGION                  
  # set this to your Amazon ECR repository name
  ECR_REPOSITORY: MY_ECR_REPOSITORY           
  # set this to your Amazon ECS service name
  ECS_SERVICE: MY_ECS_SERVICE                 
  # set this to your Amazon ECS cluster name
  ECS_CLUSTER: MY_ECS_CLUSTER                 
  # set this to the path to your Amazon ECS task definition file, e.g. .aws/task-definition.json
  ECS_TASK_DEFINITION: MY_ECS_TASK_DEFINITION 
  # set this to the name of the container in the containerDefinitions section of your task definition
  CONTAINER_NAME: MY_CONTAINER_NAME                           
`

Luego para ingresar a ver el portal web ir a el apartado de configuracion de la nueva tarea creada y copiar la ip publica en su navegador