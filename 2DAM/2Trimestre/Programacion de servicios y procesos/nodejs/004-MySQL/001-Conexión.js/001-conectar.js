var mysql = require('mysql')
// npm install mysql

var conexion = mysql.createConnection({
    host:"localhost",
    user:"nodejs",
    password:"nodejs",
    port: 8889
});

conexion.connect(function(err){
    if(err) throw err;
    console.log("conectado")
})
