
const express = require("express");
const app = express();





app.set("port" , process.env.PORT || 2500);


app.use("/public " , express.static(__dirname + "/public"));

app.get("/" , function(req , res){
    res.send("Express Works");
    res.sendFile(__dirname + "/public/index.html");

}).listen(2500)