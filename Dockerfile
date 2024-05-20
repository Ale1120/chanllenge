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

# Tu aplicación se une al puerto 80, así que usarás la instrucción EXPOSE para que el puerto 80 80 esté disponible
EXPOSE 8080

# Definir variable de entorno
ENV ENVIRONMENT_NAME=Produccion

# Comando para correr la aplicación
CMD [ "npm", "start" ]
