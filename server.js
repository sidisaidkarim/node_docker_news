const express = require('express');
const exphbs = require("express-handlebars");
const bodyParser = require('body-parser')

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
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }));
// App

app.get('/', (req, res) => {

  const q = `select * from article order by create_at limit 8`;
  con.query(q,(err,result)=>{
      if (err) throw err;
      result.map(item=>item.body = item.body.substring(0,120)+'...')
      return res.render("home",{
          articles: result,
      })
  })

});

app.get('/article/:id',(req,res)=>{

  const articleId = req.params.id;
  const q = `select * from article where id = ${articleId}`
  con.query(q,(err,result)=>{
      if (err) throw err;
       
      return res.render("article-detail",{
        article: result[0]
      })
  })
    
})

app.get("/add-new-article",(req,res)=>{
  res.render("add-new-article");
})

app.post("/add-new-article",(req,res)=>{


  console.log(req.body.articleTitle)
  const title = req.body.articleTitle;
  const body = req.body.articleBody;
  const link = req.body.articleImgLink;

  const q = `insert into article (title,body,image) value('${title}','${body}','${link}')`;

  con.query(q, (err,result)=>{
    return res.render('home');
  } )

})


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);