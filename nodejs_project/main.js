const express = require('express');
const app = express();

app.get('/', function (req, res) {
    res.send('Test server');
});

app.use(function(req, res, next) {
    res.status(404).send("Not working :(");
});

app.listen(8080, function () {
    console.log('Server working on port 8080.');
});