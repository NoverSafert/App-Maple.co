const mongoose = require('mongoose');

const conex = () => {
    mongoose.connect('mongodb://172.31.2.27:27017/MARCO')
    .then(db => console.log("Mongoose online"))
    .catch(err => console.log(err));
}

module.exports = {
    conex
}