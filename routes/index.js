import express from 'express';
import dao from '../lib/sql/index';
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'YOYOW-faucet' });
});

router.post('/authLogin', function(req, res, next){
  let {yoyow, time, sign, state} = req.body;
  dao.authlogin().add({ yoyow, time, sign, state }).exec(function(){
    res.json({code: 0, message: '授权登录成功'});
  })
});

router.post('/checkLogin', function(req, res, next){
  let {state} = req.body;
  dao.authlogin().query().where(['state', state]).exec((error, result) => {
    let auth = result.length > 0 ? result[0] : null;
    if(auth){
      dao.authlogin().delete().where(['state', state]).exec(() => {
        res.json(auth);
      })
    }else{
      res.json(null);
    }
  })
});

module.exports = router;

/*
file:///Users/benj/Downloads/20180613YOYOW%E5%AE%98%E7%BD%91%E6%9B%B4%E6%96%B0/thirdparty_css/jquery.fancybox.min.css
file:///Users/benj/Downloads/20180613YOYOW%E5%AE%98%E7%BD%91/index%20(3)/thirdparty_css/jquery.fancybox.min.css
*/
