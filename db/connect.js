const mysql = require('mysql');
// =======================
// Mysql configuration === 
// =======================
const con = mysql.createConnection({
    host: "nodeapp_db",
    user: "root",
    password: "root",
    database: "news", 
}); 
con.connect(function(err) {
    //if (err) throw err ;
    if(err) console.error('error connecting: ' + err.stack);
    console.log("Connected!"); 
});
module.exports = con;   