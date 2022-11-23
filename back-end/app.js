const express = require('express');
const env = require('dotenv').config();

const path = require('path');
const Logger = require('morgan')
const cors = require('cors');
const bodyParser = require('body-parser');
var mysql = require('mysql2');
const routerTopMusic = require('./routes/routerTopmusic');


const app = express();



app.use(bodyParser.urlencoded({}));
app.use(cors({}));
app.use(Logger('dev'));
app.use(express.json());
app.use(express.urlencoded({}));


app.use(routerTopMusic)


module.exports = app; 