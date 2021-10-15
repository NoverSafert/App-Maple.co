const mongoose = require("mongoose")
const Schema = mongoose.Schema

const MarcolectionSchema = new Schema({
    name: {
        type: String, 
        required: true, 
        unique: true, // Lo pondremos como verdadero para facilitar busquedas 
        trim: true
    },
    images: { // [0]: expo, [1]: artist
        type: [String], 
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
    sizes: {
        type: String, 
        required: true, 
        unique: false,
        trim: true
    }, 
    technique: {
        type: String, 
        required: true,
        unique: false, 
        trim: true
    },
    year: {
        type: String , 
        required: false, 
        unique: false, 
        trim: true
    }
});
 
MarcolectionSchema.pre('save', async function (next) {
    // if (!this.isModified('password')) return next();
    // this.password = await bcrypt.hash(this.password, 12);
    // next();
    next();
})

const Marcolection = mongoose.model('Marcolection', MarcolectionSchema )

module.exports = Marcolection;




// struct MarColection: Identifiable{
//     var id = UUID()
//     var description: String
//     var sizes: String
//     var technique: String
//     var year: Int
// }
