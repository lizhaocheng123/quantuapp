SET NAMES UTF8;
DROP DATABASE IF EXISTS app;
CREATE DATABASE app CHARSET=UTF8;
USE app;
CREATE TABLE app_home(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(128),
    title VARCHAR(128)
);

INSERT INTO app_home VALUES
('NUll','http://127.0.0.1:5000/img/true (6).jpg','简约白色高端大气圣诞海报'),
('NUll','http://127.0.0.1:5000/img/true (7).jpg','信纸风感恩节玫瑰花感恩节海报感恩的心'),
('NUll','http://127.0.0.1:5000/img/true (8).jpg','红黑极简总结汇报通用PPT免费模板'),
('NUll','http://127.0.0.1:5000/img/true (10).jpg','2018年世界慢阻肺日公益宣传海报'),
('NUll','http://127.0.0.1:5000/img/true (12).jpg','24节气小雪夕阳雪景手机用图'),
('NUll','http://127.0.0.1:5000/img/true (11).jpg','立体空间感恩节背景'),
('NUll','http://127.0.0.1:5000/img/true.png','京东双11双十一首页迷彩渐变立体几何页面首页大促'),
("NUll","http://127.0.0.1:5000/img/true (1).jpg","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true.jpg","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true (2).jpg","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true (3).jpg","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true (4).jpg","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true (5).jpg","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(4)","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(5)","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true.jpg","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(6)","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(7)","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(9)","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(10)","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(11)","京东双11双十一首页迷彩渐变立体几何页面首页大促"),
("NUll","http://127.0.0.1:5000/img/true(5)","京东双11双十一首页迷彩渐变立体几何页面首页大促");


CREATE TABLE app_news(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(128),
    ctime DATETIME,
    img_url VARCHAR(128)
);

INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/shuijue.jpg");
INSERT INTO app_news VALUES("NULL","i排版网页设计",now(),"http://127.0.0.1:5000/img/cbd.jpg");
INSERT INTO app_news VALUES("NULL","工作中涉及到的主视觉",now(),"http://127.0.0.1:5000/img/muwu.jpg");
INSERT INTO app_news VALUES("NULL","即兴海报",now(),"http://127.0.0.1:5000/img/yuantiao.jpg");
INSERT INTO app_news VALUES("NULL","AI艺术画笔特殊字体设计",now(),"http://127.0.0.1:5000/img/yuantiao.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/cbd.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/yuantiao.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/muwu.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/yuantiao.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/shuijue.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/muwu.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/yuantiao.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/shuijue.jpg");
INSERT INTO app_news VALUES("NULL","Web端项目总结（设计思路）",now(),"http://127.0.0.1:5000/img/cbd.jpg");

CREATE TABLE app_comment(
  id  INT PRIMARY KEY AUTO_INCREMENT,
  content VARCHAR(140),
  ctime   DATETIME,
  user_name VARCHAR(50),
  nid  INT
);

INSERT INTO app_comment VALUES(null,'ha ha1',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha2',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha3',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha4',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha5',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha6',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha7',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha8',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha9',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha10',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha11',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha12',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha13',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha14',now(),'匿名 ',1);
INSERT INTO app_comment VALUES(null,'ha ha15',now(),'匿名 ',1);


CREATE TABLE app_user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(10),
    upwd VARCHAR(8)
);
INSERT INTO app_user VALUES(null,'dingding',123456);
INSERT INTO app_user VALUES(null,'tom',123456);
INSERT INTO app_user VALUES(null,'dangdang',123456);

CREATE TABLE gaoqing(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(128),
    title VARCHAR(128)
);
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/92Q58PICqCs.jpg!qt226","巴黎铁塔镂空手机壳图片");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/71958PICZFt.jpg!qt226","手工勾勒唐卡暗纹");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/59C58PICQHw.jpg!qt226","创意环保主题沙漏");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/12.jpg","宁静致远竖写行书龚宏权书法");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/91h58PIC7X3.jpg!qt226","手绘猫咪");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/23I58PICRHy.jpg!qt226","大熊猫");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/89U58PICxDT.JPG!qt226","淘寶電商情境綠蔭石板植物林蔭小徑首頁");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/02u58PICQDj.jpg!qt226","城市背景");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/59J58PICqgj.jpg!qt226","典雅纸张创意拍摄茶具插画木纹桌");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/62g58PICph5.jpg!qt226","在路上图片");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/59w58PICsRZ.JPG!qt226","淘寶電商風景白雲綠樹植物遠眺草地觀景首頁");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/63m58PICwaB.JPG!qt226","淘寶電商情境風景森林石板路小徑樹木首頁");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/03558PIC86u.JPG!qt226","淘寶電商情境繡球花喜慶植物花卉盆栽首頁");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/54Z58PICtQW.jpg!qt226","26621633");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/39g58PICBV6.jpg!qt226","10张可爱温馨烘焙曲奇饼干大图集");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/44V58PICPEz.jpg!qt226","水彩猫头鹰插画");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/17W58PIC3xP.jpg!qt226","水彩狗头像插画");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/88i58PICSIA.jpg!qt226","唐人街");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/43v58PICHsn.jpg!qt226","上善若水");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/72N58PICgz5.JPG!qt226","新加坡PRIVE bar");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/82F58PICnsC.jpg!qt226","山水背景");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/59458PICFnS.jpg!qt226","苏州静思园");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/48458PICYcR.jpg!qt226","树下的椅子与小鸡图图片");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/72R58PICEHf.jpg!qt226","黑白建筑风景艺术装饰画");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/47N58PICSmi.jpg!qt226","怒江水寨与永平交界处");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/57J58PICg7I.jpg!qt226","原创手工花瓶木工");
INSERT INTO gaoqing VALUES(null,"http://127.0.0.1:5000/img/38G58PICDzm.JPG!qt226","城市的夜景");
