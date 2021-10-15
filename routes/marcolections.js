const express = require('express');
const router = express.Router();

const marcolectionController = require('../controllers/marcolection');

router.get('/', marcolectionController.getAll);

router.get('/:exposition', marcolectionController.get);

router.post('/add', marcolectionController.add);

router.put('/update/:exposition', marcolectionController.update);

router.delete('/deleteE/:exposition', marcolectionController.deleteE);

module.exports = router;