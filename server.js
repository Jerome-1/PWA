//TO START SERVER ENTER IN THE COMMAND LINE "NPM START"
const express = require('express'); //Assigning expreess library to variable.

const path = require('path'); //Assinging path to variable

const mysql =require('mysql2'); //Assigning mysql2 library to variable.

const db = require('./public/js/db'); //Linking database utility functions and query to the server(app.js)

const httpPort = 3000; //setting up the port numbers

const hostname = "127.0.0.1"; //Setting the localhost
//Setting up express path ways.
const app = express();

//Connecting to the pug engine and setting it as my base template
app.set('view engine', 'pug');
app.set('views', './public/views');

app.use(express.static(path.join(__dirname, 'public')));
//Setting up book reservations page
app.get("/home", function(req, res) {
    res.render("index");
});
//Account information -NOT IMPORTANT-
app.get("/account", function(req, res) {
    res.render("account");
})
//Setting up Library 
app.get("/library", function(req, res) {
    var description = 'select `book_name`, `book_author`, `book_id` from books'; // SQL query collecting information from `book` database.
    db.query(description).then(results => {
        res.render("library", {data:results});//
    });
});

//Setting up book preview
app.get("/preview/:book_id", function(req, res){
    var bookId = req.params.book_id; //BookId is requesting a parameter which in this case is book_id from the `book` table.
    var prSql = 'select `book_id`, `title`, `chapter` from preview where `book_id` = ?'; //SQL query to get book preview based on the bookId.
    db.query(prSql, [bookId]).then(results => { //Nesting the BookId variable so that the result will be id dependent. 
        console.log(results);
        res.send(results); //PROBLEM - CANNOT SEND THESE RESULTS TO A PROPER PUG PAGE! Created a pug template called preview and attempted to render the data to that page. However page doesn't include links established in the layout.pug. It would print the nav menu and a header without any of the styles listed in the css file. 
    });
});


app.listen(httpPort, function () {
    console.log(`Running at http:// ${hostname}:${httpPort}!`);
}); 