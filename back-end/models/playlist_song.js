module.exports = (sequelize, DataType) => {
    const playlist_song = sequelize.define('playlist_song', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        playlistId: {
            type: DataType.INTEGER,
            allowNull: false
        },
        songId: {
            type: DataType.INTEGER,
            allowNull: false
        }
    })
    playlist_song.associate = (models) => {
        playlist_song.belongsTo(models.playlist, { foreignKey: 'playlistId', onDelete: 'cascade' });
        playlist_song.belongTo(models.songs, { foreignKey: 'songId', onDelete: 'cascade' });
    }
    return playlist_song;
}