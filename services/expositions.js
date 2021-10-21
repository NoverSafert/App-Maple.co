const mongoose = require('mongoose');
const ExpositionModel = require('../models/expositions');
// const jwt = require("jsonwebtoken");

// Now this service is providing whatever is needed to interact with the database but at the same time
// validating the BLL requirements.

const add = async (name ,images ,descrption ,hasVideo ,autor ,video ,museography ,hasTour ,rooms , tour ,techniques ,pieces) => {   
    const expositionModel = new ExpositionModel({
        name: name,
        images: images,
        descrption: descrption,
        hasVideo: hasVideo,
        autor: autor,
        video: video,
        museography: museography,
        hasTour: hasTour,
        rooms: rooms, 
        tour: tour,
        techniques: techniques,
        pieces: pieces
    });
    // All validation, checks, further tasks (sending emails, etc.) must happen here.
    await expositionModel.save();
    console.log("saved")
    return expositionModel;
};

const get = async(exposition) => {
    const search = await ExpositionModel.findOne({name:exposition});
    return search;        
};

const getAll = async() => {
    const expositions = await ExpositionModel.find({});
    return expositions;
};

const update = async(name ,images ,descrption ,hasVideo ,autor ,video ,museography ,hasTour ,rooms , tour ,techniques ,pieces) => {
    try{
        const newD = {images : images,
            descrption : descrption,
            hasVideo : hasVideo,
            autor : autor,
            video : video,
            museography : museography,
            hasTour : hasTour,
            rooms : rooms,
            tour : tour,
            techniques : techniques,
            pieces : pieces
        }
        const expo = await ExpositionModel.findOneAndUpdate({ name: name }, newD);
        await expo.save()
        return expo;
    }
    catch(err) {
        return false;
    }
};

const deleteE = async(exposition) => {
    try{
        await ExpositionModel.findOneAndDelete({ exposition });
        return true;
    }
    catch (err) {
        return false;
    }
};


module.exports = {
    add,
    get,
    getAll,
    update, 
    deleteE
};