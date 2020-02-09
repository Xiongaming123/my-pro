var express=require('express');
var pool=require('../pool.js');
let router=express.Router();
router.get('/index_data',(req,res)=>{
    var sql='select*from xm_site_info';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json(result);
    })
})
module.exports=router;