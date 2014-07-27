var express = require('express');
var morgan = require('morgan');

var app = express();
var fs = require('fs');
var access_logfile = fs.createWriteStream('./access.log', {flags: 'a'});

app.use(morgan('combined', { stream: access_logfile }));
    
app.get('/', function(req, res) {
    res.send('This is the backend API for the Flare app.');
});

var server = app.listen(process.env.PORT || 5679, function() {
    console.log('Listening on port %d', server.address().port);
});
