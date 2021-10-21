// Modulos usados en la app
const BD = require('./config/DBLink');
const jwt = require('jsonwebtoken');
const express = require('express');
const dotenv = require('dotenv');
const crypto = require('crypto');
const morgan = require('morgan');
const app = express();
app.use(express.json());

// Puerto en el que corre la app
const port = 10124;

// Rutas
app.use(require('./routes/routes'))

// Conexion a base de datos (para que funcione debes escribir el comando "mongod" en power shell)
BD.conex();

// Configuracione de entorno
dotenv.config();
app.use(morgan('dev'));
app.use("/", express.static("public"));

app.listen(port , () =>{    
    console.log('API on: http://localhost:' + port)
});