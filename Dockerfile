# Dockerfile
FROM node:14

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Instalar dependencias
# El asterisco (*) es utilizado para asegurarse que tanto package.json como package-lock.json sean copiados
# donde estén disponibles
COPY package*.json ./

RUN npm install

# Copiar los archivos de la aplicación
COPY . .

# Tu aplicación se une al puerto 8080, así que usarás la instrucción EXPOSE para que el puerto 8080 esté disponible
EXPOSE 80

# Definir variable de entorno
ENV ENVIRONMENT_NAME=Produccion

# Comando para correr la aplicación
CMD [ "node", "server.js" ]
