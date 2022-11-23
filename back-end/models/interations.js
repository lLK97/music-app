module.exports = (sequelize, DataType) => {
    const interations = sequelize.define('interations', {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        userId: {
            type: DataType.INTEGER,
            allowNull: false
        },
        songId: {
            type: DataType.INTEGER,
            allowNull: false
        },
        liked: {
            type: DataType.BOOLEAN,
            allowNull: false
        },
        play_count: {
            type: DataType.INTEGER,
            allowNull: false
        }
    })
    interations.associate = (model) => {
        interations.belongsTo(model.users, { foreignKey: 'userId', onDelete: 'cascade' });
        interations.belongsTo(model.songs, { foreignKey: 'songId', onDelete: 'cascade' });
    }
}