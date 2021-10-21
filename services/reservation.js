const mongoose = require('mongoose');
const ReservationModel = require('../models/reservation');

const add = async (date, hour, topic, username, people) => {   
    const reservationModel = new ReservationModel({
        fecha: date,
        hora: hour,
        titulo: topic,
        usuario: username, 
        canPer: people
    });
    await reservationModel.save();
    return reservationModel;
};

const get = async(username, day, hour) => {
    const search = await ReservationModel.find({fecha: day, 
                                                hora: hour, 
                                                usuario: username
                                            }); // Tal vez ????????
    return search;        
};

const getAll = async(username) => {
    const search = await ReservationModel.find({usuario: username});
    return search;
};

const deleteR = async(username, day, hour) => {
    try{
        await ReservationModel.findOneAndDelete({fecha: day, 
                                                hora: hour, 
                                                usuario: username
                                                }); // Tal vez ????????
        return true;
    }
    catch (err) {
        return err;
    }
};

const getAllAll = async() =>{
    const search = await ReservationModel.find({});
    return search;
}

const update = async(username, day, hour, topic) =>{
    try{
        const newD = {
            titulo: topic
        }

        await ReservationModel.findOneAndUpdate({fecha: day, 
                                                hora: hour, 
                                                usuario: username
                                                }, newD); // Tal vez ????????
        return true;
    }
    catch (err) {
        return err;
    }
}

module.exports = {
    add,
    get, 
    getAll,
    deleteR, 
    getAllAll, 
    update
};