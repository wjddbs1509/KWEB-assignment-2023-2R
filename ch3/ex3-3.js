const expression = require('express');
const app=expression();
const port=3000;

app.get('/factorial', (req, res) =>{
    const{number}=req.query;
    return res.redirect(`/factorial/${number}`);
});

app.get('/factorial/:number', (req, res) =>{
    const{number}=req.params;
    const intnumber=parseInt(number, 10);
    let result=1;
    for (let i=2;i<=intnumber;i++){
        result*=i;
    }
    res.send(`factorial ${result}`);
});


app.listen(port, ()=>console.log(`server listening on ${port}`));