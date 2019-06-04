const express = require('express');
const exphbs = require("express-handlebars");
const bodyParser = require('body-parser');
const os = require('os')

const passport = require("passport");
const LocalStrategy = require('passport-local').Strategy;

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

// passport.use(new LocalStrategy(
//   function(username, password, done) {
//     User.findOne({ username: username }, function (err, user) {
//       if (err) { return done(err); }
//       if (!user) {
//         return done(null, false, { message: 'Incorrect username.' });
//       }
//       if (!user.validPassword(password)) {
//         return done(null, false, { message: 'Incorrect password.' });
//       }
//       return done(null, user);
//     });
//   }
// ));
// App

app.get('/', (req, res) => {

  const q = `select * from article order by create_at limit 8`;
  con.query(q,(err,result)=>{
      if (err) throw err;
      result.map(item=>item.body = item.body.substring(0,120)+'...')
      return res.render("home",{
          articles: result,
          host : os.hostname()
      })
  })
  //res.render("home")

});

app.get("/test", (req,res)=>{
  res.render("home")
})

app.post("/login",passport.authenticate('local'),
(req,res)=>{
console.log('authuntificated ')
})

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


// app.listen(PORT, HOST);
// console.log(`Running on http://${HOST}:${PORT}`);

// const express = require("express");
// const os = require("os");

// const app=express();

// app.get("/", (req, res) => {
//     res.send("Hello from Swarm " + os.hostname());
// });

app.listen(3000, () => {
    console.log("Server is running on port 3000");
});