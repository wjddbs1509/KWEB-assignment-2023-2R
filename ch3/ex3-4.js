const express = require('express');
const app=express();
const port=3000;

app.use(express.urlencoded({ extended: true }));

app.set('views', `${__dirname}/views`);
app.set('view engine', 'pug');

app.get('/', (req, res)=>res.render('login.pug'));

app.post('/login', (req, res)=>{
    const {username, password} = req.body;
    return res.send(`Username: ${username}, Password: ${password}`);
})

app.listen(port, ()=>console.log(`server listening on ${port}`));