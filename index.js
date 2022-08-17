var express = require('express');
var app     = express();
 
app.get('/', function(req,res){
  res.send('Hello World! \nThis is a Node.Js application built with Docker!');
});
 
var port = 80;
app.listen(port,function(){
  console.log('Listening on http://localhost:' + port);
});