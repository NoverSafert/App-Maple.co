const mongoose = require('mongoose');
const MarColectionModel = require('../models/marcolection');

const add = async (name ,images, autor, sizes, technique, year) => {   
    const marcolectionModel = new MarColectionModel({
        name: name,
        images: images, 
        autor: autor,
        sizes: sizes, 
        technique: technique,
        year: year
    });
    // All validation, checks, further tasks (sending emails, etc.) must happen here.
    await marcolectionModel.save();
    return marcolectionModel;
};

const get = async(exposition) => {
    const search = await MarColectionModel.findOne({exposition});
    return search;        
};

const getAll = async() => {
    const expositions = await MarColectionModel.find({});
    return expositions;
};

const update = async(name ,images, autor, sizes, technique, year) => {
    try{
        const exposition = await ExpositionModel.findOne({ name });
        exposition.images = images;
        exposition.autor = autor;
        exposition.sizes = sizes;
        exposition.technique = technique;
        exposition.year = year;
        await exposition.save()
        return exposition;
    }
    catch (err) {
        return err;
    }

};

const deleteE = async(exposition) => {
    try{
        await ExpositionModel.findOneAndDelete({ exposition });
        return true;
    }
    catch (err) {
        return err;
    }
};


module.exports = {
    add,
    get,
    getAll,
    update, 
    deleteE
};