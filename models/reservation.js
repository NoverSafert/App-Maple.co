const mongoose = require("mongoose")
const Schema = mongoose.Schema

const ReservationSchema = new Schema({
    fecha: {
        type: Date,//Date("<YYYY-mm-dd>"), 
        required: true, 
        unique: false, // Lo pondremos como verdadero para facilitar busquedas 
        trim: true
    },
    hora: { 
        type: String,//("<THH:MM:ss>"), 
        required: true, 
        unique: false, 
        trim: true
    },
    titulo: {
        type: String, 
        required: true, 
        unique: false, 
        trim: true
    },
    usuario: {
        type: String, 
        required: true, 
        unique: false,
        trim: true
    }, 
    canPer: {
        type: Number, 
        required: true,
        unique: false, 
        trim: true
    }
});
 
ReservationSchema.pre('save', async function (next) {
    // if (!this.isModified('password')) return next();
    // this.password = await bcrypt.hash(this.password, 12);
    // next();
    next();
})

const Reservation = mongoose.model('Reservation', ReservationSchema )

module.exports = Reservation;