// server.js
const express = require('express');
const app = express();
const port = process.env.PORT || 80;

// Enviar el nombre del ambiente de trabajo como respuesta
app.get('/', (req, res) => {
  res.send(`hola Desarrolladores nos encontramos en el Ambiente de trabajo: ${process.env.ENVIRONMENT_NAME}`);
});

app.listen(port, () => {
  console.log(`Servidor corriendo en el puerto ${port}`);
});
