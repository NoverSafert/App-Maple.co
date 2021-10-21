const express = require('express');
const router = express.Router();

const reservationController = require('../controllers/reservation');

router.get('/', reservationController.getAllAll);

router.post('/add', reservationController.add);

router.get('/get', reservationController.get);

router.get('/:username', reservationController.getAll);

router.delete('/deleteR', reservationController.deleteR);

router.put('/update', reservationController.update)

module.exports = router;