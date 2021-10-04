const mongoose = require("mongoose")
const Schema = mongoose.Schema

const ExpositionSchema = new Schema({
    name: {
        type: String,
        require: true,
        unique: false, // Al fijar como true, fijamos que es un indice para la base de datos
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
        required: false, 
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
        required: false, 
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
}, {
    timestamps: true
});
 
ExpositionSchema.pre('save', async function (next) {
    // if (!this.isModified('password')) return next();
    // this.password = await bcrypt.hash(this.password, 12);
    // next();
    next();
})

// userSchema.statics.findAndValidate =  async function (username, password) {
//     try{
//         var foundUser =  await this.findOne({ username })
//         if(!foundUser) {
//             return false
//         }

//         const isValid =  await bcrypt.compare(password, foundUser.password);

//     return isValid ? foundUser : false;
//     } catch (error) {
//         console.log("Error")
//     }
// }


const Exposition = mongoose.model('Exposition', ExpositionSchema )
 
module.exports = Exposition;