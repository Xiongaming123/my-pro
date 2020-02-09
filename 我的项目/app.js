const http=require('http');
const express=require('express');
const bodyParser=require('body-parser');
//引入路由器
const routerDate=require('./router/index_data');
const routerLogin=require('./router/login');
const routerRegister=require('./router/register')
const routerProduct=require('./router/product')
//创建服务器
let app=express();
let server=http.createServer(app);
server.listen(8080);
console.log('服务器启动完成');
//使用body-parser中间件,将数据解析为对象
app.use( bodyParser.urlencoded({
    extended:false
  }) );
//托管静态资源
app.use( express.static('public') );
//把路由器挂载到服务器，给URL添加前缀如:/user  /user/reg
app.use('/index_data',routerDate);
app.use('/login',routerLogin);
app.use('/register',routerRegister);
app.use('/product',routerProduct);