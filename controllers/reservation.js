const reservationServices = require('../services/reservation');

module.exports = {
    add: (req, res) => {
        const date = new Date(req.body.fecha)
        const hour = new Date(req.body.hora)
        const topic = req.body.titulo
        const username = req.body.usuario
        const people = req.body.canPer
        const newReservation = reservationServices.add(date, hour, topic, username, people)
            .then(ok =>{
                res.status(201).json({
                    message : "Reservation added succesfully"
                })
            })
            .catch(e =>{
                res.status(303).json({
                    message: "Cannot add this reservation because: " + e
                })
            })
    },

    getAll: async(req, res) => { 
        const username = req.params.username  
        const reservations = await reservationServices.getAll(username)
        if(reservations){
            res.status(200).json({
                reservations
            })
        }
        else{
            res.status(404).json({
                message : 'Cannot obtain the reservations'
            })
        }
    }, 

    get: async (req, res) => {
        // username, day, hour
        const username = req.body.usuario
        const day = new Date(req.body.fecha)
        const hour = new Date(req.body.hora)
        const reservation = await reservationServices.get(username, day, hour)
        if(reservation){
            res.status(200).json({
                reservation
            })
        }
        else{
            res.status(404).json({
                message : "Reservation not found"
            })
        }
    },

    deleteR: async (req, res) => {
        const username = req.body.usuario
        const day = new Date(req.body.fecha)
        const hour = new Date(req.body.hora)
        const result = await reservationServices.deleteR(username, day, hour)
            .then(ok =>{
                res.status(201).json({
                    message: 'Reservation deleted'
                })
            })
            .catch(e =>{
                res.status(404).json({
                    message: 'Cannot delete this reservation because: ' + e
                })
            });
    }
};