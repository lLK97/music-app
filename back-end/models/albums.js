module.exports = (sequelize, DataType) => {
    const albums = sequelize.define('albums', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        artistId: {
            type: DataType.INTEGER
        },
        name_albums: {
            type: DataType.STRING
        },
        cover: {
            type: DataType.STRING
        },
    })
    albums.associate = (models) => {
        albums.hasMany(models.songs);
        albums.belongsTo(models.artists, { foreignKey: 'artistId' }, { onDelete: 'cascade' }, { as: 'albums_detail' });
    }
    return albums;
}