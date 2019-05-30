const express = require('express');
const exphbs = require("express-handlebars");

const con = require("./db/connect")
// Constants
const PORT = 3000;
const HOST = '0.0.0.0';
const app = express();

const hbs = exphbs.create({
    /* config */
  });
app.engine("handlebars", hbs.engine);
app.set("view engine", "handlebars");
app.use(express.static("public"));

// App

app.get('/', (req, res) => {

  const q = `select * from article`;
  con.query(q,(err,result)=>{
      if (err) throw err;
      
      return res.render("home",{
          articles: result,
      })
  })

});

// app.get('/article/:id',(req,res)=>{
    
// })


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);