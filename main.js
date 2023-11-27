const express = require("express");
//npm install mysql2 --save
const mysql = require("mysql2");
//npm install cors --save
const cors = require("cors");

const app = express();
const port = 3000;

app.use(cors());

//Host, user, password database
const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"fjortenprikker",
    database:"stog"
});

//Displays All the JSON info
app.get('/',(req, res)=>{
    connection.query('SELECT * FROM stog',(error,results)=>{
        res.send(results);
    });
});

//Gets ALl station Names
app.get('/stations',(req, res)=>{
    connection.query('SELECT `name` FROM stog',(error,results)=>{
        res.send(results);
    });
});

//Gets Name Sation Name from input
app.get('/stations/:name',(req, res)=>{
    const stogName = req.params.name
    connection.query('SELECT * FROM stog WHERE name = ?',
        [stogName]
        ,(error,results)=>{
        res.send(results);
    });
});

//Gets All Info from staions on the inputted Lines
app.get('/line/:line/',(req, res)=>{
    const stogLine = req.params.line
    connection.query('SELECT * FROM stog where `lines` LIKE ?',
        ['%' + stogLine + '%'],
        (error,results)=> {
            res.send(results);
        });
});

//Gets Stations depending on their metro connection
app.get('/metro/:status/',(req, res)=>{
    const stogMetro = req.params.status
    connection.query('SELECT * FROM stog where metro = ?',
        [stogMetro],
        (error,results)=> {
            res.send(results);
        });
});

//Gets Stations depending on their metro connection
app.get('/other/:status/',(req, res)=>{
    const stogOther = req.params.status
    connection.query('SELECT * FROM stog where other = ?',
        [stogOther],
        (error,results)=> {
            res.send(results);
        });
});

//Gets all stations in the inputted municipality
app.get('/municipality/:municipality/',(req, res)=>{
    const stogMunicipality = req.params.municipality
    connection.query('SELECT * FROM stog where municipality = ?',
        [stogMunicipality],
        (error,results)=> {
            res.send(results);
        });
});

//GETS info on stations that opend before input and after input
app.get('/opend/:after/:before',(req, res)=>{
    const stogOpendAfter = req.params.after
    const stogOpendBefore = req.params.before
    connection.query('SELECT * FROM stog where `opend` BETWEEN ? AND ?',
        [stogOpendAfter, stogOpendBefore],
        (error,results)=> {
            res.send(results);
        });
});

//Gets All Info from staions on the inputted track
app.get('/track/:track/',(req, res)=>{
    const stogTrack = req.params.track
    connection.query('SELECT * FROM stog where `tracks` LIKE ?',
        ['%' + stogTrack + '%'],
        (error,results)=> {
            res.send(results);
        });
});




app.listen(port, () =>{
    console.log(`Application is now running on port ${port}`);
});