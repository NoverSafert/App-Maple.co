const express = require('express');
const router = express.Router();

const expositionsController = require('../controllers/expositions');

router.get('/', expositionsController.getAll);

router.get('/:exposition', expositionsController.get);

router.post('/add', expositionsController.add);

router.put('/update/:exposition', expositionsController.update);

router.delete('/deleteE/:exposition', expositionsController.deleteE);

// router.post('/:exposition', expositionsController.getExposition);

module.exports = router;