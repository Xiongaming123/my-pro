var express=require('express');
var pool=require('../pool.js');
var router=express.Router();
router.get('/product',(req,res)=>{
    var sql='select*from xm_star_product';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json(result);
    })
})
module.exports=router;