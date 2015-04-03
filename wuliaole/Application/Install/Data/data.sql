SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM `document` WHERE `id` != 0;
DELETE FROM `category` WHERE `id` IN (1,2);
DROP TABLE IF EXISTS `document_download`;
DROP TABLE IF EXISTS `document_article`;
DELETE FROM `model` WHERE `id` IN (2,3);


INSERT INTO `slide` (`id`,`title`,`image`,`level`,`description`,`link`,`position`) VALUES
  (1,'CM系列',1001,0,'美妙声音。全新的CM系列现已配备退藕双顶高音单元、提升了内部组件和精巧制作的木质箱体。在美妙的声音、无瑕疵的设计下优雅重生','','center'),
  (2,'随身Hi-Fi',1002,0,'T7 Bluetooth 扬声器的尺寸完美适合卧室、厨房和花园，它是我们迄今为止最轻便、用途最广泛的无线系统。','','right'),
  (3,'800 Series Diamond',1003,0,'深受专业录音室的青睐及严谨的hi-fi发烧友的尊崇，800 Series Diamond钻石系列不仅是我们旗舰扬声器系列的指标，它是hi-fi扬声器表现的巅峰之作。','http://account.wh.silkcloud.cn/checkout/buy/68943872','left');

INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (1001,'/Public/static/imgdata/index-slide-1.jpg','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (1002,'/Public/static/imgdata/index-slide-2.jpg','','59ec7cfebcb58b3b04b4f771b04d8a16','2835f8a17e66fe9124dc582bba063226d290184b',1,1420708529);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (1003,'/Public/static/imgdata/index-slide-3.jpg','','3c52c3b4c1a495886efa5e0f7407edd6','02285e269f9b5e66362a295c17b6a618e61aaeeb',1,1420708549);



INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6001,'/Public/static/imgdata/weihong.jpg','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6003,'/Public/static/imgdata/weihong.jpg','','59ec7cfebcb58b3b04b4f771b04d8a16','2835f8a17e66fe9124dc582bba063226d290184b',1,1420708529);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6003,'/Public/static/imgdata/marantz.jpg','','3c52c3b4c1a495886efa5e0f7407edd6','02285e269f9b5e66362a295c17b6a618e61aaeeb',1,1420708549);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6004,'/Public/static/imgdata/mfidgrey.jpg','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6005,'/Public/static/imgdata/harbeth.jpg','','59ec7cfebcb58b3b04b4f771b04d8a16','2835f8a17e66fe9124dc582bba063226d290184b',1,1420708529);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6006,'/Public/static/imgdata/passlabs.jpg','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6007,'/Public/static/imgdata/arcam.jpg','','59ec7cfebcb58b3b04b4f771b04d8a16','2835f8a17e66fe9124dc582bba063226d290184b',1,1420708529);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6008,'/Public/static/imgdata/elac.jpg','','3c52c3b4c1a495886efa5e0f7407edd6','02285e269f9b5e66362a295c17b6a618e61aaeeb',1,1420708549);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6009,'/Public/static/imgdata/pmc.jpg','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6010,'/Public/static/imgdata/opera.jpg','','59ec7cfebcb58b3b04b4f771b04d8a16','2835f8a17e66fe9124dc582bba063226d290184b',1,1420708529);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6011,'/Public/static/imgdata/shengya.jpg','','3c52c3b4c1a495886efa5e0f7407edd6','02285e269f9b5e66362a295c17b6a618e61aaeeb',1,1420708549);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6012,'/Public/static/imgdata/danaudio.jpg','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (6013,'/Public/static/imgdata/accusticarts.jpg','','59ec7cfebcb58b3b04b4f771b04d8a16','2835f8a17e66fe9124dc582bba063226d290184b',1,1420708529);



INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (2301,'/Public/static/imgdata/product-promo-1.jpg','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (2302,'/Public/static/imgdata/product-promo-2.jpg','','59ec7cfebcb58b3b04b4f771b04d8a16','2835f8a17e66fe9124dc582bba063226d290184b',1,1420708529);
INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (2303,'/Public/static/imgdata/product-promo-3.jpg','','3c52c3b4c1a495886efa5e0f7407edd6','02285e269f9b5e66362a295c17b6a618e61aaeeb',1,1420708549);



INSERT INTO `about` (`id`,`name`,`content`) VALUES (1, '关于威虹', '<div class=''content''><p>HIFIDIY网站建立在有九省通衢美称的武汉,地处中国中心地带!<br><br>HIFIDIY.NET成立于2004年3月26号，HIFIDIY的建立目的是希望能成为大家的共同交流学习的音响DIY之家，旨在共同提高大家的DIY制作水平，HIFIDIY的目标是希望能建立成为华人区最大的音响DIY网站论坛，进而影响中国音响，为中国音响的发展贡献一份力量！<br><br>HIFIDIY网站目前有一个团结的发展团队，拥有遍布全球的众多会员，在未来的时间我们将致力主导资源和技术全球化，我们会在发展过程中坚持求实、执着、创新理念，以高要求设计音响产品普及于大众！<br><br>在我们的发展过程中我们深深体会到：一个国家的基础工业发达才能带动整个行业的进步！我们尝试进行了一些突破性的设计和支持基础工业的行动！HIFIDIY会努力让不可能变为现实！——我们相信我们在将来会创造更多的奇迹！</p><p><br>期待所有的DIYER加入我们共同的音响DIY大家庭！为中国音响腾飞而共同致力！</p><p><br>发挥您的想象力，展现您的创造力，经典将在我们的手中诞生！——HIFIDIY</p><p>&nbsp;</p><p>　　HIFIDIY大事记：</p><p><br>1)2004年3月26号开通HIFIDIY.NET论坛<br>2)2004年3月举行第一次举行NOS版本TDA1543 DAC团购<br>3)2004年5月推出GCLM3875功放,后续连续推出GC3886,GC4780<br>4)2004年8月推出TDA1543 DAC第二版套件<br>5)2004年11月推出A501音箱,推出音箱测量套件,同时举行PASS ZEN4团购<br>6)2005年1月进行第一次论坛程序升级<br>7)2005年3月第一次使用动态主页系统<br>8)2005年连续推出OP+BUF前级,时钟套件,TDA1541电子第一版DAC<br></p></div>');


INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (4001,'/Public/static/imgdata/store-1.png','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
-- INSERT INTO `picture` (`id`,`path`,`url`,`md5`,`sha1`,`status`,`create_time`) VALUES (4002,'/Public/static/imgdata/store-1.png','','4cc1093cbf82719cd991a0d17aed1a01','a8693ae0c9a21a44ecec1885b22d0e9dfa9ebc4f',1,1420708500);
