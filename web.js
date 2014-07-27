var express = require('express');
var app = express();

app.get('/', function(req, res) {
    res.send('This is the backend API for the Flare app.');
});

var server = app.listen(80, function() {
    console.log('Listening on port %d', server.address().port);
});