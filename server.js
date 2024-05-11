// server.js
const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

// Enviar el nombre del ambiente de trabajo como respuesta
app.get('/', (req, res) => {
  res.send(`Ambiente de trabajo: ${process.env.NOMBRE_AMBIENTE}`);
});

app.listen(port, () => {
  console.log(`Servidor corriendo en el puerto ${port}`);
});
