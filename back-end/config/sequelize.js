const Sequelize = require('sequelize');
const fs = require('fs');


const sequelizeConfig = JSON.parse(fs.readFileSync(__dirname + '/config.json', 'utf8'));
const mode = 'production';
const dialect = process.env.DB_DIALECT || sequelizeConfig[mode].dialect;
const host = process.env.DB_HOST || sequelizeConfig[mode].host;
const database = process.env.DB_DATABSE || sequelizeConfig[mode].database_name;
const username = process.env.DB_USERNAME || sequelizeConfig[mode].username;
const password = process.env.DB_PASSWORD || sequelizeConfig[mode].password;
const port = process.env.DB_PORT || sequelizeConfig[mode].port;


const connectObject = {
    dialect: 'mysql',
    host: 'localhost'
}

const sequelizeConnnect = new Sequelize(database, username, password, connectObject);

const db = {};



db.Sequelize = Sequelize;
db.sequelizeConnnect = sequelizeConnnect;


db.artists = require('../models/artists')(sequelizeConnnect, Sequelize);
db.albums = require('../models/albums')(sequelizeConnnect, Sequelize);
db.songs = require('../models/songs')(sequelizeConnnect, Sequelize);
db.commonInteratives = require('../models/commonInterative')(sequelizeConnnect, Sequelize);


db.songs.associate(db);
db.artists.associate(db);
db.albums.associate(db);
db.commonInteratives.associate(db);

exports.sequelizeConnnect = sequelizeConnnect;
module.exports = db;
