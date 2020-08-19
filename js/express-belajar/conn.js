var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "ganteng123!",
  database: "nodejs"
});

con.connect(function (err){
    if(err) throw err;
});

module.exports = con;
