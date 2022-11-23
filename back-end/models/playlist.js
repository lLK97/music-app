module.exports = (sequelize, DataType) => {
    const playlist = sequelize.define('playlist', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        userId: {
            type: DataType.INTEGER,
            allowNull: false
        },
        name: {
            type: DataType.STRING
        },
        rules: {
            type: DataType.STRING
        }
    })
    playlist.associate = (models) => {
        playlist.belongsTo(models.users, { foreignKey: 'userId' })
    }
    return playlist;
}
