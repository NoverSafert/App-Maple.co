const express = require('express');
const router = express.Router();

const reservationController = require('../controllers/reservation');


router.post('/add', reservationController.add);

router.get('/get', reservationController.get);

router.get('/:username', reservationController.getAll);

router.delete('/deleteR/', reservationController.deleteR);

module.exports = router;