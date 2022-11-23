// const albums = require("../models/albums")


// const artists = require("../models/artists");
const albums = require("../config/sequelize").albums;
const artists = require("../config/sequelize").artists;
const songs = require("../config/sequelize").songs;
const commonInteratives = require("../config/sequelize").commonInteratives;

exports.topMusic = (req, res, next) => {
    songs.findAll({
        attributes: ['title', 'url_image', 'second_time'],
        include: [
            {
                model: artists,
                required: true,
                attributes: ['name_artist']
            },
            {
                model: albums,
                required: true,
                attributes: ['name_albums']
            },
            // {
            //     model: commonInteratives,
            //     required: true,
            //     attributes: ['numberOfListen'],
            // }
        ],
        // order: ['title', 'DESC']
    }).then(
        result => {
            res.send(result);
        }
    )
}