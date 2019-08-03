const express = require('express');
const pool = require('./pool.js');
var router = express.Router();

//首页轮播
router.post('/car', function(req, res) {
    pool.query('select * from tg_index_carousel',
        function(err, result) {
            if (err) throw err;
            if (result.length > 0) {
                res.send(result);
            } else {
                res.send({ code: 0, msg: "查询失败" });
            }
        });

});
//首页1 2楼
router.post('/lou', function(req, res) {
    pool.query('select * from tg_index_lou',
        function(err, result) {
            if (err) throw err;
            if (result.length > 0) {
                res.send(result);
            } else {
                res.send({ code: 0, msg: "查询失败" });
            }
        });

});
//首页下面
router.post('/index', function(req, res) {
    pool.query('select * from tg_house where hid<=6',
        function(err, result) {
            if (err) throw err;
            if (result.length > 0) {
                res.send({ code: 1, data: result });
            } else {
                res.send({ code: 0, msg: "查询失败" });
            }
        });

});
//分页查询
router.post('/list', function(req, res) {
    var page = req.body.page;
    var count = req.body.count;
    var city = req.body.city;
    if (!page) page = 1;
    if (page <= 0) page = 1;
    if (!count) count = 18;
    if (city == 'false') {
        var sql1 = 'select count(*) as lengths from tg_house';
        var sql = 'select * from tg_house limit ?,? ';
    } else {
        var sql1 = `select count(*) as lengths from tg_house where city=?`;
        var sql = 'select * from tg_house where city=? limit ?,? ';
    }
    page = parseInt((page - 1) * count);
    count = parseInt(count);
    pool.query(sql1, [city],
        function(err, result) {
            if (err) throw err;
            if (result.length > 0) {
                var lengths = result;
                if (city == 'false') {
                    pool.query(sql, [page, count],
                        function(err, result) {
                            if (err) throw err;
                            if (result.length > 0) {
                                res.send({ code: 1, data: result, lengths: lengths });
                            } else {
                                res.send({ code: 0, msg: "查询失败" });
                            }
                        });
                } else {
                    pool.query(sql, [city, page, count],
                        function(err, result) {
                            if (err) throw err;
                            if (result.length > 0) {
                                res.send({ code: 1, data: result, lengths: lengths });
                            } else {
                                res.send({ code: 0, msg: "查询失败" });
                            }
                        });
                }
            } else {
                res.send({ code: 0, msg: "查询失败" });
            }
        });
});

//detail详情查询
router.post('/detail', function(req, res) {
    var hid = req.body.hid;
    if (hid == 0 || hid == undefined) {
        var sql = 'select lg1,lg2,lg3,lg4,lg5,lg6,lg7,lg8,lg9,lg10,lg11,md1,md2,md3,md4,md5,md6,md7,md8,md9,md10,md11 from tg_laptop_pic  where hid=1';
        var sql1 = 'select title,subtitle,price,city,ping,jing,wei from tg_house where hid=1 ';
    } else {
        var sql = 'select lg1,lg2,lg3,lg4,lg5,lg6,lg7,lg8,lg9,lg10,lg11,md1,md2,md3,md4,md5,md6,md7,md8,md9,md10,md11 from tg_laptop_pic where hid=?';
        var sql1 = 'select title,subtitle,price,city,ping,jing,wei from tg_house where hid=?';
    }
    pool.query(sql, [hid],
        function(err, result) {
            if (err) throw err;
            if (result.length > 0) {
                // res.send({ code: 1, data: result });
                var obj = result;
                pool.query(sql1, [hid], function(err, result) {
                    if (err) throw err;
                    if (result.length > 0) {
                        res.send({ code: 1, data: obj, main: result });
                    }
                });
            } else {
                res.send({ code: 0, msg: "查询失败" });
            }
        });
});

module.exports = router;