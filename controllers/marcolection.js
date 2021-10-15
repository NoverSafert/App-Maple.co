const marcolectionServices = require('../services/marcolection');

module.exports = {
    add: (req, res) => {
        const {name ,images, autor, sizes, technique, year} = req.body
        const newExpo = marcolectionServices.add(name ,images, autor, sizes, technique, year)
            .then(ok =>{
                res.status(201).json({
                    message : "Exposition added succesfully"
                })
            })
            .catch(e =>{
                res.status(303).json({
                    message: "Cannot add the exposition because: " + e
                })
            })
    },

    getAll: async(req, res) => {       
        const expositions = await marcolectionServices.getAll()
        if(expositions){
            res.status(200).json({
                expositions
            })
        }
        else{
            res.status(404).json({
                'message' : 'Cannot obtain expositions'
            })
        }
    }, 

    get: async (req, res) => {
        const name = req.params.exposition;
        const exposition = await marcolectionServices.get(name)
        if(exposition){
            res.status(200).json({
                exposition
            })
        }
        else{
            res.status(404).json({
                message : "Exposition not found"
            })
        }
    },

    update: async (req, res) => {
        // Notice our app declared app.use(express.json()); for doing this
        const name = req.params.exposition;

        const {images, autor, sizes, technique, year} = req.body;
        const updateExposition = await marcolectionServices.update(name, images, autor, sizes, technique, year)
            .then(ok =>{
                res.status(201).json({
                    message : 'Exposition updated'
                })
            })
            .catch(e =>{
                res.status(406).json({
                    message : 'Cannot update the exposition, ' + e
                })
            });

    },

    deleteE: async (req, res) => {
        // Notice our app declared app.use(express.json()); for doing this
        const exposition = req.params.exposition;
        
        const result = await marcolectionServices.deleteE(exposition)
            .then(ok =>{
                res.status(201).json({
                    message: 'Exposition deleted'
                })
            })
            .catch(e =>{
                res.status(404).json({
                    message: 'Cannot delete this exposition because: ' + e
                })
            });
    }
};