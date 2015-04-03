SET FOREIGN_KEY_CHECKS = 0;

drop table if exists `Wluser`;
CREATE TABLE `Wluser`(
  `uId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uName` varchar(48) NOT NULL COMMENT '用户名',
  `uNickName` VARCHAR(48) NOT NULL COMMENT '昵称',
  `uPhoneNum` VARCHAR(11) NOT NULL COMMENT '电话',
  `uPassword` VARCHAR(48) NOT NULL COMMENT '密码',
  `uGender` VARCHAR(4) NOT NULL COMMENT '性别',
  `uAge` INT(2) NOT NULL COMMENT '年龄',
  `uMoment` text NOT NULL COMMENT '心态内容',
  `uRight` INT(3) NOT NULL COMMENT '用户权限',
  `uLocation` VARCHAR(255) NOT NULL COMMENT '用户位置',
  `uCreateTime` TIMESTAMP NOT NULL COMMENT '创建时间',
  `uUpdateTime` TIMESTAMP NOT NULL COMMENT '更新时间',
  `uStatus` INT(2) NOT NULL COMMENT '用户状态',
  PRIMARY KEY (`uId`),
  UNIQUE KEY (`uName`),
  UNIQUE KEY (`uPhoneNum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



INSERT INTO `model` VALUES (10000,'Wluser','无聊用户管理',0,'',1,'{\"1\":[\"10001\",\"10002\",\"10003","10004",\"10005"\,"10006",\"10007"]}','1:基础','','','','','id:编号\r\nuId:用户id\r\nuName:用户名\r\nuNickName:用户昵称\r\nuPhoneNum:用户号码\r\nuGender:用户性别\r\nuAge:用户年龄\r\nuCreateTime:创建时间',10,'','',1420461753,1420598103,1,'MyISAM');

INSERT INTO `attribute` VALUES
  (10001,'uId','用户id','int(10) NOT NULL','string','','',1,'',10000,1,1,1420438379,1420438379,'',3,'','regex','',3,'function'),
  (10002,'uName','用户名','varchar(48) NOT NULL','string','','',1,'',10000,1,1,1420438379,1420438379,'',3,'','regex','',3,'function'),
  (10003,'uNickName','用户昵称','varchar(48) NOT NULL','string','','',1,'',10000,1,1,1420438379,1420438379,'',3,'','regex','',3,'function'),
  (10004,'uPhoneNum','用户号码','varchar(11) NOT NULL','string','','',1,'',10000,1,1,1420438379,1420438379,'',3,'','regex','',3,'function'),
  (10005,'uGender','用户性别','varchar(4) NOT NULL','string','','',1,'',10000,1,1,1420438379,1420438379,'',3,'','regex','',3,'function'),
  (10006,'uAge','用户年龄','int(2) NOT NULL','string','','',1,'',10000,0,1,1420438489,1420438489,'',3,'','regex','',3,'function'),
  (10007,'uCreateTime','创建时间','TIMESTAMP NOT NULL','string','','',1,'',10000,1,1,1420438379,1420438379,'',3,'','regex','',3,'function');

INSERT INTO `category` VALUES
  (20000,'Wluser','无聊用户管理',0,0,10,'','','','','','','','10000','3',0,1,1,1,0,'','',1420439663,1420439663,1,0);






DROP TABLE if EXISTS `WL_User_Contacts`;
CREATE TABLE `WL_User_Contacts`(
  `ucId` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `uId` INT(10) NOT NULL,
  `ucUId` INT(2) NOT NULL COMMENT '联系的uId',
  `uCreateTime` TIMESTAMP NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`ucId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

DROP TABLE if EXISTS `WL_Right`;
CREATE TABLE `WL_Right`(
  `rId` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `uId` INT(10) NOT NULL,
  `rLocation` INT(2) NOT NULL COMMENT '1和 0. 支持和不支持	是否允许获取位置服务',
  `rImage` INT(2) NOT NULL COMMENT '1和 0. 支持和不支持	是否允许获取本地相册',
  `rCamera` INT(2) NOT NULL COMMENT '1和 0. 支持和不支持	是否允许使用照相机',
  PRIMARY KEY (`rId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;






DROP TABLE if EXISTS `WL_Right`;
CREATE TABLE `WL_Right`(
  `rId` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `uId` INT(10) NOT NULL,
  `rLocation` INT(2) NOT NULL COMMENT '1和 0. 支持和不支持	是否允许获取位置服务',
  `rImage` INT(2) NOT NULL COMMENT '1和 0. 支持和不支持	是否允许获取本地相册',
  `rCamera` INT(2) NOT NULL COMMENT '1和 0. 支持和不支持	是否允许使用照相机',
  PRIMARY KEY (`rId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



DROP TABLE if EXISTS `WL_Content_Moment`;
CREATE TABLE `WL_Content_Moment`(
  `cmId` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `uId` INT(10) NOT NULL,
  `cmMoment` text NOT NULL COMMENT '发布信息的类容',
  `cmCreateTime` TIMESTAMP NOT NULL,
  `cmStatus` INT(2) NOT NULL COMMENT '1和 0. 可用和不可用',
  `etId` INT(2) NOT NULL COMMENT '发布内容动态的类型	对应emotion_type表',
  `mcKey` INT(10) NOT NULL COMMENT '动态的评论key	对应评论表',
  `mlKey` INT(10) NOT NULL COMMENT '动态的点赞key	对应点赞表',
  PRIMARY KEY (`cmId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;




DROP TABLE if EXISTS `WL_Image_Moment`;
CREATE TABLE `WL_Image_Moment`(
  `imId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uId` INT(10) NOT NULL,
  `imMoment` text NOT NULL,
  `imImage1` VARCHAR(255) NOT NULL,
  `imImage2` VARCHAR(255) NOT NULL,
  `imImage3` VARCHAR(255) NOT NULL,
  `imImage4` VARCHAR(255) NOT NULL,
  `imImage5` VARCHAR(255) NOT NULL,
  `imImage6` VARCHAR(255) NOT NULL,
  `imCreateTime` TIMESTAMP  NOT NULL,
  `etId` INT(2) NOT NULL COMMENT '发布图片动态的类型	',
  `imStatus` INT(2) NOT NULL COMMENT '1 和 0， 可用和不可用',
  `mcKey` INT(10) NOT NULL COMMENT '动态的评论key	对应评论表',
  `mlKey` INT(10) NOT NULL COMMENT '动态的点赞key	对应点赞表',
  PRIMARY KEY (`imId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



DROP TABLE if EXISTS `WL_Moment_Comments`;
CREATE TABLE `WL_Moment_Comments`(
  `mcId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mcKey` INT(10) NOT NULL,
  `mcPerson` INT(10) NOT NULL COMMENT "评论人的uId	",
  `mcReceiver` INT(10) NOT NULL COMMENT "被评论人的uId	",
  `mcContent` text NOT NULL COMMENT '评论信息',
  `mcCreateTime` TIMESTAMP  NOT NULL,
  PRIMARY KEY (`mcId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



DROP TABLE if EXISTS `WL_Moment_Like`;
CREATE TABLE `WL_Moment_Like`(
  `mlId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mlKey` INT(10) NOT NULL,
  `mlPerson` INT(10) NOT NULL COMMENT "点赞人的uId",
  `mlCreateTime` TIMESTAMP  NOT NULL,
  PRIMARY KEY (`mlId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;





DROP TABLE if EXISTS `WL_Emotion_Type`;
CREATE TABLE `WL_Emotion_Type`(
  `etId` INT(2) unsigned NOT NULL AUTO_INCREMENT,
  `etType` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`etId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;




DROP TABLE if EXISTS `WL_Login_Log`;
CREATE TABLE `WL_Login_Log`(
  `lgId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lgPhoneNum` VARCHAR(11) NOT NULL,
  `lgName` VARCHAR(48) NOT NULL,
  `lgAge` INT(2) NOT NULL,
  `lgPhoneType` VARCHAR(48) NOT NULL,
  `lgLocation` VARCHAR(255) NOT NULL,
  `lgAppVersion` VARCHAR(48) NOT NULL,
  `lgSys` VARCHAR(48) NOT NULL,
  `lgDate` TIMESTAMP NOT NULL,
  PRIMARY KEY (`lgId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



DROP TABLE if EXISTS `WL_Picture`;
CREATE TABLE `WL_Picture`(
  `pId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pPath` VARCHAR(255) NOT NULL COMMENT '图片名称保存方式： ／images/用户id/图片类型/时间数字.png/gif',
  `pType` INT(2) NOT NULL COMMENT '1 动态图片,2 头像图片,3 聊天图片	',
  `uId` INT(10) NOT NULL,
  `pDate` TIMESTAMP NOT NULL COMMENT '时间的存储都是采用： date + zone',
  PRIMARY KEY (`pId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



DROP TABLE if EXISTS `WL_Verification`;
CREATE TABLE `WL_Verification`(
  `vId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vPhonenum` VARCHAR(111) NOT NULL,
  `vCode` VARCHAR(11) NOT NULL,
  `vSendTime` TIMESTAMP NOT NULL,
  `vVerifyTime` TIMESTAMP NOT NULL,
  `vStatus` INT(2) NOT NULL COMMENT '0 未验证， 1 验证成功， －1验证失败',
  PRIMARY KEY (`vId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE if EXISTS `WL_Log_Request`;
CREATE TABLE `WL_Log_Request`(
  `lrId` INT(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lrUrl` VARCHAR(255) NOT NULL,
  `lrParams` text NOT NULL,
  `lrType` VARCHAR(255) NOT NULL,
  `lsIp` VARCHAR(255) NOT NULL,
  `lrDevice` VARCHAR(255) NOT NULL,
  `lrStatus` INT(2) NOT NULL COMMENT '1成功 0失败	',
  `lsResponse` INT(2) NOT NULL COMMENT '1成功 0失败',
  PRIMARY KEY (`lrId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
