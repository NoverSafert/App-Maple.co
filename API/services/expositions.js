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
    const newExposition = await expositionModel.save();
    return newExposition;
};

const get = async(exposition) => {
    const search = await ExpositionModel.findOne({exposition});
    return search;        
};

const getAll = async() => {
    const expositions = await ExpositionModel.find({});
    return expositions;
};

const update = async(name ,images ,descrption ,hasVideo ,autor ,video ,museography ,hasTour ,rooms , tour ,techniques ,pieces) => {
    try{
        console.log("obra a actualizar: " + name);
        const exposition = await ExpositionModel.findOne({ name });
        exposition.images = images;
        exposition.descrption = descrption;
        exposition.hasVideo = hasVideo;
        exposition.autor = autor;
        exposition.video = video;
        exposition.museography = museography;
        exposition.hasTour = hasTour;
        exposition.rooms = rooms;
        exposition.tour = tour;
        exposition.techniques = techniques;
        exposition.pieces = pieces;
        await exposition.save()
        return exposition;
    }
    catch (err) {
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