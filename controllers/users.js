const UsersService = require('../services/users');

module.exports = {
    login: async (req, res) => {
        // Notice our app declared app.use(express.json()); for doing this
        const {username, password} = req.body;
        
        const token = await UsersService.login(username, password)
        if ( token ) 
            res.status(201).json({
                message: "token",
                token: token,
                success: true
            });
        else {
            res.json({message: "Authentication Failed", success: false})
        }

        
    },

    addUser: (req, res) => {
        const {username, password, usertype} = req.body
        const newU = UsersService.addUser(username, password, usertype)
        .then(ok =>{
            res.status(201).json({
                message: ok
            })
        })
        .catch(e =>{
            res.status(303).json({
                message: "Cannot add this user because: " + e
            })
        })
    },
    
    getUser: async (req, res, next) => {
        const user = await UsersService.getUser(req.params.username);
        console.log(user)
        if (user){
            res.status(200).json({user});
        }else{
            res.status(404).json({"message": "NotFound"});
        }
    },
    
    getAllUsers: async(req, res, next) => {       
        const users = await UsersService.getAllUsers();
        res.status(200).json({users});
    },

    updateUser: async (req, res, next) => {
        const username = req.params.username;
        const password = req.body.password;
        const usertype = req.body.usertype;
        const updateUser = await UsersService.updateUser(username, password, usertype)
            .then(ok =>{
                res.status(201).json({
                    message: "User updated"
                })
            })
            .catch(e =>{
                res.status(406).json({
                    message: "Cannot update the user because: " + e
                })
            });
    },

    deleteUser: async (req, res, next) => {
        // Notice our app declared app.use(express.json()); for doing this
        const username = req.params.username;
        const result = await UsersService.deleteUser(username)
            .then(ok =>{
                res.status(201).json({
                    message: "User Deleted",
                });
            })
            .catch(e =>{
                res.status(404).json({
                    message: "Cannot delete this user because: " + e
                });
            });
    }
};
