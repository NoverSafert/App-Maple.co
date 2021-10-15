const express = require('express');
const router = express.Router();

router.use('/users', require('./users'));
router.use('/expositions', require('./expositions'));
router.use('/marcolections', require('./marcolections'));
router.use('/reservations', require('./reservations'));

module.exports = router;