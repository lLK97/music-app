module.exports = (sequelize, DataType) => {
    const commonInteratives = sequelize.define('commoninteractives', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        songId: {
            type: DataType.INTEGER,
            allowNull: false
        },
        numberOfListen: {
            type: DataType.INTEGER
        },
        numberOfLiked: {
            type: DataType.INTEGER
        }
    })
    commonInteratives.associate = (models) => {
        commonInteratives.belongsTo(models.songs, { foreignKey: 'songId', onDelete: 'cascade' });
    }
    return commonInteratives;
}