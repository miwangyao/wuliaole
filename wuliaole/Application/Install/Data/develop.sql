SET FOREIGN_KEY_CHECKS = 0;

--
-- 首页幻灯片模型
--
CREATE TABLE `slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `image` int(10) unsigned NOT NULL COMMENT '图片',
  `level` int(10) unsigned NOT NULL COMMENT '排序',
  `description` text NOT NULL COMMENT '描述',
  `link` varchar(255) NOT NULL COMMENT '订购链接',
  `position` char(50) NOT NULL DEFAULT 'left' COMMENT '内容位置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `model` VALUES (1100,'slide','幻灯片',0,'',1,'{\"1\":[\"1101\",\"1102\",\"1103\",\"1104\",\"1105\",\"1106\"]}','1:基础','','','','','id:编号\r\ntitle:标题\r\nimage:图片\r\ndescription:描述\r\nlink:订购链接\r\nlevel:排序',10,'','',1420438352,1424018624,1,'MyISAM');

INSERT INTO `attribute` VALUES
  (1101,'title','标题','varchar(255) NOT NULL','string','','',1,'',1100,1,1,1420438379,1420438379,'',3,'','regex','',3,'function'),
  (1102,'image','图片','int(10) UNSIGNED NOT NULL','picture','','请上传1920x600像素的图片',1,'',1100,1,1,1420458191,1420458191,'',3,'','regex','',3,'function'),
  (1103,'description','描述','text NOT NULL','textarea','','',1,'',1100,1,1,1424018241,1424018241,'',3,'','regex','',3,'function'),
  (1104,'link','订购链接','varchar(255) NOT NULL','string','','',1,'',1100,1,1,1424018350,1424018350,'',3,'','regex','',3,'function'),
  (1105,'position','内容位置','char(50) NOT NULL','select','left','',1,'left:左\r\ncenter:中\r\nright:右',1100,1,1,1424018531,1424018531,'',3,'','regex','',3,'function'),
  (1106,'level','排序','int(10) UNSIGNED NOT NULL','num','0','',1,'',1100,0,1,1420612173,1420612173,'',3,'','regex','',3,'function');

--
-- 新闻模型
--
DROP TABLE IF EXISTS `document_news`;
CREATE TABLE `document_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` text NOT NULL COMMENT '内容',
  `relation` text NOT NULL COMMENT '相关新闻',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `model` VALUES (1200,'news','新闻',1,'',1,'{"1":["3","9","5","1201","19","1202"],"2":["2","9","10","11","14","12","17","13","20","16"]}','1:基础,2:扩展','','','','','id:编号\r\ntitle:标题:/Home/News/detail/id/[id].html',10,'','',1420439221,1420439621,1,'MyISAM');

INSERT INTO `attribute` VALUES
  (1201,'content','内容','text NOT NULL','editor','','',1,'',1200,1,1,1420439409,1420439409,'',3,'','regex','',3,'function'),
  (1202,'relation','相关新闻','text NOT NULL','string','','',1,'',1200,0,1,1420612173,1420612173,'',3,'','regex','',3,'function');


--
-- 首页分类设置
--
INSERT INTO `category` VALUES
  (100,'index','首页',0,0,10,'','','','','','','','','1',0,0,1,1,0,'','',1420439663,1420439663,1,0),
  (110,'slide','幻灯片',100,0,10,'','','','','','','','1100','3',0,1,1,1,0,'','',1420439883,1420439883,1,0);




--
-- 关于我们模型
--
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `model` VALUES (6000,'about','关于我们',0,'',1,'{\"1\":[\"6001\",\"6002\"]}','1:基础','','','','','id:编号\r\nname:名称\r\ncontent:内容',10,'','',1420461753,1420598103,1,'MyISAM');

INSERT INTO `attribute` VALUES
  (6001,'name','名称','varchar(255) NOT NULL','string','','',1,'',6000,1,1,1420438379,1420438379,'',3,'','regex','',3,'function'),
  (6002,'content','内容','text NOT NULL','editor','','',1,'',6000,0,1,1420438489,1420438489,'',3,'','regex','',3,'function');


--
-- 体验中心分类设置
--
INSERT INTO `category` VALUES
  (600,'about','关于我们',0,0,10,'','','','','','','','6000','3',0,1,1,1,0,'','',1420439663,1420439663,1,0);






