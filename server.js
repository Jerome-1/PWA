//TO START SERVER ENTER IN THE COMMAND LINE "NPM START"
const express = require('express'); //Assigning expreess library to variable.

const path = require('path'); //Assinging path to variable

const mysql =require('mysql2'); //Assigning mysql2 library to variable.

const db = require('./public/js/db'); //Linking database utility functions and query to the server(app.js)
const res = require('express/lib/response'); //He popped up randomly LMAO
const httpPort = 3000; //setting up the port numbers

const hostname = "127.0.0.1"; //Setting the localhost
//Setting up express path ways.
const app = express();
app.use(express.urlencoded({ extended: true }));

//Connecting to the pug engine and setting it as my base template
app.set('view engine', 'pug');
app.set('views', './public/views');

app.use(express.static(path.join(__dirname, 'public')));
//Setting up book reservations page
app.get("/", function(req, res) {
    res.render("index");
});
//Account information -NOT IMPORTANT-
app.get("/account", function(req, res) {
    res.render("account");
});
//Setting up Library 
app.get("/library", function(req, res) {
    var description = 'select `book_name`, `book_author`, `book_id`, `genre` from books'; // SQL query collecting information from `book` database.
    db.query(description).then(results => {
        res.render("library", {data:results});//Stores sql query into the data variable which is then outputted in the pug template 'library.pug'
    });
});

app.get("/test", function(req, res) {
    var test = 'select `book_name`, `book_author`, `book_id` from books';
    db.query(test).then(results => {
        res.render("test", {experiment:results});
    });   
});
//Setting up book preview
app.get("/preview/:book_id", function(req, res){
    var bookId = req.params.book_id; //BookId is requesting a parameter which in this case is book_id from the `book` table.
    var prSql = 'select `book_id`, `title`, `chapter` from preview where `book_id` = ?'; //SQL query to get book preview based on the bookId. Done this way because I wanted this order.
    db.query(prSql, [bookId]).then(results => { //Nesting the BookId variable so that the result will be id dependent. 
        console.log(results);
        res.render("preview", {chapter:results}); 
    });
});

app.get("/review/:book_id", function(req, res) {
    var reviewId = req.params.book_id; //BookId is requesting a parameter which in this case is book_id from the `book` table.
    var prSql = 'select * from preview where `book_id` = ?';
    db.query(prSql, [reviewId]).then(results => {
        console.log(results);
        res.render("review", {review:results});
    });  
});

app.post("/post", function(req, res) {
    params = req.body;
    try {
        console.log(req.body);
    } catch (err) {
        console.error('error is ', err.message);
    };
    res.render("post", {output: params, outputted:'form submitted'});
});

// !!!!! WORK IN PROGRESS !!!!! 





app.listen(httpPort, function () {
    console.log(`Running at http:// ${hostname}:${httpPort}!`);
}); 