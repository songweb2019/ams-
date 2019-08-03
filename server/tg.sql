SET NAMES UTF8;
DROP DATABASE IF EXISTS tg;
CREATE DATABASE tg CHARSET=UTF8;
USE tg;




/**用户信息**/
CREATE TABLE tg_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32) unique,
  upwd VARCHAR(32),
  gender INT            #性别  0-女  1-男
);
insert into tg_user values
(1,'猴子猴子',md5(123456),0),
(2,'松鼠松鼠',md5(123456),0);


/** 首页轮播商品信息 **/
CREATE TABLE tg_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT, #id
  img VARCHAR(128),      #图片位置
  title VARCHAR(64),     #标题
  adress VARCHAR(64),    #位置
  href VARCHAR(128)      #跳转的地址
);
insert into tg_index_carousel values
(1,'img/carousel/6.jpg',"","","/"),
(2,'img/carousel/7.jpg',"大理","大理古城幽兰尚居 花朝双床房","/"),
(3,'img/carousel/8.jpg',"武汉","花与画/武昌火车站/户部巷/高层观景房","/");

/**  首页1楼2楼 **/
CREATE TABLE tg_index_lou(
  id INT PRIMARY KEY AUTO_INCREMENT, #id
  img VARCHAR(128),      #图片位置
  title VARCHAR(64),     #所属房型
  lou Int                #几楼图片
);
insert into tg_index_lou values
(1,'img/index/houses.jpg',"名居",1),
(2,'img/index/oldhouse.jpg',"老洋房",1),
(3,'img/index/seaview.jpg',"海景房",1),
(4,'img/index/inn.jpg',"客栈",1),
(5,'img/index/villa.jpg',"别墅",1),
(6,'img/index/apartment.jpg',"公寓",1),
(7,'img/index/family.jpg',"",2),
(8,'img/index/business.jpg',"",2),
(9,'img/index/party.jpg',"",2),
(10,'img/index/discount.jpg',"",2),
(11,'img/index/weekmonth.jpg',"",2);

/** 房屋信息表 **/ 
CREATE TABLE tg_house(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  hid INT,                    #房源编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  mainImg VARCHAR(128),       #主图
  price DECIMAL(10,2),        #价格
  spec INT,                   #几居
  num INT,                    #可住几人
  fen DECIMAL(10,2),          #评分
  city VARCHAR(128),          #城市      
  ping INT,                   #评论 
  jing DECIMAL(10,2),         #经度
  wei DECIMAL(10,2)          #维度         
);
insert into tg_house values
(1,1,'【小粉红】中日友好医院/鸟巢/雍和宫两居','北京朝阳区和平街-十区','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_566x377c.jpg',749,2,4,5.0,'北京',15,116.34,39.9),
(2,2,'【东直门】簋街/楼下地铁站精致一居室','北京东城区东直门北大街-12号楼','//i1.mayi.com/mayi81/M32/DM/FT/Q2TNTDT9YMWKLLYEZTAMFKASU96UGA.jpg_566x377c.jpg',458,2,4,5.0,'北京',16,116.34,39.9),
(3,3,'故宫天安门国贸Cbd7号线大屏幕投影房','北京朝阳区冠城名敦道','//i1.mayi.com//mayi30/M12/MP/MH/LJEZHUDBPMFKUDELFTU9WK98AXCUTX.jpg_566x377c.jpg',669,2,4,5.0,'北京',20,116.34,39.9),
(4,4,'「我宅」「有院·有竹」窗前有竹的房间','北京东城区安定门内大街-道路(安定门内大街)','//i1.mayi.com/mayi67/M68/BA/NY/Q2DNK9PBEQEPRVB6QL6ANE72PZPXRU.jpg_566x377c.jpg',666,3,6,4.0,'北京',22,116.34,39.9),
(5,5,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',180,1,2,4.5,'北京',120,116.34,39.9),
(6,6,'遇见&拾光 万达升龙国际五号线静谧一居室','郑州二七区升龙国际b区','//i1.mayi.com/mayi80/M17/FH/EH/XEGJD7ZLWTL396E4JC7KDTXMMXZBL3.jpg_566x377c.jpg',169,1,2,5.0,'北京',541,116.34,39.9),
(7,7,'【小粉红】中日友好医院/鸟巢/雍和宫两居','北京朝阳区和平街-十区','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_566x377c.jpg',749,2,4,5.0,'北京',251,116.34,39.9),
(8,8,'【东直门】簋街/楼下地铁站精致一居室','北京东城区东直门北大街-12号楼','//i1.mayi.com/mayi81/M32/DM/FT/Q2TNTDT9YMWKLLYEZTAMFKASU96UGA.jpg_566x377c.jpg',458,2,4,5.0,'北京',254,116.34,39.9),
(9,9,'「我宅」「有院·有竹」窗前有竹的房间','北京东城区安定门内大街-道路(安定门内大街)','//i1.mayi.com/mayi67/M68/BA/NY/Q2DNK9PBEQEPRVB6QL6ANE72PZPXRU.jpg_566x377c.jpg',666,3,6,4.0,'北京',102,116.34,39.9),
(10,10,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',150,1,2,4.5,'郑州',120,113.6,34.7),
(11,11,'遇见&拾光 万达升龙国际五号线静谧一居室','郑州二七区升龙国际b区','//i1.mayi.com/mayi80/M17/FH/EH/XEGJD7ZLWTL396E4JC7KDTXMMXZBL3.jpg_566x377c.jpg',140,1,2,5.0,'郑州',1111,113.6,34.7),
(12,12,'【国贸】360/动物园/地铁口/温馨一室','郑州金水区国贸新领地-3号楼','//i1.mayi.com//mayi92/M77/HB/JJ/3FXQKVRSEFWASPF2JXVZGFY8X4BXRT.jpg_566x377c.jpg',200,1,2,5.0,'郑州',666,113.6,34.7),
(13,13,'【汽车总站】航海中路/财贸学校北欧投影房','郑州二七区正商城泰园','//i1.mayi.com/mayi96/M97/FL/YB/XARVKQWBBFLZ672HWZZ53GRNZTHFEZ.jpg_566x377c.jpg',190,1,2,4.5,'郑州',146,113.6,34.7),
(14,14,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',180,1,2,4.5,'郑州',120,113.6,34.7),
(15,15,'【汽车总站】航海中路/财贸学校北欧投影房','郑州二七区正商城泰园','//i1.mayi.com/mayi96/M97/FL/YB/XARVKQWBBFLZ672HWZZ53GRNZTHFEZ.jpg_566x377c.jpg',170,1,2,4.5,'郑州',102,113.6,34.7),
(16,16,'遇见&拾光 万达升龙国际五号线静谧一居室','郑州二七区升龙国际b区','//i1.mayi.com/mayi80/M17/FH/EH/XEGJD7ZLWTL396E4JC7KDTXMMXZBL3.jpg_566x377c.jpg',169,1,2,5.0,'郑州',541,113.6,34.7),
(17,17,'【国贸】360/动物园/地铁口/温馨一室','郑州金水区国贸新领地-3号楼','//i1.mayi.com//mayi92/M77/HB/JJ/3FXQKVRSEFWASPF2JXVZGFY8X4BXRT.jpg_566x377c.jpg',140,1,2,5.0,'郑州',140,113.6,34.7),
(18,18,'【小粉红】中日友好医院/鸟巢/雍和宫两居','北京朝阳区和平街-十区','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_566x377c.jpg',749,2,4,5.0,'上海',540,121.4,31.2),
(19,19,'【东直门】簋街/楼下地铁站精致一居室','北京东城区东直门北大街-12号楼','//i1.mayi.com/mayi81/M32/DM/FT/Q2TNTDT9YMWKLLYEZTAMFKASU96UGA.jpg_566x377c.jpg',458,2,4,5.0,'上海',666,121.4,31.2),
(20,20,'故宫天安门国贸Cbd7号线大屏幕投影房','北京朝阳区冠城名敦道','//i1.mayi.com//mayi30/M12/MP/MH/LJEZHUDBPMFKUDELFTU9WK98AXCUTX.jpg_566x377c.jpg',669,2,4,5.0,'上海',888,121.4,31.2),
(21,21,'「我宅」「有院·有竹」窗前有竹的房间','北京东城区安定门内大街-道路(安定门内大街)','//i1.mayi.com/mayi67/M68/BA/NY/Q2DNK9PBEQEPRVB6QL6ANE72PZPXRU.jpg_566x377c.jpg',666,3,6,4.0,'上海',101,121.4,31.2),
(22,22,'故宫天安门国贸Cbd7号线大屏幕投影房','北京朝阳区冠城名敦道','//i1.mayi.com//mayi30/M12/MP/MH/LJEZHUDBPMFKUDELFTU9WK98AXCUTX.jpg_566x377c.jpg',669,2,4,5.0,'上海',410,121.4,31.2),
(23,23,'故宫天安门国贸Cbd7号线大屏幕投影房','北京朝阳区冠城名敦道','//i1.mayi.com//mayi30/M12/MP/MH/LJEZHUDBPMFKUDELFTU9WK98AXCUTX.jpg_566x377c.jpg',669,2,4,5.0,'上海',105,121.4,31.2),
(24,24,'【小粉红】中日友好医院/鸟巢/雍和宫两居','北京朝阳区和平街-十区','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_566x377c.jpg',749,2,4,5.0,'广州',105,113.2,23.1),
(25,25,'【东直门】簋街/楼下地铁站精致一居室','北京东城区东直门北大街-12号楼','//i1.mayi.com/mayi81/M32/DM/FT/Q2TNTDT9YMWKLLYEZTAMFKASU96UGA.jpg_566x377c.jpg',458,2,4,5.0,'广州',501,113.2,23.1),
(26,26,'「我宅」「有院·有竹」窗前有竹的房间','北京东城区安定门内大街-道路(安定门内大街)','//i1.mayi.com/mayi67/M68/BA/NY/Q2DNK9PBEQEPRVB6QL6ANE72PZPXRU.jpg_566x377c.jpg',666,3,6,4.0,'广州',101,113.2,23.1),
(27,27,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',168,1,2,4.5,'广州',510,113.2,23.1),
(28,28,'遇见&拾光 万达升龙国际五号线静谧一居室','郑州二七区升龙国际b区','//i1.mayi.com/mayi80/M17/FH/EH/XEGJD7ZLWTL396E4JC7KDTXMMXZBL3.jpg_566x377c.jpg',188,1,2,5.0,'广州',540,113.2,23.1),
(29,29,'【国贸】360/动物园/地铁口/温馨一室','郑州金水区国贸新领地-3号楼','//i1.mayi.com//mayi92/M77/HB/JJ/3FXQKVRSEFWASPF2JXVZGFY8X4BXRT.jpg_566x377c.jpg',147,1,2,5.0,'广州',666,113.2,23.1),
(30,30,'【汽车总站】航海中路/财贸学校北欧投影房','郑州二七区正商城泰园','//i1.mayi.com/mayi96/M97/FL/YB/XARVKQWBBFLZ672HWZZ53GRNZTHFEZ.jpg_566x377c.jpg',147,1,2,4.5,'广州',787,113.2,23.1),
(31,31,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',165,1,2,4.5,'深圳',540,114,22.5),
(32,32,'【汽车总站】航海中路/财贸学校北欧投影房','郑州二七区正商城泰园','//i1.mayi.com/mayi96/M97/FL/YB/XARVKQWBBFLZ672HWZZ53GRNZTHFEZ.jpg_566x377c.jpg',145,1,2,4.5,'深圳',123,114,22.5),
(33,33,'遇见&拾光 万达升龙国际五号线静谧一居室','郑州二七区升龙国际b区','//i1.mayi.com/mayi80/M17/FH/EH/XEGJD7ZLWTL396E4JC7KDTXMMXZBL3.jpg_566x377c.jpg',200,1,2,5.0,'深圳',321,114,22.5),
(34,34,'【国贸】360/动物园/地铁口/温馨一室','郑州金水区国贸新领地-3号楼','//i1.mayi.com//mayi92/M77/HB/JJ/3FXQKVRSEFWASPF2JXVZGFY8X4BXRT.jpg_566x377c.jpg',210,1,2,5.0,'深圳',210,114,22.5),
(35,35,'【小粉红】中日友好医院/鸟巢/雍和宫两居','北京朝阳区和平街-十区','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_566x377c.jpg',749,2,4,5.0,'漯河',254,114,33.5),
(36,36,'【东直门】簋街/楼下地铁站精致一居室','北京东城区东直门北大街-12号楼','//i1.mayi.com/mayi81/M32/DM/FT/Q2TNTDT9YMWKLLYEZTAMFKASU96UGA.jpg_566x377c.jpg',458,2,4,5.0,'漯河',110,114,33.5),
(37,37,'故宫天安门国贸Cbd7号线大屏幕投影房','北京朝阳区冠城名敦道','//i1.mayi.com//mayi30/M12/MP/MH/LJEZHUDBPMFKUDELFTU9WK98AXCUTX.jpg_566x377c.jpg',669,2,4,5.0,'漯河',210,114,33.5),
(38,38,'「我宅」「有院·有竹」窗前有竹的房间','北京东城区安定门内大街-道路(安定门内大街)','//i1.mayi.com/mayi67/M68/BA/NY/Q2DNK9PBEQEPRVB6QL6ANE72PZPXRU.jpg_566x377c.jpg',666,3,6,4.0,'漯河',104,114,33.5),
(39,39,'故宫天安门国贸Cbd7号线大屏幕投影房','北京朝阳区冠城名敦道','//i1.mayi.com//mayi30/M12/MP/MH/LJEZHUDBPMFKUDELFTU9WK98AXCUTX.jpg_566x377c.jpg',669,2,4,5.0,'漯河',541,114,33.5),
(40,40,'故宫天安门国贸Cbd7号线大屏幕投影房','北京朝阳区冠城名敦道','//i1.mayi.com//mayi30/M12/MP/MH/LJEZHUDBPMFKUDELFTU9WK98AXCUTX.jpg_566x377c.jpg',669,2,4,5.0,'漯河',541,114,33.5),
(41,41,'【小粉红】中日友好医院/鸟巢/雍和宫两居','北京朝阳区和平街-十区','//i1.mayi.com//mayi53/M94/QN/IX/NAURJ34722NYCGQ3RJJ8E9JCEJDDF6.jpg_566x377c.jpg',749,2,4,5.0,'漯河',401,114,33.5),
(42,42,'【东直门】簋街/楼下地铁站精致一居室','北京东城区东直门北大街-12号楼','//i1.mayi.com/mayi81/M32/DM/FT/Q2TNTDT9YMWKLLYEZTAMFKASU96UGA.jpg_566x377c.jpg',458,2,4,5.0,'漯河',541,114,33.5),
(43,43,'「我宅」「有院·有竹」窗前有竹的房间','北京东城区安定门内大街-道路(安定门内大街)','//i1.mayi.com/mayi67/M68/BA/NY/Q2DNK9PBEQEPRVB6QL6ANE72PZPXRU.jpg_566x377c.jpg',666,3,6,4.0,'漯河',451,114,33.5),
(45,45,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',250,1,2,4.5,'漯河',406,114,33.5),
(44,44,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',250,1,2,4.5,'漯河',406,114,33.5),
(46,46,'遇见&拾光 万达升龙国际五号线静谧一居室','郑州二七区升龙国际b区','//i1.mayi.com/mayi80/M17/FH/EH/XEGJD7ZLWTL396E4JC7KDTXMMXZBL3.jpg_566x377c.jpg',411,1,2,5.0,'漯河',540,114,33.5),
(47,47,'【国贸】360/动物园/地铁口/温馨一室','郑州金水区国贸新领地-3号楼','//i1.mayi.com//mayi92/M77/HB/JJ/3FXQKVRSEFWASPF2JXVZGFY8X4BXRT.jpg_566x377c.jpg',222,1,2,5.0,'漯河',540,114,33.5),
(48,48,'【汽车总站】航海中路/财贸学校北欧投影房','郑州二七区正商城泰园','//i1.mayi.com/mayi96/M97/FL/YB/XARVKQWBBFLZ672HWZZ53GRNZTHFEZ.jpg_566x377c.jpg',151,1,2,4.5,'漯河',540,114,33.5),
(49,49,'【省人民医院】璞丽/黄河路/工业风大床房','郑州金水区瀚海·璞丽中心','//i1.mayi.com/mayi60/M59/ZH/OC/SF89E3D7E93346E5AC7XNDBFK46NZM.jpg_566x377c.jpg',115,1,2,4.5,'漯河',540,114,33.5),
(50,50,'【汽车总站】航海中路/财贸学校北欧投影房','郑州二七区正商城泰园','//i1.mayi.com/mayi96/M97/FL/YB/XARVKQWBBFLZ672HWZZ53GRNZTHFEZ.jpg_566x377c.jpg',150,1,2,4.5,'漯河',840,114,33.5),
(51,51,'遇见&拾光 万达升龙国际五号线静谧一居室','郑州二七区升龙国际b区','//i1.mayi.com/mayi80/M17/FH/EH/XEGJD7ZLWTL396E4JC7KDTXMMXZBL3.jpg_566x377c.jpg',141,1,2,5.0,'漯河',540,114,33.5),
(52,52,'【国贸】360/动物园/地铁口/温馨一室','郑州金水区国贸新领地-3号楼','//i1.mayi.com//mayi92/M77/HB/JJ/3FXQKVRSEFWASPF2JXVZGFY8X4BXRT.jpg_566x377c.jpg',212,1,2,5.0,'漯河',540,114,33.5);

/**房源图片**/
CREATE TABLE tg_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  hid INT,                    #房源编号
  lg1 VARCHAR(128),            #大图片路径
  lg2 VARCHAR(128),            #大图片路径
  lg3 VARCHAR(128),            #大图片路径
  lg4 VARCHAR(128),            #大图片路径
  lg5 VARCHAR(128),            #大图片路径
  lg6 VARCHAR(128),            #大图片路径
  lg7 VARCHAR(128),            #大图片路径
  lg8 VARCHAR(128),            #大图片路径
  lg9 VARCHAR(128),            #大图片路径
  lg10 VARCHAR(128),            #大图片路径
  lg11 VARCHAR(128),            #大图片路径
  md1 VARCHAR(128),            #中图片路径
  md2 VARCHAR(128),            #中图片路径
  md3 VARCHAR(128),            #中图片路径
  md4 VARCHAR(128),            #中图片路径
  md5 VARCHAR(128),            #中图片路径
  md6 VARCHAR(128),            #中图片路径
  md7 VARCHAR(128),            #中图片路径
  md8 VARCHAR(128),            #中图片路径
  md9 VARCHAR(128),            #中图片路径
  md10 VARCHAR(128),            #中图片路径
  md11 VARCHAR(128)             #中图片路径 
);

insert into tg_laptop_pic values
#小粉红
(1,1,'detail/A1.jpg','detail/A2.jpg','detail/A3.jpg','detail/A4.jpg','detail/A5.jpg','detail/A6.jpg','detail/A7.jpg','detail/A8.jpg','detail/A9.jpg','detail/A10.jpg','detail/A11.jpg','detail/Aa1.jpg','detail/Aa2.jpg','detail/Aa3.jpg','detail/Aa4.jpg','detail/Aa5.jpg','detail/Aa6.jpg','detail/Aa7.jpg','detail/Aa8.jpg','detail/Aa9.jpg','detail/Aa10.jpg','detail/Aa11.jpg'),
(7,7,'detail/A1.jpg','detail/A2.jpg','detail/A3.jpg','detail/A4.jpg','detail/A5.jpg','detail/A6.jpg','detail/A7.jpg','detail/A8.jpg','detail/A9.jpg','detail/A10.jpg','detail/A11.jpg','detail/Aa1.jpg','detail/Aa2.jpg','detail/Aa3.jpg','detail/Aa4.jpg','detail/Aa5.jpg','detail/Aa6.jpg','detail/Aa7.jpg','detail/Aa8.jpg','detail/Aa9.jpg','detail/Aa10.jpg','detail/Aa11.jpg'),
(18,18,'detail/A1.jpg','detail/A2.jpg','detail/A3.jpg','detail/A4.jpg','detail/A5.jpg','detail/A6.jpg','detail/A7.jpg','detail/A8.jpg','detail/A9.jpg','detail/A10.jpg','detail/A11.jpg','detail/Aa1.jpg','detail/Aa2.jpg','detail/Aa3.jpg','detail/Aa4.jpg','detail/Aa5.jpg','detail/Aa6.jpg','detail/Aa7.jpg','detail/Aa8.jpg','detail/Aa9.jpg','detail/Aa10.jpg','detail/Aa11.jpg'),
(24,24,'detail/A1.jpg','detail/A2.jpg','detail/A3.jpg','detail/A4.jpg','detail/A5.jpg','detail/A6.jpg','detail/A7.jpg','detail/A8.jpg','detail/A9.jpg','detail/A10.jpg','detail/A11.jpg','detail/Aa1.jpg','detail/Aa2.jpg','detail/Aa3.jpg','detail/Aa4.jpg','detail/Aa5.jpg','detail/Aa6.jpg','detail/Aa7.jpg','detail/Aa8.jpg','detail/Aa9.jpg','detail/Aa10.jpg','detail/Aa11.jpg'),
(35,35,'detail/A1.jpg','detail/A2.jpg','detail/A3.jpg','detail/A4.jpg','detail/A5.jpg','detail/A6.jpg','detail/A7.jpg','detail/A8.jpg','detail/A9.jpg','detail/A10.jpg','detail/A11.jpg','detail/Aa1.jpg','detail/Aa2.jpg','detail/Aa3.jpg','detail/Aa4.jpg','detail/Aa5.jpg','detail/Aa6.jpg','detail/Aa7.jpg','detail/Aa8.jpg','detail/Aa9.jpg','detail/Aa10.jpg','detail/Aa11.jpg'),
(41,41,'detail/A1.jpg','detail/A2.jpg','detail/A3.jpg','detail/A4.jpg','detail/A5.jpg','detail/A6.jpg','detail/A7.jpg','detail/A8.jpg','detail/A9.jpg','detail/A10.jpg','detail/A11.jpg','detail/Aa1.jpg','detail/Aa2.jpg','detail/Aa3.jpg','detail/Aa4.jpg','detail/Aa5.jpg','detail/Aa6.jpg','detail/Aa7.jpg','detail/Aa8.jpg','detail/Aa9.jpg','detail/Aa10.jpg','detail/Aa11.jpg'),
#东直门
(2,2,'detail/B1.jpg','detail/B2.jpg','detail/B3.jpg','detail/B4.jpg','detail/B5.jpg','detail/B6.jpg','detail/B7.jpg','detail/B8.jpg','detail/B9.jpg','detail/B10.jpg','detail/B11.jpg','detail/Bb1.jpg','detail/Bb2.jpg','detail/Bb3.jpg','detail/Bb4.jpg','detail/Bb5.jpg','detail/Bb6.jpg','detail/Bb7.jpg','detail/Bb8.jpg','detail/Bb9.jpg','detail/Bb10.jpg','detail/Bb11.jpg'),
(8,8,'detail/B1.jpg','detail/B2.jpg','detail/B3.jpg','detail/B4.jpg','detail/B5.jpg','detail/B6.jpg','detail/B7.jpg','detail/B8.jpg','detail/B9.jpg','detail/B10.jpg','detail/B11.jpg','detail/Bb1.jpg','detail/Bb2.jpg','detail/Bb3.jpg','detail/Bb4.jpg','detail/Bb5.jpg','detail/Bb6.jpg','detail/Bb7.jpg','detail/Bb8.jpg','detail/Bb9.jpg','detail/Bb10.jpg','detail/Bb11.jpg'),
(19,19,'detail/B1.jpg','detail/B2.jpg','detail/B3.jpg','detail/B4.jpg','detail/B5.jpg','detail/B6.jpg','detail/B7.jpg','detail/B8.jpg','detail/B9.jpg','detail/B10.jpg','detail/B11.jpg','detail/Bb1.jpg','detail/Bb2.jpg','detail/Bb3.jpg','detail/Bb4.jpg','detail/Bb5.jpg','detail/Bb6.jpg','detail/Bb7.jpg','detail/Bb8.jpg','detail/Bb9.jpg','detail/Bb10.jpg','detail/Bb11.jpg'),
(25,25,'detail/B1.jpg','detail/B2.jpg','detail/B3.jpg','detail/B4.jpg','detail/B5.jpg','detail/B6.jpg','detail/B7.jpg','detail/B8.jpg','detail/B9.jpg','detail/B10.jpg','detail/B11.jpg','detail/Bb1.jpg','detail/Bb2.jpg','detail/Bb3.jpg','detail/Bb4.jpg','detail/Bb5.jpg','detail/Bb6.jpg','detail/Bb7.jpg','detail/Bb8.jpg','detail/Bb9.jpg','detail/Bb10.jpg','detail/Bb11.jpg'),
(36,36,'detail/B1.jpg','detail/B2.jpg','detail/B3.jpg','detail/B4.jpg','detail/B5.jpg','detail/B6.jpg','detail/B7.jpg','detail/B8.jpg','detail/B9.jpg','detail/B10.jpg','detail/B11.jpg','detail/Bb1.jpg','detail/Bb2.jpg','detail/Bb3.jpg','detail/Bb4.jpg','detail/Bb5.jpg','detail/Bb6.jpg','detail/Bb7.jpg','detail/Bb8.jpg','detail/Bb9.jpg','detail/Bb10.jpg','detail/Bb11.jpg'),
(42,42,'detail/B1.jpg','detail/B2.jpg','detail/B3.jpg','detail/B4.jpg','detail/B5.jpg','detail/B6.jpg','detail/B7.jpg','detail/B8.jpg','detail/B9.jpg','detail/B10.jpg','detail/B11.jpg','detail/Bb1.jpg','detail/Bb2.jpg','detail/Bb3.jpg','detail/Bb4.jpg','detail/Bb5.jpg','detail/Bb6.jpg','detail/Bb7.jpg','detail/Bb8.jpg','detail/Bb9.jpg','detail/Bb10.jpg','detail/Bb11.jpg'),
#故宫
(3,3,'detail/C1.jpg','detail/C2.jpg','detail/C3.jpg','detail/C4.jpg','detail/C5.jpg','detail/C6.jpg','detail/C7.jpg','detail/C8.jpg','detail/C9.jpg','detail/C10.jpg','detail/C11.jpg','detail/Cc1.jpg','detail/Cc2.jpg','detail/Cc3.jpg','detail/Cc4.jpg','detail/Cc5.jpg','detail/Cc6.jpg','detail/Cc7.jpg','detail/Cc8.jpg','detail/Cc9.jpg','detail/Cc10.jpg','detail/Cc11.jpg'),
(20,20,'detail/C1.jpg','detail/C2.jpg','detail/C3.jpg','detail/C4.jpg','detail/C5.jpg','detail/C6.jpg','detail/C7.jpg','detail/C8.jpg','detail/C9.jpg','detail/C10.jpg','detail/C11.jpg','detail/Cc1.jpg','detail/Cc2.jpg','detail/Cc3.jpg','detail/Cc4.jpg','detail/Cc5.jpg','detail/Cc6.jpg','detail/Cc7.jpg','detail/Cc8.jpg','detail/Cc9.jpg','detail/Cc10.jpg','detail/Cc11.jpg'),
(22,22,'detail/C1.jpg','detail/C2.jpg','detail/C3.jpg','detail/C4.jpg','detail/C5.jpg','detail/C6.jpg','detail/C7.jpg','detail/C8.jpg','detail/C9.jpg','detail/C10.jpg','detail/C11.jpg','detail/Cc1.jpg','detail/Cc2.jpg','detail/Cc3.jpg','detail/Cc4.jpg','detail/Cc5.jpg','detail/Cc6.jpg','detail/Cc7.jpg','detail/Cc8.jpg','detail/Cc9.jpg','detail/Cc10.jpg','detail/Cc11.jpg'),
(23,23,'detail/C1.jpg','detail/C2.jpg','detail/C3.jpg','detail/C4.jpg','detail/C5.jpg','detail/C6.jpg','detail/C7.jpg','detail/C8.jpg','detail/C9.jpg','detail/C10.jpg','detail/C11.jpg','detail/Cc1.jpg','detail/Cc2.jpg','detail/Cc3.jpg','detail/Cc4.jpg','detail/Cc5.jpg','detail/Cc6.jpg','detail/Cc7.jpg','detail/Cc8.jpg','detail/Cc9.jpg','detail/Cc10.jpg','detail/Cc11.jpg'),
(37,37,'detail/C1.jpg','detail/C2.jpg','detail/C3.jpg','detail/C4.jpg','detail/C5.jpg','detail/C6.jpg','detail/C7.jpg','detail/C8.jpg','detail/C9.jpg','detail/C10.jpg','detail/C11.jpg','detail/Cc1.jpg','detail/Cc2.jpg','detail/Cc3.jpg','detail/Cc4.jpg','detail/Cc5.jpg','detail/Cc6.jpg','detail/Cc7.jpg','detail/Cc8.jpg','detail/Cc9.jpg','detail/Cc10.jpg','detail/Cc11.jpg'),
(39,39,'detail/C1.jpg','detail/C2.jpg','detail/C3.jpg','detail/C4.jpg','detail/C5.jpg','detail/C6.jpg','detail/C7.jpg','detail/C8.jpg','detail/C9.jpg','detail/C10.jpg','detail/C11.jpg','detail/Cc1.jpg','detail/Cc2.jpg','detail/Cc3.jpg','detail/Cc4.jpg','detail/Cc5.jpg','detail/Cc6.jpg','detail/Cc7.jpg','detail/Cc8.jpg','detail/Cc9.jpg','detail/Cc10.jpg','detail/Cc11.jpg'),
(40,40,'detail/C1.jpg','detail/C2.jpg','detail/C3.jpg','detail/C4.jpg','detail/C5.jpg','detail/C6.jpg','detail/C7.jpg','detail/C8.jpg','detail/C9.jpg','detail/C10.jpg','detail/C11.jpg','detail/Cc1.jpg','detail/Cc2.jpg','detail/Cc3.jpg','detail/Cc4.jpg','detail/Cc5.jpg','detail/Cc6.jpg','detail/Cc7.jpg','detail/Cc8.jpg','detail/Cc9.jpg','detail/Cc10.jpg','detail/Cc11.jpg'),
#省医院
(5,5,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),
(10,10,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),
(14,14,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),
(27,27,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),
(31,31,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),
(44,44,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),
(45,45,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),
(49,49,'detail/D1.jpg','detail/D2.jpg','detail/D3.jpg','detail/D4.jpg','detail/D5.jpg','detail/D6.jpg','detail/D7.jpg','detail/D8.jpg','detail/D9.jpg','detail/D10.jpg','detail/D11.jpg','detail/Dd1.jpg','detail/Dd2.jpg','detail/Dd3.jpg','detail/Dd4.jpg','detail/Dd5.jpg','detail/Dd6.jpg','detail/Dd7.jpg','detail/Dd8.jpg','detail/Dd9.jpg','detail/Dd10.jpg','detail/Dd11.jpg'),

#遇见
(6,6,'detail/E1.jpg','detail/E2.jpg','detail/E3.jpg','detail/E4.jpg','detail/E5.jpg','detail/E6.jpg','detail/E7.jpg','detail/E8.jpg','detail/E9.jpg','detail/E10.jpg','detail/E11.jpg','detail/Ee1.jpg','detail/Ee2.jpg','detail/Ee3.jpg','detail/Ee4.jpg','detail/Ee5.jpg','detail/Ee6.jpg','detail/Ee7.jpg','detail/Ee8.jpg','detail/Ee9.jpg','detail/Ee10.jpg','detail/Ee11.jpg'),
(11,11,'detail/E1.jpg','detail/E2.jpg','detail/E3.jpg','detail/E4.jpg','detail/E5.jpg','detail/E6.jpg','detail/E7.jpg','detail/E8.jpg','detail/E9.jpg','detail/E10.jpg','detail/E11.jpg','detail/Ee1.jpg','detail/Ee2.jpg','detail/Ee3.jpg','detail/Ee4.jpg','detail/Ee5.jpg','detail/Ee6.jpg','detail/Ee7.jpg','detail/Ee8.jpg','detail/Ee9.jpg','detail/Ee10.jpg','detail/Ee11.jpg'),
(28,28,'detail/E1.jpg','detail/E2.jpg','detail/E3.jpg','detail/E4.jpg','detail/E5.jpg','detail/E6.jpg','detail/E7.jpg','detail/E8.jpg','detail/E9.jpg','detail/E10.jpg','detail/E11.jpg','detail/Ee1.jpg','detail/Ee2.jpg','detail/Ee3.jpg','detail/Ee4.jpg','detail/Ee5.jpg','detail/Ee6.jpg','detail/Ee7.jpg','detail/Ee8.jpg','detail/Ee9.jpg','detail/Ee10.jpg','detail/Ee11.jpg'),
(33,33,'detail/E1.jpg','detail/E2.jpg','detail/E3.jpg','detail/E4.jpg','detail/E5.jpg','detail/E6.jpg','detail/E7.jpg','detail/E8.jpg','detail/E9.jpg','detail/E10.jpg','detail/E11.jpg','detail/Ee1.jpg','detail/Ee2.jpg','detail/Ee3.jpg','detail/Ee4.jpg','detail/Ee5.jpg','detail/Ee6.jpg','detail/Ee7.jpg','detail/Ee8.jpg','detail/Ee9.jpg','detail/Ee10.jpg','detail/Ee11.jpg'),
(46,46,'detail/E1.jpg','detail/E2.jpg','detail/E3.jpg','detail/E4.jpg','detail/E5.jpg','detail/E6.jpg','detail/E7.jpg','detail/E8.jpg','detail/E9.jpg','detail/E10.jpg','detail/E11.jpg','detail/Ee1.jpg','detail/Ee2.jpg','detail/Ee3.jpg','detail/Ee4.jpg','detail/Ee5.jpg','detail/Ee6.jpg','detail/Ee7.jpg','detail/Ee8.jpg','detail/Ee9.jpg','detail/Ee10.jpg','detail/Ee11.jpg'),
(51,51,'detail/E1.jpg','detail/E2.jpg','detail/E3.jpg','detail/E4.jpg','detail/E5.jpg','detail/E6.jpg','detail/E7.jpg','detail/E8.jpg','detail/E9.jpg','detail/E10.jpg','detail/E11.jpg','detail/Ee1.jpg','detail/Ee2.jpg','detail/Ee3.jpg','detail/Ee4.jpg','detail/Ee5.jpg','detail/Ee6.jpg','detail/Ee7.jpg','detail/Ee8.jpg','detail/Ee9.jpg','detail/Ee10.jpg','detail/Ee11.jpg'),

#国贸
(12,12,'detail/F1.jpg','detail/F2.jpg','detail/F3.jpg','detail/F4.jpg','detail/F5.jpg','detail/F6.jpg','detail/F7.jpg','detail/F8.jpg','detail/F9.jpg','detail/F10.jpg','detail/F11.jpg','detail/Ff1.jpg','detail/Ff2.jpg','detail/Ff3.jpg','detail/Ff4.jpg','detail/Ff5.jpg','detail/Ff6.jpg','detail/Ff7.jpg','detail/Ff8.jpg','detail/Ff9.jpg','detail/Ff10.jpg','detail/Ff11.jpg'),
(29,29,'detail/F1.jpg','detail/F2.jpg','detail/F3.jpg','detail/F4.jpg','detail/F5.jpg','detail/F6.jpg','detail/F7.jpg','detail/F8.jpg','detail/F9.jpg','detail/F10.jpg','detail/F11.jpg','detail/Ff1.jpg','detail/Ff2.jpg','detail/Ff3.jpg','detail/Ff4.jpg','detail/Ff5.jpg','detail/Ff6.jpg','detail/Ff7.jpg','detail/Ff8.jpg','detail/Ff9.jpg','detail/Ff10.jpg','detail/Ff11.jpg'),
(34,34,'detail/F1.jpg','detail/F2.jpg','detail/F3.jpg','detail/F4.jpg','detail/F5.jpg','detail/F6.jpg','detail/F7.jpg','detail/F8.jpg','detail/F9.jpg','detail/F10.jpg','detail/F11.jpg','detail/Ff1.jpg','detail/Ff2.jpg','detail/Ff3.jpg','detail/Ff4.jpg','detail/Ff5.jpg','detail/Ff6.jpg','detail/Ff7.jpg','detail/Ff8.jpg','detail/Ff9.jpg','detail/Ff10.jpg','detail/Ff11.jpg'),
(47,47,'detail/F1.jpg','detail/F2.jpg','detail/F3.jpg','detail/F4.jpg','detail/F5.jpg','detail/F6.jpg','detail/F7.jpg','detail/F8.jpg','detail/F9.jpg','detail/F10.jpg','detail/F11.jpg','detail/Ff1.jpg','detail/Ff2.jpg','detail/Ff3.jpg','detail/Ff4.jpg','detail/Ff5.jpg','detail/Ff6.jpg','detail/Ff7.jpg','detail/Ff8.jpg','detail/Ff9.jpg','detail/Ff10.jpg','detail/Ff11.jpg'),
(52,52,'detail/F1.jpg','detail/F2.jpg','detail/F3.jpg','detail/F4.jpg','detail/F5.jpg','detail/F6.jpg','detail/F7.jpg','detail/F8.jpg','detail/F9.jpg','detail/F10.jpg','detail/F11.jpg','detail/Ff1.jpg','detail/Ff2.jpg','detail/Ff3.jpg','detail/Ff4.jpg','detail/Ff5.jpg','detail/Ff6.jpg','detail/Ff7.jpg','detail/Ff8.jpg','detail/Ff9.jpg','detail/Ff10.jpg','detail/Ff11.jpg'),

#我宅
(4,4,'detail/G1.jpg','detail/G2.jpg','detail/G3.jpg','detail/G4.jpg','detail/G5.jpg','detail/G6.jpg','detail/G7.jpg','detail/G8.jpg','detail/G9.jpg','detail/G10.jpg','detail/G11.jpg','detail/Gg1.jpg','detail/Gg2.jpg','detail/Gg3.jpg','detail/Gg4.jpg','detail/Gg5.jpg','detail/Gg6.jpg','detail/Gg7.jpg','detail/Gg8.jpg','detail/Gg9.jpg','detail/Gg10.jpg','detail/Gg11.jpg'),
(9,9,'detail/G1.jpg','detail/G2.jpg','detail/G3.jpg','detail/G4.jpg','detail/G5.jpg','detail/G6.jpg','detail/G7.jpg','detail/G8.jpg','detail/G9.jpg','detail/G10.jpg','detail/G11.jpg','detail/Gg1.jpg','detail/Gg2.jpg','detail/Gg3.jpg','detail/Gg4.jpg','detail/Gg5.jpg','detail/Gg6.jpg','detail/Gg7.jpg','detail/Gg8.jpg','detail/Gg9.jpg','detail/Gg10.jpg','detail/Gg11.jpg'),
(21,21,'detail/G1.jpg','detail/G2.jpg','detail/G3.jpg','detail/G4.jpg','detail/G5.jpg','detail/G6.jpg','detail/G7.jpg','detail/G8.jpg','detail/G9.jpg','detail/G10.jpg','detail/G11.jpg','detail/Gg1.jpg','detail/Gg2.jpg','detail/Gg3.jpg','detail/Gg4.jpg','detail/Gg5.jpg','detail/Gg6.jpg','detail/Gg7.jpg','detail/Gg8.jpg','detail/Gg9.jpg','detail/Gg10.jpg','detail/Gg11.jpg'),
(26,26,'detail/G1.jpg','detail/G2.jpg','detail/G3.jpg','detail/G4.jpg','detail/G5.jpg','detail/G6.jpg','detail/G7.jpg','detail/G8.jpg','detail/G9.jpg','detail/G10.jpg','detail/G11.jpg','detail/Gg1.jpg','detail/Gg2.jpg','detail/Gg3.jpg','detail/Gg4.jpg','detail/Gg5.jpg','detail/Gg6.jpg','detail/Gg7.jpg','detail/Gg8.jpg','detail/Gg9.jpg','detail/Gg10.jpg','detail/Gg11.jpg'),
(38,38,'detail/G1.jpg','detail/G2.jpg','detail/G3.jpg','detail/G4.jpg','detail/G5.jpg','detail/G6.jpg','detail/G7.jpg','detail/G8.jpg','detail/G9.jpg','detail/G10.jpg','detail/G11.jpg','detail/Gg1.jpg','detail/Gg2.jpg','detail/Gg3.jpg','detail/Gg4.jpg','detail/Gg5.jpg','detail/Gg6.jpg','detail/Gg7.jpg','detail/Gg8.jpg','detail/Gg9.jpg','detail/Gg10.jpg','detail/Gg11.jpg'),
(43,43,'detail/G1.jpg','detail/G2.jpg','detail/G3.jpg','detail/G4.jpg','detail/G5.jpg','detail/G6.jpg','detail/G7.jpg','detail/G8.jpg','detail/G9.jpg','detail/G10.jpg','detail/G11.jpg','detail/Gg1.jpg','detail/Gg2.jpg','detail/Gg3.jpg','detail/Gg4.jpg','detail/Gg5.jpg','detail/Gg6.jpg','detail/Gg7.jpg','detail/Gg8.jpg','detail/Gg9.jpg','detail/Gg10.jpg','detail/Gg11.jpg'),

#汽车
(13,13,'detail/H1.jpg','detail/H2.jpg','detail/H3.jpg','detail/H4.jpg','detail/H5.jpg','detail/H6.jpg','detail/H7.jpg','detail/H8.jpg','detail/H9.jpg','detail/H10.jpg','detail/H11.jpg','detail/Hh1.jpg','detail/Hh2.jpg','detail/Hh3.jpg','detail/Hh4.jpg','detail/Hh5.jpg','detail/Hh6.jpg','detail/Hh7.jpg','detail/Hh8.jpg','detail/Hh9.jpg','detail/Hh10.jpg','detail/Hh11.jpg'),
(15,15,'detail/H1.jpg','detail/H2.jpg','detail/H3.jpg','detail/H4.jpg','detail/H5.jpg','detail/H6.jpg','detail/H7.jpg','detail/H8.jpg','detail/H9.jpg','detail/H10.jpg','detail/H11.jpg','detail/Hh1.jpg','detail/Hh2.jpg','detail/Hh3.jpg','detail/Hh4.jpg','detail/Hh5.jpg','detail/Hh6.jpg','detail/Hh7.jpg','detail/Hh8.jpg','detail/Hh9.jpg','detail/Hh10.jpg','detail/Hh11.jpg'),
(30,30,'detail/H1.jpg','detail/H2.jpg','detail/H3.jpg','detail/H4.jpg','detail/H5.jpg','detail/H6.jpg','detail/H7.jpg','detail/H8.jpg','detail/H9.jpg','detail/H10.jpg','detail/H11.jpg','detail/Hh1.jpg','detail/Hh2.jpg','detail/Hh3.jpg','detail/Hh4.jpg','detail/Hh5.jpg','detail/Hh6.jpg','detail/Hh7.jpg','detail/Hh8.jpg','detail/Hh9.jpg','detail/Hh10.jpg','detail/Hh11.jpg'),
(32,32,'detail/H1.jpg','detail/H2.jpg','detail/H3.jpg','detail/H4.jpg','detail/H5.jpg','detail/H6.jpg','detail/H7.jpg','detail/H8.jpg','detail/H9.jpg','detail/H10.jpg','detail/H11.jpg','detail/Hh1.jpg','detail/Hh2.jpg','detail/Hh3.jpg','detail/Hh4.jpg','detail/Hh5.jpg','detail/Hh6.jpg','detail/Hh7.jpg','detail/Hh8.jpg','detail/Hh9.jpg','detail/Hh10.jpg','detail/Hh11.jpg'),
(48,48,'detail/H1.jpg','detail/H2.jpg','detail/H3.jpg','detail/H4.jpg','detail/H5.jpg','detail/H6.jpg','detail/H7.jpg','detail/H8.jpg','detail/H9.jpg','detail/H10.jpg','detail/H11.jpg','detail/Hh1.jpg','detail/Hh2.jpg','detail/Hh3.jpg','detail/Hh4.jpg','detail/Hh5.jpg','detail/Hh6.jpg','detail/Hh7.jpg','detail/Hh8.jpg','detail/Hh9.jpg','detail/Hh10.jpg','detail/Hh11.jpg'),
(50,50,'detail/H1.jpg','detail/H2.jpg','detail/H3.jpg','detail/H4.jpg','detail/H5.jpg','detail/H6.jpg','detail/H7.jpg','detail/H8.jpg','detail/H9.jpg','detail/H10.jpg','detail/H11.jpg','detail/Hh1.jpg','detail/Hh2.jpg','detail/Hh3.jpg','detail/Hh4.jpg','detail/Hh5.jpg','detail/Hh6.jpg','detail/Hh7.jpg','detail/Hh8.jpg','detail/Hh9.jpg','detail/Hh10.jpg','detail/Hh11.jpg');

