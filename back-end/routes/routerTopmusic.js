const routerTopMusic = require('express').Router();
const topMusicController = require('../controller/topSong');

routerTopMusic.get('/top-song', topMusicController.topMusic);

module.exports = routerTopMusic;