const expositionsServices = require('../services/expositions');

// Now the controller is using the services associated to the product resource.
// Here, we use the req,res, extracting whatever the service needs to work.

module.exports = {
    add: (req, res) => {
        const {name ,images ,descrption ,hasVideo ,autor ,video ,museography ,hasTour ,rooms , tour ,techniques ,pieces} = req.body
        const newExpo = expositionsServices.add(name ,images ,descrption ,hasVideo ,autor ,video ,museography ,hasTour ,rooms , tour ,techniques ,pieces)
            .then(ok =>{
                res.status(201).json({
                    message : "Exposition added succesfully", 
                    newExpo
                })
            })
            .catch(e =>{
                res.status(303).json({
                    message: "Cannot add the exposition"
                })
            })
    },

    getAll: async(req, res) => {       
        const expositions = await expositionsServices.getAll()
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
        console.log("Obra buscada: " + name);
        const exposition = await expositionsServices.get(name)
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

        const {images ,descrption ,hasVideo ,autor ,video ,museography ,hasTour ,rooms , tour ,techniques ,pieces} = req.body;
        const updateExposition = await expositionsServices.update(name, images ,descrption ,hasVideo ,autor ,video ,museography ,hasTour ,rooms , tour ,techniques ,pieces)
        // if(updateExposition){
        //     res.status(201).json({
        //         message : 'Exposition updated'
        //     })
        // }   
        // else{
        //     res.status(406).json({
        //         message : 'Cannot update the exposition'
        //     })
        // } 
            .then(ok =>{
                res.status(201).json({
                    message : 'Exposition updated'
                })
            })
            .catch(e =>{
                res.status(406).json({
                    message : 'Cannot update the exposition'
                })
            });

    },

    deleteE: async (req, res) => {
        // Notice our app declared app.use(express.json()); for doing this
        const exposition = req.params.exposition;
        
        const result = await expositionsServices.deleteE(exposition)
            .then(ok =>{
                res.status(201).json({
                    message: 'Exposition deleted'
                })
            })
            .catch(e =>{
                res.status(404).json({
                    message: 'Cannot delete this exposition'
                })
            });
    }
};