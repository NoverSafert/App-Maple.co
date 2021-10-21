const mongoose = require("mongoose")
const Schema = mongoose.Schema

const ExpositionSchema = new Schema({
    name: {
        type: String,
        require: true,
        unique: true, // Lo pondremos verdadero para facilitar busquedas
        trim: true,
        minlength: 1
    },
    images: {
        type: [String],
        require: true,
        unique: false,
        trim: true,
        minlength:1
    },
    descrption: {
        type: String,
        require: true,
        unique: false,
        trim: true,
        minlength: 10
    },
    hasVideo: {
        type: Boolean, 
        required: true, 
        unique: false,
        trim: true
    }, 
    autor: {
        type: String, 
        required: true,
        unique: false, 
        trim: true
    },
    video: {
        type: String, 
        required: true, 
        unique: false, 
        trim: true
    }, 
    museography: {
        type: String, 
        required: true, 
        unique: false, 
        trim: true
    }, 
    hasTour: {
        type: Boolean, 
        required: true, 
        unique: false, 
        trim: true
    }, 
    rooms: {
        type: String, 
        required: true, 
        unique: false, 
        trim: true
    }, 
    tour: {
        type: String, 
        required: true, 
        unique: false, 
        trim: true
    }, 
    techniques: {
        type: String, 
        required: true, 
        unique: false, 
        trim: true
    }, 
    pieces: {
        type: [String], 
        required: true, 
        unique: false, 
        trim: true
    }
});
 
ExpositionSchema.pre('save', async function (next) {
    next();
})

const Exposition = mongoose.model('Exposition', ExpositionSchema )
 
module.exports = Exposition;