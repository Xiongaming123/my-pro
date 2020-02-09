SET NAMES UTF8;
DROP DATABASE IF EXISTS xm;
CREATE DATABASE xm CHARSET UTF8;
USE xm;
#网站的基本信息
CREATE TABLE xm_site_info(
    site_name VARCHAR(16),
    logo VARCHAR(64),
    logo_gif VARCHAR(64),
    copyright VARCHAR(256)
);
INSERT INTO xm_site_info VALUES('小米','image/logo_top.png','image/yyymix.gif','小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region©mi.com 京ICP证110507号 京ICP备10046444号公网安备11010802020134号 京网文[2014]0059-0009号违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试');

#导航条目
CREATE TABLE xm_navbar_item(
    name VARCHAR(16),
    url VARCHAR(64),
    title VARCHAR(32)
);
insert into xm_navbar_item VALUES('小米手机','/list.html','多样的商品'),
                                 ('红米','/index.html','商城首页'),
                                 ('平板·笔记本','/index.html','商城首页'),
                                 ('电视','/index.html','商城首页'),
                                 ('盒子·影音','/index.html','商城首页'),
                                 ('路由器','/index.html','商城首页'),
                                 ('智能硬件','/index.html','商城首页'),
                                 ('服务','/index.html','商城首页'),
                                 ('社区','/index.html','商城首页');

#轮播图
CREATE TABLE xm_carousel_item(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(128),
    url VARCHAR(128)
);
INSERT INTO xm_carousel_item VALUES(NULL,'/index.html','image/carousel01.jpg'),
            (NULL,'image/carousel02.jpg','/index.html'),
            (NULL,'image/carousel03.jpg','/index.html'),
            (NULL,'image/carousel04.jpg','/index.html'),
            (NULL,'image/carousel04.jpg','/index.html');

#首页轮播图左下角6张小图片
CREATE TABLE xm_six_photos(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    pic VARCHAR(128),
    url VARCHAR(128)
);
INSERT INTO xm_six_photos VALUES(NULL,'image/hjh_01.gif','/index.html'),
                                (NULL,'image/hjh_02.gif','/index.html'),
                                (NULL,'image/hjh_03.gif','/index.html'),
                                (NULL,'image/hjh_04.gif','/index.html'),
                                (NULL,'image/hjh_05.gif','/index.html'),
                                (NULL,'image/hjh_06.gif','/index.html');

#首页轮播图正下三列产品
CREATE TABLE xm_three_product(
    tid INT NOT NULL,
    pic VARCHAR(64),
    url VARCHAR(64)
);
INSERT INTO xm_three_product VALUES('1','image/hongmi4x.png','/index.html'),
                                   ('1','image/xiaomi5.jpg','/index.html'),
                                   ('1','image/pinghengche.jpg','/index.html');

#小米明星单品
CREATE TABLE xm_star_product(
    sid INT NOT NULL,
    img VARCHAR(128),
    title VARCHAR(16),
    content VARCHAR(128),
    price VARCHAR(16)
);            
INSERT INTO xm_star_product VALUES('1','image/pinpai1.png','小米MIX','5月9日-21日享花呗12期分期免息','3499元起'), 
('2','image/pinpai2.png','小米5S','5月9日-10日，下单立减200元','1999元'), 
('3','image/pinpai3.png','小米手机5 64G','5月9日-10日，下单立减100元','1799元'), 
('4','image/pinpai4.png','小米电视3s 55英寸','5月9日，下单立减200元','3999元'), 
('5','image/pinpai5.png','小米笔记本','更轻更薄，像杂志一样随身携带','3599元起');

#配件
CREATE TABLE xm_peijian(
    pid INT NOT NULL,
    img VARCHAR(128),
    content VARCHAR(128),
    price VARCHAR(8),
    comment VARCHAR(8),
    hide_comment VARCHAR(128)
) ;
INSERT INTO xm_peijian VALUES('1','image/peijian1.jpg',NULL,NULL,NULL,NULL),
('2','image/peijian2.jpg','小米6 硅胶保护套','49元','372人评价','发货速度很快！很配小米6!来至于mi狼牙的评价'),
('3','image/peijian3.jpg','小米手机4c 小米4c 智能','29元','372人评价',NULL),
('4','image/peijian4.jpg','红米NOTE 4X 红米note4X','19元','372人评价','发货速度很快！很配小米6!来至于mi狼牙的评价'),
('5','image/peijian5.jpg','小米支架式自拍杆','89元','372人评价','发货速度很快！很配小米6!来至于mi狼牙的评价'),
('6','image/peijian6.jpg',NULL,NULL,NULL,NULL),
('7','image/peijian7.jpg','小米指环支架','19元','372人评价','发货速度很快！很配小米6!来至于mi狼牙的评价'),
('8','image/peijian8.jpg','米家随身风扇','19.9元','372人评价',NULL),
('9','image/peijian9.jpg','红米4X 高透软胶保护套','59元','775人评价',NULL),
('10','image/hongmin4.png',NULL,NULL,NULL,NULL);

#用户表
CREATE TABLE xm_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    phone VARCHAR(11),
    upwd VARCHAR(32),
    signature VARCHAR(128),
    hobby VARCHAR(64),
    email VARCHAR(64),
    address VARCHAR(128)
);
INSERT  INTO xm_user VALUES('1','dingding','17620313904','123456','丁丁历险记','游戏,音乐','110@qq.com','深圳市南山区');