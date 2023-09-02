var express = require('express');
var router = express.Router();


/* GET home page. */
router.get('/health', function(req, res, next) {
  res.json({"status": "up"})
});

module.exports = router;
