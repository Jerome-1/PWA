//TO START SERVER ENTER IN THE COMMAND LINE "NPM START"
const express = require('express');

const path = require('path');

const mysql =require('mysql2');

const db = require('./public/js/db');

const httpPort = 3000; //was on 80

const hostname = "127.0.0.1"; //Setting the localhost
//Setting up express path ways.
const app = express();

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname, 'public/index.html'))
});

app.get("/library", function(req, res) {
    res.sendFile(path.join(__dirname, 'public/library.html'))
    
    /*var sql = 'select `book_name`, `book_author` from books';
    db.query(sql).then(results => {
    
        // Take a peek in the console
        console.log(results);
        
        // Send to the web pate
        res.send(results)
    }); */
});

app.get('/account', function(req, res) {
    res.sendFile(path.join(__dirname, 'public/account.html'))
});

app.listen(httpPort, function () {
    console.log(`Running at http:// ${hostname}:${httpPort}!`);
}); 