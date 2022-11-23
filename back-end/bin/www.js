/**
 * Module dependencies.
 */

let app = require('../app');


let http = require('http');

/**
 * Create HTTP server.
 */


const port = process.env.PORT || 6000;
const server = http.createServer(app);


const sequelizeCon = require('../config/sequelize');


sequelizeCon.sequelizeConnnect.sync().then(
    res => {
        console.log('Connect Successfully')
        app.listen(3000);
    }
).catch(err => {
    console.log(err)
})

