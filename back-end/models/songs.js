module.exports = (sequelize, DataType) => {
    const songs = sequelize.define('songs', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        albumId: {
            type: DataType.INTEGER,
            allowNull: false
        },
        artistId: {
            type: DataType.INTEGER,
            allowNull: false
        },
        title: {
            type: DataType.STRING,
        },
        lyrics: {
            type: DataType.STRING
        },
        url_song: {
            type: DataType.STRING
        },
        url_image: {
            type: DataType.STRING
        },
        second_time: {
            type: DataType.INTEGER
        }
    })
    songs.associate = (models) => {
        songs.hasMany(models.commonInteratives);
        songs.belongsTo(models.albums, {
            foreignKey: 'albumId'
        }, { onDelete: 'cascade' });
        songs.belongsTo(models.artists, { foreignKey: 'artistId' }, { onDelete: 'cascade' });

    };
    return songs;
}