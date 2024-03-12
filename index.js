import express from "express";
import mysql from 'mysql2';
import cors from 'cors'
import bodyParser from "body-parser";


//a Frontend react appnál nem jsont kell majd fetchelni hanem ezt a localhost:3000 

const app = express();

const jsonParser = bodyParser.json()

app.use(cors());


const db = mysql.createPool(
    {
        host: "localhost",
        user: 'root',
        password: '',
        database: 'ArtistComms'
    }
).promise();


app.get('/', (req,res) =>{
    res.send("Hello World")
})

app.get("/Commissions", async (req,res) =>{
    const temp = await db.query('SELECT * FROM Commissions')
    const rows = temp[0];
    const fields = temp[1];
    res.send(rows)




})


app.post("/Commissions", jsonParser,async(req,res) =>{
    let commInf = [req.body.Description, req.body.Price];
    const insert = await db.query("INSERT INTO Commissions(Description,Price) VALUES (?,?)", commInf);
    res.send("Successfuly registered the commission.")
})



app.listen(3000);