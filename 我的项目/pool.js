const mysql=require('mysql');
let pool=mysql.createPool({
     host:'127.0.0.1',
     user:'root',
     password:'',
     database:'xm',
    connectionLimit:15
})
console.log('数据库连接池创建完成');
module.exports=pool;