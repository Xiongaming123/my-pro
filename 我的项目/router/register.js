const express=require('express');
var pool=require('../pool.js');
let router=express.Router();

router.get('/register',(req,res)=>{
    //1.1获取数据
    let str=req.query;
    //1.2验证各项数据是否为空
    if(!str.uname){
      res.send({code:401,msg:'uname required'});
      //阻止往后执行
      return;
    }
    if(!str.upwd){
      res.send({code:402,msg:'upwd required'});
      return;
    }
    if(!str.phone){
      res.send({code:404,msg:'phone required'});
      return;
    }
    if(!str.email){
        res.send({code:404,msg:'email required'});
        return;
      }
    //1.3执行SQL语句
    pool.query('INSERT INTO xm_user SET ?',[str],(err,result)=>{
      if(err) throw err;
      console.log(result);
      //如果数据插入成功，响应对象
      if(result.affectedRows>0){
        res.send({code:200,msg:'register suc'});
        //console.log(result);
      }
    });
  });
module.exports=router;