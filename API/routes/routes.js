const express = require('express');
const router = express.Router();

router.use('/users', require('./users'));
router.use('/expositions', require('./expositions'));

module.exports = router;