module.exports = (sequelize, DataType) => {
    const artists = sequelize.define('artists', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name_artist: {
            type: DataType.STRING
        },
        image: {
            type: DataType.STRING
        }
    })
    artists.associate = function (models) {
        artists.hasMany(models.songs);
    }

    return artists;
} 