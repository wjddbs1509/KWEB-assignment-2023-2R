const express = require('express');
const app=express();
const port=3000;

// app.use(express.json());
app.use(express.urlencoded({extended:true}));

const objectproc = obj => Object.keys(obj).map(key => `${key}: ${obj[key]}`).join(`\n`);

app.get('/', (req, res)=>{
    // console.log(req.body);
    res.send(objectproc(req.query))
});

app.post('/', (req, res)=>{
    res.send(objectproc(req.body));
    // console.log(objectproc(req.body));
    // console.log(`${req.body.username}`);
    // console.log(`${Object.keys(req.body)}`);
    // console.log(`${Object.keys(req.body)}`);
});

app.put('/', (req, res)=>res.send(objectproc(req.body)));

app.delete('/', (req, res)=>res.send(objectproc(req.body)));

app.listen(port, ()=>console.log(`server listening on ${port}`));