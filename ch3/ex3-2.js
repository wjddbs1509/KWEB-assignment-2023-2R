const expression = require('express');
const app=expression();
const port=3000;

app.get('/board/page/:page', (req, res) =>{
    const{page}=req.params;
    res.send(`This is page ${page}`);
});

app.listen(port, ()=>console.log(`server listening on ${port}`));