-- CLTPHP SQL Backup
-- Time:2018-07-04 18:56:04
-- http://www.cltphp.com 

--
-- 表的结构 `clt_ad`
-- 
DROP TABLE IF EXISTS `clt_ad`;
CREATE TABLE `clt_ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告名称',
  `type_id` tinyint(5) NOT NULL COMMENT '所属位置',
  `pic` varchar(200) NOT NULL DEFAULT '' COMMENT '广告图片URL',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '广告链接',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `sort` int(11) NOT NULL COMMENT '排序',
  `open` tinyint(2) NOT NULL COMMENT '1=审核  0=未审核',
  `content` text COMMENT '广告内容',
  PRIMARY KEY (`ad_id`) ,
  KEY `plug_ad_adtypeid` (`type_id`) 
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- 
-- 导出`clt_ad`表中的数据 `clt_ad`
--
INSERT INTO `clt_ad` VALUES ('35','耐用性','10','/uploads/20180225/6e54ca3557dea3dbc707666bf5adf4c2.png','http://demo.111.com','1519566817','50','1','<p>\n                      <span>令人惊艳的是David Flynn不会随时间而硬化或老化。它能保持其弹性和力学特性。为什么？这种创新的材料完全没有挥发性物质。它的组成部分不能分解或移动，所以它不会损坏。实际上，测试已经证明David Flynn能<span>承受超过</span>300,000<span>次压力冲击而不发生影响性能的变形。这就是持久的舒适！</span></span>\n                    </p>');
INSERT INTO `clt_ad` VALUES ('36','变形性','10','/uploads/20180225/afdb50bc3a6f573f9b9cc25539ffb7c1.png','http://demo.222.com','1519566904','50','1','<p>\n                      <span>和海绵不同，David Flynn能三维变形（上/下、右/左、等等），按照您的身体结构模塑自己并在整个接触表面上均匀分布压力。它能显著减少尖峰压力从而改善血液循环。內部测验证明了普通海绵床垫与加上David Flynn层的相同海绵床垫的压力分布差距。感觉就是相信！</span>\n                    </p>');
INSERT INTO `clt_ad` VALUES ('37','枕头','11','/uploads/20180225/dea4d0ee1db78e5e6a22e9bc010aef0e.png','http://demo.444.com','1519566983','2014','1','当David Flynn不断为工业领域增添价值时，我们推出了第一条自有品牌产品线David Flynn Sleeping，它令人恢复活力的优点革新了夜晚（以及白天！）。');
INSERT INTO `clt_ad` VALUES ('38','样车','11','/uploads/20180225/b5e8cb4dc10dbbc97fbf3d7847059491.png','http://demo.555.com','1519567046','2016','1','汽车设计师和建造商正在利用David Flynn的力量打造奢华舒适且更加时尚的汽车内饰。');
--
-- 表的结构 `clt_ad_type`
-- 
DROP TABLE IF EXISTS `clt_ad_type`;
CREATE TABLE `clt_ad_type` (
  `type_id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `sort` int(11) NOT NULL COMMENT '广告位排序',
  PRIMARY KEY (`type_id`) 
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='广告分类';

-- 
-- 导出`clt_ad_type`表中的数据 `clt_ad_type`
--
INSERT INTO `clt_ad_type` VALUES ('10','关于-第三行区域','50');
INSERT INTO `clt_ad_type` VALUES ('11','关于-第四行区域','51');
--
-- 表的结构 `clt_admin`
-- 
DROP TABLE IF EXISTS `clt_admin`;
CREATE TABLE `clt_admin` (
  `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `pwd` varchar(70) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `is_open` tinyint(2) DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`admin_id`) ,
  KEY `admin_username` (`username`) 
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- 
-- 导出`clt_admin`表中的数据 `clt_admin`
--
INSERT INTO `clt_admin` VALUES ('1','admin','0192023a7bbd73250516f069df18b500','1','1109305987@qq.com','','18792402229','127.0.0.1','1482132862','0','1');
INSERT INTO `clt_admin` VALUES ('8','毛豆豆','e10adc3949ba59abbe56e057f20f883e','2','8234738438@qq.com','0','18767654897','127.0.0.1','1498815814','0','1');
--
-- 表的结构 `clt_auth_group`
-- 
DROP TABLE IF EXISTS `clt_auth_group`;
CREATE TABLE `clt_auth_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '全新ID',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`group_id`) 
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员分组';

-- 
-- 导出`clt_auth_group`表中的数据 `clt_auth_group`
--
INSERT INTO `clt_auth_group` VALUES ('1','超级管理员','1','0,1,2,270,15,16,119,120,121,145,17,149,116,117,118,151,181,18,108,114,112,109,110,111,3,5,126,127,128,4,230,232,129,189,190,193,192,240,239,241,243,244,245,242,246,7,9,14,234,13,235,236,237,238,27,29,161,163,164,162,38,167,182,169,166,28,48,247,248,31,32,249,250,251,45,170,171,175,174,173,46,176,183,179,178,265,274,196,197,202,198,252,253,254,255,256,203,205,204,257,272,206,207,212,208,213,258,259,260,261,262,209,215,214,263,273,267,269,','1465114224');
INSERT INTO `clt_auth_group` VALUES ('2','管理员','1','1,15,16,120,146,40,41,7,8,12,139,11,136,154,137,138,135,25,140,141,142,9,13,157,158,159,160,155,14,156,27,29,37,161,163,164,162,38,167,182,168,169,165,166,35,36,39,28,31,32,33,34,44,45,170,171,172,173,174,175,46,176,183,177,178,179,48,49,','1465114224');
INSERT INTO `clt_auth_group` VALUES ('3','商品管理员','1','27,29,37,161,163,164,162,38,167,182,168,169,165,166,','1465114224');
--
-- 表的结构 `clt_auth_rule`
-- 
DROP TABLE IF EXISTS `clt_auth_rule`;
CREATE TABLE `clt_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `href` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `authopen` tinyint(2) NOT NULL DEFAULT '1',
  `icon` varchar(20) DEFAULT NULL COMMENT '样式',
  `condition` char(100) DEFAULT '',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `zt` int(1) DEFAULT NULL,
  `menustatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COMMENT='权限节点';

-- 
-- 导出`clt_auth_rule`表中的数据 `clt_auth_rule`
--
INSERT INTO `clt_auth_rule` VALUES ('1','System','系统设置','1','1','0','icon-cogs','','0','0','1446535750','1','1');
INSERT INTO `clt_auth_rule` VALUES ('2','System/system','系统设置','1','1','0','','','1','1','1446535789','1','1');
INSERT INTO `clt_auth_rule` VALUES ('3','Database/database','数据库管理','1','1','0','icon-database','','0','2','1446535805','1','1');
INSERT INTO `clt_auth_rule` VALUES ('4','Database/restore','还原数据库','1','1','0','','','3','10','1446535750','1','1');
INSERT INTO `clt_auth_rule` VALUES ('5','Database/database','数据库备份','1','1','0','','','3','1','1446535834','1','1');
INSERT INTO `clt_auth_rule` VALUES ('7','Category','栏目管理','1','1','0','icon-list','','0','4','1446535875','1','1');
INSERT INTO `clt_auth_rule` VALUES ('9','Category/index','栏目列表','1','1','0','','','7','0','1446535750','1','1');
INSERT INTO `clt_auth_rule` VALUES ('13','Category/edit','操作-修改','1','1','0','','','9','3','1446535750','1','0');
INSERT INTO `clt_auth_rule` VALUES ('14','Category/add','操作-添加','1','1','0','','','9','0','1446535750','1','0');
INSERT INTO `clt_auth_rule` VALUES ('15','Auth/adminList','权限管理','1','1','0','icon-lifebuoy','','0','1','1446535750','1','1');
INSERT INTO `clt_auth_rule` VALUES ('16','Auth/adminList','管理员列表','1','1','0','','','15','0','1446535750','1','1');
INSERT INTO `clt_auth_rule` VALUES ('17','Auth/adminGroup','用户组列表','1','1','0','','','15','1','1446535750','1','1');
INSERT INTO `clt_auth_rule` VALUES ('18','Auth/adminRule','权限管理','1','1','0','','','15','2','1446535750','1','1');
INSERT INTO `clt_auth_rule` VALUES ('23','Help/soft','软件下载','1','1','0','','','22','50','1446711421','0','1');
INSERT INTO `clt_auth_rule` VALUES ('27','Users','会员管理','1','1','0','icon-user','','0','5','1447231507','1','0');
INSERT INTO `clt_auth_rule` VALUES ('28','Function','网站功能','1','1','0','icon-cog','','0','6','1447231590','1','1');
INSERT INTO `clt_auth_rule` VALUES ('29','Users/index','会员列表','1','1','0','','','27','10','1447232085','1','1');
INSERT INTO `clt_auth_rule` VALUES ('31','Link/index','友情链接','1','1','0','','','28','2','1447232183','0','1');
INSERT INTO `clt_auth_rule` VALUES ('32','Link/add','操作-添加','1','1','0','','','31','1','1447639935','0','0');
INSERT INTO `clt_auth_rule` VALUES ('36','We/we_menu','自定义菜单','1','1','0','','','35','50','1447842477','0','1');
INSERT INTO `clt_auth_rule` VALUES ('38','Users/userGroup','会员组','1','1','0','','','27','50','1448413248','1','1');
INSERT INTO `clt_auth_rule` VALUES ('39','We/we_menu','自定义菜单','1','1','0','','','36','50','1448501584','0','1');
INSERT INTO `clt_auth_rule` VALUES ('45','Ad/index','广告管理','1','1','0','','','28','3','1450314297','1','1');
INSERT INTO `clt_auth_rule` VALUES ('46','Ad/type','广告位管理','1','1','0','','','28','4','1450314324','1','1');
INSERT INTO `clt_auth_rule` VALUES ('48','Message/index','留言管理','1','1','0','','','28','1','1451267354','0','1');
INSERT INTO `clt_auth_rule` VALUES ('105','System/runsys','操作-保存','1','1','0','','','6','50','1461036331','1','0');
INSERT INTO `clt_auth_rule` VALUES ('106','System/runwesys','操作-保存','1','1','0','','','10','50','1461037680','0','0');
INSERT INTO `clt_auth_rule` VALUES ('107','System/runemail','操作-保存','1','1','0','','','19','50','1461039346','1','0');
INSERT INTO `clt_auth_rule` VALUES ('108','Auth/ruleAdd','操作-添加','1','1','0','','','18','0','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('109','Auth/ruleState','操作-状态','1','1','0','','','18','5','1461550949','1','0');
INSERT INTO `clt_auth_rule` VALUES ('110','Auth/ruleTz','操作-验证','1','1','0','','','18','6','1461551129','1','0');
INSERT INTO `clt_auth_rule` VALUES ('111','Auth/ruleorder','操作-排序','1','1','0','','','18','7','1461551263','1','0');
INSERT INTO `clt_auth_rule` VALUES ('112','Auth/ruleDel','操作-删除','1','1','0','','','18','4','1461551536','1','0');
INSERT INTO `clt_auth_rule` VALUES ('114','Auth/ruleEdit','操作-修改','1','1','0','','','18','2','1461551913','1','0');
INSERT INTO `clt_auth_rule` VALUES ('116','Auth/groupEdit','操作-修改','1','1','0','','','17','3','1461552326','1','0');
INSERT INTO `clt_auth_rule` VALUES ('117','Auth/groupDel','操作-删除','1','1','0','','','17','30','1461552349','1','0');
INSERT INTO `clt_auth_rule` VALUES ('118','Auth/groupAccess','操作-权限','1','1','0','','','17','40','1461552404','1','0');
INSERT INTO `clt_auth_rule` VALUES ('119','Auth/adminAdd','操作-添加','1','1','0','','','16','0','1461553162','1','0');
INSERT INTO `clt_auth_rule` VALUES ('120','Auth/adminEdit','操作-修改','1','1','0','','','16','2','1461554130','1','0');
INSERT INTO `clt_auth_rule` VALUES ('121','Auth/adminDel','操作-删除','1','1','0','','','16','4','1461554152','1','0');
INSERT INTO `clt_auth_rule` VALUES ('122','System/source_runadd','操作-添加','1','1','0','','','43','10','1461036331','1','0');
INSERT INTO `clt_auth_rule` VALUES ('123','System/source_order','操作-排序','1','1','0','','','43','50','1461037680','1','0');
INSERT INTO `clt_auth_rule` VALUES ('124','System/source_runedit','操作-改存','1','1','0','','','43','30','1461039346','1','0');
INSERT INTO `clt_auth_rule` VALUES ('125','System/source_del','操作-删除','1','1','0','','','43','40','146103934','1','0');
INSERT INTO `clt_auth_rule` VALUES ('126','Database/export','操作-备份','1','1','0','','','5','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('127','Database/optimize','操作-优化','1','1','0','','','5','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('128','Database/repair','操作-修复','1','1','0','','','5','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('129','Database/delSqlFiles','操作-删除','1','1','0','','','4','3','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('130','System/bxgs_state','操作-状态','1','1','0','','','67','5','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('131','System/bxgs_edit','操作-修改','1','1','0','','','67','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('132','System/bxgs_runedit','操作-改存','1','1','0','','','67','2','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('134','System/myinfo_runedit','个人资料修改','1','1','0','','','68','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('236','Category/del','操作-删除','1','1','0','','','9','5','1497424900','0','0');
INSERT INTO `clt_auth_rule` VALUES ('230','Database/restoreData','操作-还原','1','1','0','','','4','1','1497423595','0','0');
INSERT INTO `clt_auth_rule` VALUES ('145','Auth/adminState','操作-状态','1','1','0','','','16','5','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('149','Auth/groupAdd','操作-添加','1','1','0','','','17','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('151','Auth/groupRunaccess','操作-权存','1','1','0','','','17','50','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('153','System/bxgs_runadd','操作-添存','1','1','0','','','66','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('234','Category/insert','操作-添存','1','1','0','','','9','2','1497424143','0','0');
INSERT INTO `clt_auth_rule` VALUES ('240','Module/del','操作-删除','1','1','0','','','190','4','1497425850','0','0');
INSERT INTO `clt_auth_rule` VALUES ('239','Module/moduleState','操作-状态','1','1','0','','','190','5','1497425764','0','0');
INSERT INTO `clt_auth_rule` VALUES ('238','page/edit','单页编辑','1','1','0','','','7','2','1497425142','0','0');
INSERT INTO `clt_auth_rule` VALUES ('237','Category/cOrder','操作-排序','1','1','0','','','9','6','1497424979','0','0');
INSERT INTO `clt_auth_rule` VALUES ('161','Users/usersState','操作-状态','1','1','0','','','29','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('162','Users/delall','操作-全部删除','1','1','0','','','29','4','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('163','Users/edit','操作-编辑','1','1','0','','','29','2','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('164','Users/usersDel','操作-删除','1','1','0','','','29','3','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('247','Message/del','操作-删除','1','1','0','','','48','1','1497427449','0','0');
INSERT INTO `clt_auth_rule` VALUES ('166','Users/groupOrder','操作-排序','1','1','0','','','38','50','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('167','Users/groupAdd','操作-添加','1','1','0','','','38','10','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('169','Users/groupDel','操作-删除','1','1','0','','','38','30','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('170','Ad/add','操作-添加','1','1','0','','','45','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('171','Ad/edit','操作-修改','1','1','0','','','45','2','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('173','Ad/del','操作-删除','1','1','0','','','45','5','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('174','Ad/adOrder','操作-排序','1','1','0','','','45','4','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('175','Ad/editState','操作-状态','1','1','0','','','45','3','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('176','Ad/addType','操作-添加','1','1','0','','','46','1','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('252','Template/edit','操作-编辑','1','1','0','','','197','3','1497428906','0','0');
INSERT INTO `clt_auth_rule` VALUES ('178','Ad/delType','操作-删除','1','1','0','','','46','4','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('179','Ad/typeOrder','操作-排序','1','1','0','','','46','3','1461550835','1','0');
INSERT INTO `clt_auth_rule` VALUES ('180','System/source_edit','操作-修改','1','1','0','','','43','20','1461832933','1','0');
INSERT INTO `clt_auth_rule` VALUES ('181','Auth/groupState','操作-状态','1','1','0','','','17','50','1461834340','1','0');
INSERT INTO `clt_auth_rule` VALUES ('182','Users/groupEdit','操作-修改','1','1','0','','','38','15','1461834780','1','0');
INSERT INTO `clt_auth_rule` VALUES ('183','Ad/editType','操作-修改','1','1','0','','','46','2','1461834988','1','0');
INSERT INTO `clt_auth_rule` VALUES ('188','Plug/donation','捐赠列表','1','1','0','','','187','50','1466563673','0','1');
INSERT INTO `clt_auth_rule` VALUES ('189','Module','模型管理','1','1','0','icon-ungroup','','0','3','1466825363','0','1');
INSERT INTO `clt_auth_rule` VALUES ('190','Module/index','模型列表','1','1','0','','','189','1','1466826681','0','1');
INSERT INTO `clt_auth_rule` VALUES ('192','Module/edit','操作-修改','1','1','0','','','190','2','1467007920','0','0');
INSERT INTO `clt_auth_rule` VALUES ('193','Module/add','操作-添加','1','1','0','','','190','1','1467007955','0','0');
INSERT INTO `clt_auth_rule` VALUES ('196','Template','模版管理','1','1','0','icon-embed2','','0','7','1481857304','0','1');
INSERT INTO `clt_auth_rule` VALUES ('197','Template/index','模版管理','1','1','0','','','196','1','1481857540','0','1');
INSERT INTO `clt_auth_rule` VALUES ('198','Template/insert','操作-添存','1','1','0','','','197','2','1481857587','0','0');
INSERT INTO `clt_auth_rule` VALUES ('202','Template/add','操作-添加','1','1','0','','','197','1','1481859447','0','0');
INSERT INTO `clt_auth_rule` VALUES ('203','Debris/index','碎片管理','1','1','0','','','196','2','1484797759','0','1');
INSERT INTO `clt_auth_rule` VALUES ('204','Debris/edit','操作-编辑','1','1','0','','','203','2','1484797849','0','0');
INSERT INTO `clt_auth_rule` VALUES ('205','Debris/add','操作-添加','1','1','0','','','203','1','1484797878','0','0');
INSERT INTO `clt_auth_rule` VALUES ('206','Wechat','微信管理','1','1','0','icon-bubbles2','','0','8','1487063570','0','0');
INSERT INTO `clt_auth_rule` VALUES ('207','Wechat/config','公众号管理','1','1','0','','','206','1','1487063705','0','1');
INSERT INTO `clt_auth_rule` VALUES ('208','Wechat/menu','菜单管理','1','1','0','','','206','2','1487063765','0','1');
INSERT INTO `clt_auth_rule` VALUES ('209','Wechat/materialmessage','消息素材','1','1','0','','','206','3','1487063834','0','1');
INSERT INTO `clt_auth_rule` VALUES ('212','Wechat/weixin','操作-设置','1','1','0','','','207','1','1487064541','0','0');
INSERT INTO `clt_auth_rule` VALUES ('213','Wechat/addMenu','操作-添加','1','1','0','','','208','1','1487149151','0','0');
INSERT INTO `clt_auth_rule` VALUES ('214','Wechat/editText','操作-编辑','1','1','0','','','209','2','1487233984','0','0');
INSERT INTO `clt_auth_rule` VALUES ('215','Wechat/addText','操作-添加','1','1','0','','','209','1','1487234062','0','0');
INSERT INTO `clt_auth_rule` VALUES ('232','Database/downFile','操作-下载','1','1','0','','','4','2','1497423744','0','0');
INSERT INTO `clt_auth_rule` VALUES ('235','Category/catUpdate','操作-该存','1','1','0','','','9','4','1497424301','0','0');
INSERT INTO `clt_auth_rule` VALUES ('241','Module/field','模型字段','1','1','0','','','190','6','1497425972','0','0');
INSERT INTO `clt_auth_rule` VALUES ('242','Module/fieldStatus','操作-状态','1','1','0','','','241','4','1497426044','0','0');
INSERT INTO `clt_auth_rule` VALUES ('243','Module/fieldAdd','操作-添加','1','1','0','','','241','1','1497426089','0','0');
INSERT INTO `clt_auth_rule` VALUES ('244','Module/fieldEdit','操作-修改','1','1','0','','','241','2','1497426134','0','0');
INSERT INTO `clt_auth_rule` VALUES ('245','Module/listOrder','操作-排序','1','1','0','','','241','3','1497426179','0','0');
INSERT INTO `clt_auth_rule` VALUES ('246','Module/fieldDel','操作-删除','1','1','0','','','241','5','1497426241','0','0');
INSERT INTO `clt_auth_rule` VALUES ('248','Message/delall','操作-删除全部','1','1','0','','','48','2','1497427534','0','0');
INSERT INTO `clt_auth_rule` VALUES ('249','Link/edit','操作-编辑','1','1','0','','','31','2','1497427694','0','0');
INSERT INTO `clt_auth_rule` VALUES ('250','Link/linkState','操作-状态','1','1','0','','','31','3','1497427734','0','0');
INSERT INTO `clt_auth_rule` VALUES ('251','Link/del','操作-删除','1','1','0','','','31','4','1497427780','0','0');
INSERT INTO `clt_auth_rule` VALUES ('253','Template/update','操作-改存','1','1','0','','','197','4','1497428951','0','0');
INSERT INTO `clt_auth_rule` VALUES ('254','Template/delete','操作-删除','1','1','0','','','197','5','1497429018','0','0');
INSERT INTO `clt_auth_rule` VALUES ('255','Template/images','媒体文件管理','1','1','0','','','197','6','1497429157','0','0');
INSERT INTO `clt_auth_rule` VALUES ('256','Template/imgDel','操作-文件删除','1','1','0','','','255','1','1497429217','0','0');
INSERT INTO `clt_auth_rule` VALUES ('257','Debris/del','操作-删除','1','1','0','','','203','3','1497429416','0','0');
INSERT INTO `clt_auth_rule` VALUES ('258','Wechat/editMenu','操作-编辑','1','1','0','','','208','2','1497429671','0','0');
INSERT INTO `clt_auth_rule` VALUES ('259','Wechat/menuOrder','操作-排序','1','1','0','','','208','3','1497429707','0','0');
INSERT INTO `clt_auth_rule` VALUES ('260','Wechat/menuState','操作-状态','1','1','0','','','208','4','1497429764','0','0');
INSERT INTO `clt_auth_rule` VALUES ('261','Wechat/delMenu','操作-删除','1','1','0','','','208','5','1497429822','0','0');
INSERT INTO `clt_auth_rule` VALUES ('262','Wechat/createMenu','操作-生成菜单','1','1','0','','','208','6','1497429886','0','0');
INSERT INTO `clt_auth_rule` VALUES ('263','Wechat/delText','操作-删除','1','1','0','','','209','3','1497430020','0','0');
INSERT INTO `clt_auth_rule` VALUES ('265','Donation/index','捐赠管理','1','1','0','','','28','5','1498101716','0','0');
INSERT INTO `clt_auth_rule` VALUES ('273','Wechat/replay','回复设置','1','1','0','','','206','4','1508215988',0,'1');
INSERT INTO `clt_auth_rule` VALUES ('267','Plugin/index','插件管理','1','1','1','icon-power-cord','','0','8','1501466560','0','0');
INSERT INTO `clt_auth_rule` VALUES ('269','Plugin/login','登录插件','1','1','1','','','267','1','1501466732','0','0');
INSERT INTO `clt_auth_rule` VALUES ('270','System/email','邮箱配置','1','1','0','','','1','2','1502331829','0','0');
INSERT INTO `clt_auth_rule` VALUES ('272','Debris/type','碎片分类','1','1','1','','','196','3','1504082720',0,'1');
--
-- 表的结构 `clt_category`
-- 
DROP TABLE IF EXISTS `clt_category`;
CREATE TABLE `clt_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ext_content1` text,
  `ext_content2` text,
  `ext_content3` text,
  `ext_image1` varchar(100) DEFAULT NULL,
  `ext_image2` varchar(100) DEFAULT NULL,
  `ext_image3` varchar(100) DEFAULT NULL,
  `image_align` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_category`表中的数据 `clt_category`
--
INSERT INTO `clt_category` VALUES ('26','枕头','mcategory','','0','24','msub','0','26,30,31','0','枕头','','','1','0','1','0','','0','','','','0','1,2,3','0','0','一夜安稳的睡眠对你的头脑、身体和心脏都有积极的作用，同时与你的生活质量息息相关。晚上睡的更好意味着生活更有精神。一个合适的枕头应该是能够适应你的头颈肩部的整体线条及重量，并提供最大的舒适度。因此，当你选择一个新的枕头时，你要去寻找可以提高你睡眠质量的高品质产品。','','','','','','0');
INSERT INTO `clt_category` VALUES ('29','床垫','mcategory','','0','21','mproduction','0','29','0','','','','2','0','1','0','','0','','','','0','1,2,3','0','0','是什么激发您起床并制造影响力？一晚的良好睡眠具有改革的能力。您充满能量地醒来。您感到一整天都更积极。此外，当早晨是平静和清新的，您变得精神焕发。所以，避免在夜间闷热、流汗或因不适而辗转反侧，享受不受打断的睡眠的益处——根据临床测试，增加多达45%的深度睡眠！DavidFlynn不仅意味着设计出最佳的床垫，更意味着生活到极致。','是什么激发您起床并制造影响力？一晚的良好睡眠具有改革的能力。您充满能量地醒来。您感到一整天都更积极。此外，当早晨是平静和清新的，您变得精神焕发。所以，避免在夜间闷热、流汗或因不适而辗转反侧，享受不受打断的睡眠的益处——根据临床测试，增加多达45%的深度睡眠！DavidFlynn不仅意味着设计出最佳的床垫，更意味着生活到极致。','','','','','0');
INSERT INTO `clt_category` VALUES ('28','旅行枕','mcategory','','0','21','mproduction','0','28','0','','','','3','0','1','0','','0','','','','0','1,2,3','0','0','','','','','','','0');
INSERT INTO `clt_category` VALUES ('30','记忆枕','msub','mcategory/','26','21','mproduction','0,26','30','0','','','','11','0','1','0','/uploads/20180416/46200c66b6f690a75655976e714d4375.jpg','0','','','','0','1,2,3','0','0','在第一个也是唯一一个使用适应身体的Technogel®凝胶层的床垫品牌上精神焕发地醒来。精心设计的4种不同核心构造可以满足对坚实或柔软床垫的多种偏好。','使用创新材料，拥有更高的度导热性能，有效降低温度，使身体达到恒温状态。科学发现，皮肤温度降低可以減慢新陈代谢，減少细胞对氧气的要求，适当地降低皮肤温度有助达至深层睡眠；','','/uploads/20180416/4f22163b47c9bc589ebc1dde7e607fc1.jpg','','','1');
INSERT INTO `clt_category` VALUES ('31','乳胶枕','msub','mcategory/','26','21','mproduction','0,26','31','0','','','','12','0','1','0','','0','','','','0','1,2,3','0','0','在床垫上使用前所未有的大量凝胶，意味着更多的适应性支撑。用极致的睡眠宠爱自己。舒适是新的奢华。','精选“世界上最好的100%东南亚天然乳胶”，其杰出的稳定性能够有效消除干扰睡眠的运动，而富有弹性的承托层又能有效预防驼背，防敏防尘，舒适透气，实现身心的真正健康','','/uploads/20180416/654429fb0d092d35bd3449ed9fec6fce.jpg','','','0');
INSERT INTO `clt_category` VALUES ('35','关于','mabout','','35','27','mabout','0','35','0','','','','10','0','1','0','','0','','','','0','1,2,3','0','0','','','','','','','0');
INSERT INTO `clt_category` VALUES ('36','关于','mabout','','0','27','mabout','0','36','0','','','','5','0','1','0','','0','','','','0','1,2,3','0','0','','','','','','',0);
--
-- 表的结构 `clt_config`
-- 
DROP TABLE IF EXISTS `clt_config`;
CREATE TABLE `clt_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_config`表中的数据 `clt_config`
--
INSERT INTO `clt_config` VALUES ('16','is_mark','0','water','0');
INSERT INTO `clt_config` VALUES ('17','mark_txt','','water','0');
INSERT INTO `clt_config` VALUES ('18','mark_img','/public/upload/public/2017/01-20/10cd966bd5f3549833c09a5c9700a9b8.jpg','water','0');
INSERT INTO `clt_config` VALUES ('19','mark_width','','water','0');
INSERT INTO `clt_config` VALUES ('20','mark_height','','water','0');
INSERT INTO `clt_config` VALUES ('21','mark_degree','54','water','0');
INSERT INTO `clt_config` VALUES ('22','mark_quality','56','water','0');
INSERT INTO `clt_config` VALUES ('23','sel','9','water','0');
INSERT INTO `clt_config` VALUES ('24','sms_url','https://yunpan.cn/OcRgiKWxZFmjSJ','sms','0');
INSERT INTO `clt_config` VALUES ('25','sms_user','','sms','0');
INSERT INTO `clt_config` VALUES ('26','sms_pwd','访问密码 080e','sms','0');
INSERT INTO `clt_config` VALUES ('27','regis_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES ('28','sms_time_out','1200','sms','0');
INSERT INTO `clt_config` VALUES ('38','__hash__','8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453','sms','0');
INSERT INTO `clt_config` VALUES ('39','__hash__','8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453','sms','0');
INSERT INTO `clt_config` VALUES ('56','sms_appkey','123456789','sms','0');
INSERT INTO `clt_config` VALUES ('57','sms_secretKey','123456789','sms','0');
INSERT INTO `clt_config` VALUES ('58','sms_product','CLTPHP','sms','0');
INSERT INTO `clt_config` VALUES ('59','sms_templateCode','SMS_101234567890','sms','0');
INSERT INTO `clt_config` VALUES ('60','smtp_server','smtp.qq.com','smtp','0');
INSERT INTO `clt_config` VALUES ('61','smtp_port','25','smtp','0');
INSERT INTO `clt_config` VALUES ('62','smtp_user','1109305987@qq.com','smtp','0');
INSERT INTO `clt_config` VALUES ('63','smtp_pwd','123232321','smtp','0');
INSERT INTO `clt_config` VALUES ('64','regis_smtp_enable','1','smtp','0');
INSERT INTO `clt_config` VALUES ('65','test_eamil','1109305987@qq.com','smtp','0');
INSERT INTO `clt_config` VALUES ('70','forget_pwd_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES ('71','bind_mobile_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES ('72','order_add_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES ('73','order_pay_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES ('74','order_shipping_sms_enable','1','sms','0');
INSERT INTO `clt_config` VALUES ('88','email_id','CLTPHP','smtp','0');
--
-- 表的结构 `clt_debris`
-- 
DROP TABLE IF EXISTS `clt_debris`;
CREATE TABLE `clt_debris` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `type_id` int(6) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `content` text,
  `addtime` int(13) DEFAULT NULL,
  `sort` int(11) DEFAULT '50',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_debris`表中的数据 `clt_debris`
--
INSERT INTO `clt_debris` VALUES ('38','11','品牌故事','<p class=\"description hidden-xs\" style=\"text-align: center;\">\n\n\n\n\n\n\n\n<!--[if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves></w:TrackMoves>\n  <w:TrackFormatting></w:TrackFormatting>\n  <w:PunctuationKerning></w:PunctuationKerning>\n  <w:DrawingGridVerticalSpacing>10 磅</w:DrawingGridVerticalSpacing>\n  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>\n  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>\n  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF></w:DoNotPromoteQF>\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\n  <w:LidThemeAsian>ZH-CN</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:SpaceForUL></w:SpaceForUL>\n   <w:BalanceSingleByteDoubleByteWidth></w:BalanceSingleByteDoubleByteWidth>\n   <w:DoNotLeaveBackslashAlone></w:DoNotLeaveBackslashAlone>\n   <w:ULTrailSpace></w:ULTrailSpace>\n   <w:DoNotExpandShiftReturn></w:DoNotExpandShiftReturn>\n   <w:AdjustLineHeightInTable></w:AdjustLineHeightInTable>\n   <w:BreakWrappedTables></w:BreakWrappedTables>\n   <w:SnapToGridInCell></w:SnapToGridInCell>\n   <w:WrapTextWithPunct></w:WrapTextWithPunct>\n   <w:UseAsianBreakRules></w:UseAsianBreakRules>\n   <w:DontGrowAutofit></w:DontGrowAutofit>\n   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>\n   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>\n   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>\n   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>\n   <w:UseFELayout></w:UseFELayout>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"></m:mathFont>\n   <m:brkBin m:val=\"before\"></m:brkBin>\n   <m:brkBinSub m:val=\"&#45;-\"></m:brkBinSub>\n   <m:smallFrac m:val=\"off\"></m:smallFrac>\n   <m:dispDef></m:dispDef>\n   <m:lMargin m:val=\"0\"></m:lMargin>\n   <m:rMargin m:val=\"0\"></m:rMargin>\n   <m:defJc m:val=\"centerGroup\"></m:defJc>\n   <m:wrapIndent m:val=\"1440\"></m:wrapIndent>\n   <m:intLim m:val=\"subSup\"></m:intLim>\n   <m:naryLim m:val=\"undOvr\"></m:naryLim>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!--[if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"382\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Plain Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Acronym\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Cite\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Code\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Definition\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Keyboard\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Preformatted\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Sample\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Typewriter\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Variable\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Table\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation subject\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"No List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Contemporary\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Elegant\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Professional\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Balloon Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Theme\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\n   Name=\"List Paragraph\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\n   Name=\"Intense Quote\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\n   Name=\"Subtle Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\n   Name=\"Intense Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\n   Name=\"Subtle Reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\n   Name=\"Intense Reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Mention\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Smart Hyperlink\"></w:LsdException>\n </w:LatentStyles>\n</xml><![endif]-->\n<style>\n<!--\n /* Font Definitions */\n@font-face\n	{font-family:宋体;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:Verdana;\n	panose-1:2 11 6 4 3 5 4 4 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-1593833729 1073750107 16 0 415 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:roman;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n@font-face\n	{font-family:Calibri;\n	panose-1:2 15 5 2 2 2 4 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\n@font-face\n	{font-family:\"\\@宋体\";\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:幼圆;\n	mso-font-alt:宋体;\n	mso-font-charset:134;\n	mso-generic-font-family:modern;\n	mso-font-pitch:fixed;\n	mso-font-signature:1 135135232 16 0 262144 0;}\n@font-face\n	{font-family:微软雅黑;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 684670034 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@微软雅黑\";\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 684670034 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@幼圆\";\n	mso-font-charset:134;\n	mso-generic-font-family:modern;\n	mso-font-pitch:fixed;\n	mso-font-signature:1 135135232 16 0 262144 0;}\n /* Style Definitions */\np.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:12.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\np.1, li.1, div.1\n	{mso-style-name:列出段落1;\n	mso-style-priority:34;\n	mso-style-unhide:no;\n	mso-style-qformat:yes;\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	text-indent:21.0pt;\n	mso-char-indent-count:2.0;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:11.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:10.0pt;\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	mso-ascii-font-family:\"Times New Roman\";\n	mso-fareast-font-family:宋体;\n	mso-hansi-font-family:\"Times New Roman\";\n	mso-font-kerning:0pt;}\n /* Page Definitions */\n@page\n	{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}\n@page WordSection1\n	{size:612.0pt 792.0pt;\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\n	mso-header-margin:36.0pt;\n	mso-footer-margin:36.0pt;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n /* List Definitions */\n@list l0\n	{mso-list-id:789327080;\n	mso-list-template-ids:789327080;}\n@list l0:level1\n	{mso-level-text:%1、;\n	mso-level-tab-stop:none;\n	mso-level-number-position:left;\n	margin-left:102.0pt;\n	text-indent:-36.0pt;\n	font-family:宋体;\n	mso-fareast-font-family:\"Times New Roman\";\n	color:windowtext;}\n@list l0:level2\n	{mso-level-number-format:decimal-enclosed-circle;\n	mso-level-text:%2;\n	mso-level-tab-stop:none;\n	mso-level-number-position:left;\n	margin-left:105.0pt;\n	text-indent:-18.0pt;\n	font-family:宋体;\n	mso-fareast-font-family:\"Times New Roman\";\n	mso-bidi-font-family:宋体;}\n@list l0:level3\n	{mso-level-number-format:roman-lower;\n	mso-level-tab-stop:none;\n	mso-level-number-position:right;\n	margin-left:129.0pt;\n	text-indent:-21.0pt;}\n@list l0:level4\n	{mso-level-tab-stop:none;\n	mso-level-number-position:left;\n	margin-left:150.0pt;\n	text-indent:-21.0pt;}\n@list l0:level5\n	{mso-level-number-format:alpha-lower;\n	mso-level-text:\"%5\\)\";\n	mso-level-tab-stop:none;\n	mso-level-number-position:left;\n	margin-left:171.0pt;\n	text-indent:-21.0pt;}\n@list l0:level6\n	{mso-level-number-format:roman-lower;\n	mso-level-tab-stop:none;\n	mso-level-number-position:right;\n	margin-left:192.0pt;\n	text-indent:-21.0pt;}\n@list l0:level7\n	{mso-level-tab-stop:none;\n	mso-level-number-position:left;\n	margin-left:213.0pt;\n	text-indent:-21.0pt;}\n@list l0:level8\n	{mso-level-number-format:alpha-lower;\n	mso-level-text:\"%8\\)\";\n	mso-level-tab-stop:none;\n	mso-level-number-position:left;\n	margin-left:234.0pt;\n	text-indent:-21.0pt;}\n@list l0:level9\n	{mso-level-number-format:roman-lower;\n	mso-level-tab-stop:none;\n	mso-level-number-position:right;\n	margin-left:255.0pt;\n	text-indent:-21.0pt;}\nol\n	{margin-bottom:0cm;}\nul\n	{margin-bottom:0cm;}\n-->\n</style>\n<!--[if gte mso 10]>\n<style>\n /* Style Definitions */\ntable.MsoNormalTable\n	{mso-style-name:普通表格;\n	mso-tstyle-rowband-size:0;\n	mso-tstyle-colband-size:0;\n	mso-style-noshow:yes;\n	mso-style-priority:99;\n	mso-style-parent:\"\";\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\n	mso-para-margin:0cm;\n	mso-para-margin-bottom:.0001pt;\n	mso-pagination:widow-orphan;\n	font-size:10.0pt;\n	font-family:\"Times New Roman\",serif;}\n</style>\n<![endif]-->\n\n\n\n<!--StartFragment-->\n\n</p><p class=\"1\" align=\"left\" style=\"text-align: center;\">美第奇家族是意大利最兴旺和最受尊敬的皇室家族之一，然而鲜少有人知道美第奇家族的财富、势力和影响源于最初经商、从事羊毛加工和在毛纺同业公会中的活动，更不会知道他们背后有一个长久服务的家纺品牌——戴维•弗林。</p><p class=\"1\" align=\"left\" style=\"text-align: center;\">19世纪60年代，意大利的统一运动蓬勃开展，戴维•弗林凭借皇室高端水准的纺织技术而发展迅速；二战后，意大利成立了欧洲经济共同体，经济以三倍速度飞涨，因为拥有先进的科技、精湛的工艺以及多位国际大师的经典设计等优势，戴维•弗林真正地实现了发展壮大。</p><p class=\"1\" align=\"left\" style=\"text-align: center;\">岁月更迭，历史变迁，美第奇家族在时光的长河中逐渐远去，但是长久服务于皇室的戴维•弗林却没有因此消亡，反而坚持“缔造完美睡眠”的发展理念，不断研发创新，制造出更多舒适、时尚的产品，满足了各种睡眠习惯的使用者对舒适睡眠的需求。</p><p class=\"1\" align=\"left\" style=\"text-align: center;\">如今，国际先进的科学技术配以高端的自动化设备的生产线，让戴维•弗林备受消费者的广泛欢迎，产品畅销世界十几国，发展也是越来越好。而床品的超舒适体验感也让戴维•弗林持续不断为用户创造了更多美好。</p><div style=\"text-align: center;\"><br></div><p class=\"1\" align=\"left\" style=\"text-align: center;\">\n\n\n\n\n\n\n\n<!--[if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves></w:TrackMoves>\n  <w:TrackFormatting></w:TrackFormatting>\n  <w:PunctuationKerning></w:PunctuationKerning>\n  <w:DrawingGridVerticalSpacing>10 磅</w:DrawingGridVerticalSpacing>\n  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>\n  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>\n  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF></w:DoNotPromoteQF>\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\n  <w:LidThemeAsian>ZH-CN</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:SpaceForUL></w:SpaceForUL>\n   <w:BalanceSingleByteDoubleByteWidth></w:BalanceSingleByteDoubleByteWidth>\n   <w:DoNotLeaveBackslashAlone></w:DoNotLeaveBackslashAlone>\n   <w:ULTrailSpace></w:ULTrailSpace>\n   <w:DoNotExpandShiftReturn></w:DoNotExpandShiftReturn>\n   <w:AdjustLineHeightInTable></w:AdjustLineHeightInTable>\n   <w:BreakWrappedTables></w:BreakWrappedTables>\n   <w:SnapToGridInCell></w:SnapToGridInCell>\n   <w:WrapTextWithPunct></w:WrapTextWithPunct>\n   <w:UseAsianBreakRules></w:UseAsianBreakRules>\n   <w:DontGrowAutofit></w:DontGrowAutofit>\n   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>\n   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>\n   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>\n   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>\n   <w:UseFELayout></w:UseFELayout>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"></m:mathFont>\n   <m:brkBin m:val=\"before\"></m:brkBin>\n   <m:brkBinSub m:val=\"&#45;-\"></m:brkBinSub>\n   <m:smallFrac m:val=\"off\"></m:smallFrac>\n   <m:dispDef></m:dispDef>\n   <m:lMargin m:val=\"0\"></m:lMargin>\n   <m:rMargin m:val=\"0\"></m:rMargin>\n   <m:defJc m:val=\"centerGroup\"></m:defJc>\n   <m:wrapIndent m:val=\"1440\"></m:wrapIndent>\n   <m:intLim m:val=\"subSup\"></m:intLim>\n   <m:naryLim m:val=\"undOvr\"></m:naryLim>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!--[if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"382\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Plain Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Acronym\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Cite\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Code\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Definition\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Keyboard\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Preformatted\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Sample\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Typewriter\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Variable\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Table\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation subject\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"No List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 4\"></w:LsdException>\n  <w:LsdException Locked=\"fal','1519546297','50','/uploads/20180606/1938306aac16afc8ff377d680fc62b5e.jpg','');
INSERT INTO `clt_debris` VALUES ('37','10','舒适站立','<p><span>向您介绍全新的</span><span>戴维•弗林</span><span>站立伙伴。</span></p>','1519546225','50','/uploads/20180416/0a0a5af53fd4ec725b30c0291f00cbe5.jpg','');
INSERT INTO `clt_debris` VALUES ('31','8','缔造完美睡眠','<p>醒来</p>','1519545577','50','/uploads/20180324/1b80be5904d72568407ee02e19a3b21f.jpg','home-mcategory-index-catId-26.html');
INSERT INTO `clt_debris` VALUES ('32','9','床垫','<p style=\"text-align: left;\"><span>由乳胶海绵制作成的乳胶床垫具有高弹性，能满足不同体重人群的需要，其良好的支撑力能够适应睡眠者的各种睡姿。</span></p>','1519545698','52','/uploads/20180416/e2a96de2b87cefd1aeeabcd773694015.jpg','home-mcategory-index-catId-29.html');
INSERT INTO `clt_debris` VALUES ('33','9','枕头','<p>\n\n\n\n\n\n\n\n<!--[if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves></w:TrackMoves>\n  <w:TrackFormatting></w:TrackFormatting>\n  <w:PunctuationKerning></w:PunctuationKerning>\n  <w:DrawingGridVerticalSpacing>10 磅</w:DrawingGridVerticalSpacing>\n  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>\n  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>\n  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF></w:DoNotPromoteQF>\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\n  <w:LidThemeAsian>ZH-CN</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:SpaceForUL></w:SpaceForUL>\n   <w:BalanceSingleByteDoubleByteWidth></w:BalanceSingleByteDoubleByteWidth>\n   <w:DoNotLeaveBackslashAlone></w:DoNotLeaveBackslashAlone>\n   <w:ULTrailSpace></w:ULTrailSpace>\n   <w:DoNotExpandShiftReturn></w:DoNotExpandShiftReturn>\n   <w:AdjustLineHeightInTable></w:AdjustLineHeightInTable>\n   <w:BreakWrappedTables></w:BreakWrappedTables>\n   <w:SnapToGridInCell></w:SnapToGridInCell>\n   <w:WrapTextWithPunct></w:WrapTextWithPunct>\n   <w:UseAsianBreakRules></w:UseAsianBreakRules>\n   <w:DontGrowAutofit></w:DontGrowAutofit>\n   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>\n   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>\n   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>\n   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>\n   <w:UseFELayout></w:UseFELayout>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"></m:mathFont>\n   <m:brkBin m:val=\"before\"></m:brkBin>\n   <m:brkBinSub m:val=\"&#45;-\"></m:brkBinSub>\n   <m:smallFrac m:val=\"off\"></m:smallFrac>\n   <m:dispDef></m:dispDef>\n   <m:lMargin m:val=\"0\"></m:lMargin>\n   <m:rMargin m:val=\"0\"></m:rMargin>\n   <m:defJc m:val=\"centerGroup\"></m:defJc>\n   <m:wrapIndent m:val=\"1440\"></m:wrapIndent>\n   <m:intLim m:val=\"subSup\"></m:intLim>\n   <m:naryLim m:val=\"undOvr\"></m:naryLim>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!--[if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"382\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Plain Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Acronym\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Address\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Cite\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Code\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Definition\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Keyboard\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Preformatted\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Sample\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Typewriter\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Variable\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Table\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation subject\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"No List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Contemporary\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Elegant\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Professional\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Balloon Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Theme\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 7\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 8\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 9\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\n   Name=\"List Paragraph\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\n   Name=\"Intense Quote\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\n   Name=\"Subtle Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\n   Name=\"Intense Emphasis\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\n   Name=\"Subtle Reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\n   Name=\"Intense Reference\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 1\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 2\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 3\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 4\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 5\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 6\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Mention\"></w:LsdException>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Smart Hyperlink\"></w:LsdException>\n </w:LatentStyles>\n</xml><![endif]-->\n<style>\n<!--\n /* Font Definitions */\n@font-face\n	{font-family:宋体;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:roman;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n@font-face\n	{font-family:Calibri;\n	panose-1:2 15 5 2 2 2 4 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\n@font-face\n	{font-family:\"\\@宋体\";\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n /* Style Definitions */\np.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:12.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:10.0pt;\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	mso-ascii-font-family:\"Times New Roman\";\n	mso-fareast-font-family:宋体;\n	mso-hansi-font-family:\"Times New Roman\";\n	mso-font-kerning:0pt;}\n /* Page Definitions */\n@page\n	{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}\n@page WordSection1\n	{size:612.0pt 792.0pt;\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\n	mso-header-margin:36.0pt;\n	mso-footer-margin:36.0pt;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style>\n<!--[if gte mso 10]>\n<style>\n /* Style Definitions */\ntable.MsoNormalTable\n	{mso-style-name:普通表格;\n	mso-tstyle-rowband-size:0;\n	mso-tstyle-colband-size:0;\n	mso-style-noshow:yes;\n	mso-style-priority:99;\n	mso-style-parent:\"\";\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\n	mso-para-margin:0cm;\n	mso-para-margin-bottom:.0001pt;\n	mso-pagination:widow-orphan;\n	font-size:10.0pt;\n	font-family:\"Times New Roman\",serif;}\n</style>\n<![endif]-->\n\n\n\n<!--StartFragment-->\n\n</p><p class=\"MsoNormal\"><span style=\"font-size: 10.5pt;\">戴维</span><span style=\"font-size: 10.5pt;\">•弗林牌系列家纺真正做到了“传统与时尚、科技与艺术、古典与现代、天然与人工、保健与文化”的情物结合，因而，深受国内外客户青睐。</span></p>\n\n<!--EndFragment--><br><p></p>','1519545791','51','/uploads/20180416/729bbbf2d05676a71ddb9fd6071279c4.jpg','home-mcategory-index-catId-26.html');
INSERT INTO `clt_debris` VALUES ('34','10','深入了解','<p>美第奇家族是意大利最兴旺和最受尊敬的皇室家族之一，然而鲜少有人知道美第奇家族的财富、势力和影响源于最初经商、从事羊毛加工和在毛纺同业公会中的活动，更不会知道他们背后有一个长久服务的家纺品牌——戴维•弗林。</p>','1519545970','50','/uploads/20180225/cfaac4bf751361405aa965d6d48df28d.jpg','');
INSERT INTO `clt_debris` VALUES ('35','10','更愉快的旅行','<p>\n\n\n\n\n\n\n\n<!--[if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves/>\n  <w:TrackFormatting/>\n  <w:PunctuationKerning/>\n  <w:DrawingGridVerticalSpacing>10 磅</w:DrawingGridVerticalSpacing>\n  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>\n  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>\n  <w:ValidateAgainstSchemas/>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF/>\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\n  <w:LidThemeAsian>ZH-CN</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:SpaceForUL/>\n   <w:BalanceSingleByteDoubleByteWidth/>\n   <w:DoNotLeaveBackslashAlone/>\n   <w:ULTrailSpace/>\n   <w:DoNotExpandShiftReturn/>\n   <w:AdjustLineHeightInTable/>\n   <w:BreakWrappedTables/>\n   <w:SnapToGridInCell/>\n   <w:WrapTextWithPunct/>\n   <w:UseAsianBreakRules/>\n   <w:DontGrowAutofit/>\n   <w:SplitPgBreakAndParaMark/>\n   <w:EnableOpenTypeKerning/>\n   <w:DontFlipMirrorIndents/>\n   <w:OverrideTableStyleHps/>\n   <w:UseFELayout/>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"/>\n   <m:brkBin m:val=\"before\"/>\n   <m:brkBinSub m:val=\"&#45;-\"/>\n   <m:smallFrac m:val=\"off\"/>\n   <m:dispDef/>\n   <m:lMargin m:val=\"0\"/>\n   <m:rMargin m:val=\"0\"/>\n   <m:defJc m:val=\"centerGroup\"/>\n   <m:wrapIndent m:val=\"1440\"/>\n   <m:intLim m:val=\"subSup\"/>\n   <m:naryLim m:val=\"undOvr\"/>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!--[if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"382\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"/>\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"/>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"/>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Plain Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Acronym\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Address\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Cite\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Code\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Definition\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Keyboard\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Preformatted\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Sample\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Typewriter\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Variable\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Table\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation subject\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"No List\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Contemporary\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Elegant\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Professional\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Balloon Text\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Theme\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Level 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\n   Name=\"List Paragraph\"/>\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\n   Name=\"Intense Quote\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\n   Name=\"Subtle Emphasis\"/>\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\n   Name=\"Intense Emphasis\"/>\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\n   Name=\"Subtle Reference\"/>\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\n   Name=\"Intense Reference\"/>\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Mention\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Smart Hyperlink\"/>\n </w:LatentStyles>\n</xml><![endif]-->\n<style>\n<!--\n /* Font Definitions */\n@font-face\n	{font-family:宋体;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:roman;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n@font-face\n	{font-family:Calibri;\n	panose-1:2 15 5 2 2 2 4 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\n@font-face\n	{font-family:\"\\@宋体\";\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n /* Style Definitions */\np.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:12.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:10.0pt;\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	mso-ascii-font-family:\"Times New Roman\";\n	mso-fareast-font-family:宋体;\n	mso-hansi-font-family:\"Times New Roman\";\n	mso-font-kerning:0pt;}\n /* Page Definitions */\n@page\n	{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}\n@page WordSection1\n	{size:612.0pt 792.0pt;\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\n	mso-header-margin:36.0pt;\n	mso-footer-margin:36.0pt;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style>\n<!--[if gte mso 10]>\n<style>\n /* Style Definitions */\ntable.MsoNormalTable\n	{mso-style-name:普通表格;\n	mso-tstyle-rowband-size:0;\n	mso-tstyle-colband-size:0;\n	mso-style-noshow:yes;\n	mso-style-priority:99;\n	mso-style-parent:\"\";\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\n	mso-para-margin:0cm;\n	mso-para-margin-bottom:.0001pt;\n	mso-pagination:widow-orphan;\n	font-size:10.0pt;\n	font-family:\"Times New Roman\",serif;}\n</style>\n<![endif]-->\n\n\n\n<!--StartFragment--><span>戴维•弗林全新乳胶颈枕伴随你的旅程</span><!--EndFragment--></p>','1519546049','50','/uploads/20180416/15df8bb7f6f54564ec16d27e7b66cb1e.jpg','');
INSERT INTO `clt_debris` VALUES ('36','10','联系我们','<p><span>联系我们，专业的销售顾问为您服务。</span></p>','1519546160','50','/uploads/20180225/06aaee2f115f1e98e86c6ed99fa34b9f.jpg','');
--
-- 表的结构 `clt_debris_type`
-- 
DROP TABLE IF EXISTS `clt_debris_type`;
CREATE TABLE `clt_debris_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `sort` int(1) DEFAULT '50',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_debris_type`表中的数据 `clt_debris_type`
--
INSERT INTO `clt_debris_type` VALUES ('11','首页尾部一栏区','首页尾部一栏区','55');
INSERT INTO `clt_debris_type` VALUES ('10','首页四栏区','首页四栏区','53');
INSERT INTO `clt_debris_type` VALUES ('8','首页头部一栏区','首页头部一栏区','50');
INSERT INTO `clt_debris_type` VALUES ('9','首页两栏区','首页两栏区','51');
--
-- 表的结构 `clt_donation`
-- 
DROP TABLE IF EXISTS `clt_donation`;
CREATE TABLE `clt_donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '捐赠金额',
  `addtime` varchar(15) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_donation`表中的数据 `clt_donation`
--
INSERT INTO `clt_donation` VALUES ('9','王宁','10.00','1473647377');
INSERT INTO `clt_donation` VALUES ('11','幽鸣','100.00','1483080600');
--
-- 表的结构 `clt_field`
-- 
DROP TABLE IF EXISTS `clt_field`;
CREATE TABLE `clt_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_field`表中的数据 `clt_field`
--
INSERT INTO `clt_field` VALUES ('235','25','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','8','0','0');
INSERT INTO `clt_field` VALUES ('236','25','createtime','发布时间','','1','0','0','date','','','datetime','','1','','97','1','1');
INSERT INTO `clt_field` VALUES ('237','25','template','模板','','0','0','0','','','','template','','1','','99','1','1');
INSERT INTO `clt_field` VALUES ('234','25','title','标题','','1','1','80','','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','2','1','1');
INSERT INTO `clt_field` VALUES ('233','24','catid','栏目','','1','0','0','defaul','','catid','catid',0,'0','','0','1','0');
INSERT INTO `clt_field` VALUES ('232','24','content','内容','','1','0','0','defaul','','content','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','4','1','0');
INSERT INTO `clt_field` VALUES ('207','21','createtime','发布时间','','1','0','0','date','','','datetime','','1','','97','1','1');
INSERT INTO `clt_field` VALUES ('208','21','template','模板','','0','0','0','','','','template','','1','','99','1','1');
INSERT INTO `clt_field` VALUES ('209','21','status','状态','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','','98','1','1');
INSERT INTO `clt_field` VALUES ('206','21','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','80','0','0');
INSERT INTO `clt_field` VALUES ('205','21','title','标题','','1','1','80','','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','2','1','1');
INSERT INTO `clt_field` VALUES ('216','21','catid','所属分类','','1','0','0','defaul','','catid','catid',0,'0','','0','1','0');
INSERT INTO `clt_field` VALUES ('231','24','picture','图片','','0','0','0','defaul','','picture','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','5','1','0');
INSERT INTO `clt_field` VALUES ('230','24','description','描述','','0','0','0','defaul','','description','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'\',\n)','0','','7','1','0');
INSERT INTO `clt_field` VALUES ('229','24','status','状态','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','','98','1','1');
INSERT INTO `clt_field` VALUES ('228','24','template','模板','','0','0','0','','','','template','','1','','99','1','1');
INSERT INTO `clt_field` VALUES ('227','24','createtime','发布时间','','1','0','0','date','','','datetime','','1','','97','1','1');
INSERT INTO `clt_field` VALUES ('226','24','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','8','0','0');
INSERT INTO `clt_field` VALUES ('225','24','title','标题','','1','1','80','','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','2','1','1');
INSERT INTO `clt_field` VALUES ('238','25','status','状态','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','','98','1','1');
INSERT INTO `clt_field` VALUES ('239','25','content','内容','','1','0','0','defaul','','content','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','4','1','0');
INSERT INTO `clt_field` VALUES ('240','25','catid','栏目','','1','0','0','defaul','','catid','catid',0,'0','','0','1','0');
INSERT INTO `clt_field` VALUES ('241','24','picture_align','图片对齐方向','','0','0','0','defaul','','picture_align','radio','array (\n  \'options\' => \'左对齐|1\n右对齐|2\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'default\' => \'1\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('242','21','descrption','描述','','0','0','0','defaul','','descrption','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','3','1','0');
INSERT INTO `clt_field` VALUES ('243','21','content','内容','','1','0','0','defaul','','content','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','4','1','0');
INSERT INTO `clt_field` VALUES ('244','21','pictures','轮播图片','','1','0','0','defaul','','pictures','images',0,'0','','5','1','0');
INSERT INTO `clt_field` VALUES ('245','21','pic1','特性图片1','','0','0','0','defaul','','pic1','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','41','1','0');
INSERT INTO `clt_field` VALUES ('246','21','title1','特性标题1','','0','0','0','defaul','','title1','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','42','1','0');
INSERT INTO `clt_field` VALUES ('247','21','conten1','特性内容1','','0','0','0','defaul','','conten1','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'\',\n)','0','','43','1','0');
INSERT INTO `clt_field` VALUES ('248','21','pic2','特性图片2','','0','0','0','defaul','','pic2','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','46','1','0');
INSERT INTO `clt_field` VALUES ('249','21','pic3','特性图片3','','0','0','0','defaul','','pic3','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','51','1','0');
INSERT INTO `clt_field` VALUES ('250','21','pic4','特性图片4','','0','0','0','defaul','','pic4','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','56','1','0');
INSERT INTO `clt_field` VALUES ('251','21','pic5','特性图片5','','0','0','0','defaul','','pic5','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','61','1','0');
INSERT INTO `clt_field` VALUES ('252','21','pic6','特性图片6','','0','0','0','defaul','','pic6','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','66','1','0');
INSERT INTO `clt_field` VALUES ('253','21','title2','特性标题2','','0','0','0','defaul','','title2','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','47','1','0');
INSERT INTO `clt_field` VALUES ('254','21','title3','特性标题3','','0','0','0','defaul','','title3','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','52','1','0');
INSERT INTO `clt_field` VALUES ('255','21','title4','特性标题4','','0','0','0','defaul','','title4','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','57','1','0');
INSERT INTO `clt_field` VALUES ('256','21','title5','特性标题5','','0','0','0','defaul','','title5','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','62','1','0');
INSERT INTO `clt_field` VALUES ('257','21','title6','特性标题6','','0','0','0','defaul','','title6','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','67','1','0');
INSERT INTO `clt_field` VALUES ('260','21','conten2','特性内容2','','0','0','0','defaul','','conten2','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'\',\n)','0','','48','1','0');
INSERT INTO `clt_field` VALUES ('259','21','conten3','特性内容3','','0','0','0','defaul','','conten3','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'\',\n)','0','','53','1','0');
INSERT INTO `clt_field` VALUES ('261','21','conten4','特性内容4','','0','0','0','defaul','','conten4','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'\',\n)','0','','58','1','0');
INSERT INTO `clt_field` VALUES ('262','21','conten5','特性内容5','','0','0','0','defaul','','conten5','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'\',\n)','0','','63','1','0');
INSERT INTO `clt_field` VALUES ('263','21','conten6','特性内容6','','0','0','0','defaul','','conten6','textarea','array (\n  \'fieldtype\' => \'mediumtext\',\n  \'default\' => \'\',\n)','0','','68','1','0');
INSERT INTO `clt_field` VALUES ('264','21','detail_content','细节描述','','0','0','0','defaul','','detail_content','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','70','1','0');
INSERT INTO `clt_field` VALUES ('265','21','detail_specification','细节规格','','0','0','0','defaul','','detail_specification','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','71','1','0');
INSERT INTO `clt_field` VALUES ('274','27','template','模板','','0','0','0','','','','template','','1','','99','1','1');
INSERT INTO `clt_field` VALUES ('275','27','status','状态','','0','0','0','','','','radio','array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)','1','','98','1','1');
INSERT INTO `clt_field` VALUES ('273','27','createtime','发布时间','','1','0','0','date','','','datetime','','1','','97','1','1');
INSERT INTO `clt_field` VALUES ('271','27','title','标题','','1','1','80','','标题必须为1-80个字符','','title','array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)','1','','2','1','1');
INSERT INTO `clt_field` VALUES ('272','27','hits','点击次数','','0','0','8','','','','number','array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)','1','','8','0','0');
INSERT INTO `clt_field` VALUES ('276','27','content','首行内容','','0','0','0','defaul','','content','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('277','27','video1','首行视频mp4格式','','0','0','0','defaul','','video1','file','array (\n  \'upload_allowext\' => \'mp4\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('278','27','video2','首行视频webm格式','','0','0','0','defaul','','video2','file','array (\n  \'upload_allowext\' => \'webm\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('279','27','row2_pic','第二行背景图','','1','0','0','defaul','','row2_pic','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('280','27','row2_title','第二行标题','','1','0','0','defaul','','row2_title','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('281','27','row2_content','第二行内容','','1','0','0','defaul','','row2_content','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('282','27','row3_title','第三行标题','','1','0','0','defaul','','row3_title','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('283','27','row4_title','第四行标题','','1','0','0','defaul','','row4_title','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('284','27','row5_title','第五行标题','','0','0','0','defaul','','row5_title','text','array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('285','27','row5_conent','第五行内容','','1','0','0','defaul','','row5_conent','editor','array (\n  \'edittype\' => \'UEditor\',\n)','0','','0','1','0');
INSERT INTO `clt_field` VALUES ('286','27','row5_pic','第五行背景图','','1','0','0','defaul','','row5_pic','image','array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)','0','','0','1','0');
--
-- 表的结构 `clt_link`
-- 
DROP TABLE IF EXISTS `clt_link`;
CREATE TABLE `clt_link` (
  `link_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `qq` varchar(20) NOT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0禁用1启用',
  PRIMARY KEY (`link_id`) 
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_link`表中的数据 `clt_link`
--
INSERT INTO `clt_link` VALUES ('10','xx有限公司','http://www.gowants.cn','0','18615320368','1','1495183645','1');
INSERT INTO `clt_link` VALUES ('8','yy信息技术有限公司','https://www.raisesky.com/','0','0532-6800-2380','2','1484791374','1');
--
-- 表的结构 `clt_mabout`
-- 
DROP TABLE IF EXISTS `clt_mabout`;
CREATE TABLE `clt_mabout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template` varchar(40) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `video1` varchar(80) NOT NULL DEFAULT '',
  `video2` varchar(80) NOT NULL DEFAULT '',
  `row2_pic` varchar(80) NOT NULL DEFAULT '',
  `row2_title` varchar(255) NOT NULL DEFAULT '',
  `row2_content` text NOT NULL,
  `row3_title` varchar(255) NOT NULL DEFAULT '',
  `row4_title` varchar(255) NOT NULL DEFAULT '',
  `row5_title` varchar(255) NOT NULL DEFAULT '',
  `row5_conent` text NOT NULL,
  `row5_pic` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_mabout`表中的数据 `clt_mabout`
--
INSERT INTO `clt_mabout` VALUES ('36','关于','color:hsv(0, 0%, 0%);font-weight:bold;','/uploads/20180225/a81f83cae31c1d8ae9250a1dc68e6670.jpg','0','1','0','','0','1519567732','1523931966','0','mabout_show','<p><span style=\"color: rgb(242, 242, 242);\">向下滚动详细了解我们的专利凝胶技术</span></p>','','','/uploads/20180225/139f7d5eedb3053327c1b806d0849fe3.jpg','25年制造经验','<p><span style=\"font-family: lexia; text-align: center; background-color: rgb(255, 255, 255);\">感谢25年的创新德国工艺和意大利设计，我们创造了真正激动人心的事物——人体工程学的新浪潮。这一切始于一种不同寻常的材料和一个男人的梦想……</span></p>','发现优点','应用','创新材料','<p>是什么令这种创新凝胶可以有如此多的完美应用？发现为什么从建筑师到艺术家到工程师、运动员和建造商，每个人都以全新和创新的方式使用&nbsp;David Flynn。</p>','/uploads/20180225/df4940c33d6328792c33cb3ec894106d.jpg');
--
-- 表的结构 `clt_mcategory`
-- 
DROP TABLE IF EXISTS `clt_mcategory`;
CREATE TABLE `clt_mcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template` varchar(40) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_mcategory`表中的数据 `clt_mcategory`
--
INSERT INTO `clt_mcategory` VALUES ('1','床垫','color:;font-weight:normal;','','0','1','1','admin','0','1519267036','0','0','0','<p><span style=\"font-family: lexia; background-color: rgb(255, 255, 255);\">长期以来，Technogel®通过凉爽的软垫和出色的人体工程学支撑振奋着日常的生活体验——从轮椅和医疗到自行车、就座、行走和睡眠。我们继承创新的传统，是第一个也是唯一一个使用加厚专利凝胶层的床垫品牌。 基于23年使用凝胶让生活变得更舒适的经验，Technogel®通过凉爽舒适的支撑革新了床垫，经过科学验证能帮助您睡得更好。 现在我们与您分享我们的灵感：只有Technogel®才能提供的优点，帮助您以一种焕然一新的方式享受生活。</span></p>','0');
INSERT INTO `clt_mcategory` VALUES ('2','枕头','color:;font-weight:normal;','','0','1','1','admin','1','1519267114','0','0','0','<p>大黄蜂誓师大会fghs</p><p>fgdhdfh</p><p><br/></p><p>dfhggjhd放虎归山</p>','0');
--
-- 表的结构 `clt_message`
-- 
DROP TABLE IF EXISTS `clt_message`;
CREATE TABLE `clt_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '' COMMENT '留言标题',
  `tel` varchar(15) NOT NULL DEFAULT '' COMMENT '留言电话',
  `addtime` varchar(15) NOT NULL COMMENT '留言时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1=审核 0=不审核',
  `ip` varchar(50) DEFAULT '' COMMENT '留言者IP',
  `content` longtext NOT NULL COMMENT '留言内容',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(50) NOT NULL COMMENT '留言邮箱',
  PRIMARY KEY (`message_id`) 
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_message`表中的数据 `clt_message`
--
INSERT INTO `clt_message` VALUES ('92','eeeeee','','1519542305','0','127.0.0.1','eeeeeeeee','eeeee','eeeeeeee');
--
-- 表的结构 `clt_module`
-- 
DROP TABLE IF EXISTS `clt_module`;
CREATE TABLE `clt_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` text,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `singlepage` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_module`表中的数据 `clt_module`
--
INSERT INTO `clt_module` VALUES ('27','关于模型','mabout','','1','0','*',0,'0','1','1');
INSERT INTO `clt_module` VALUES ('21','产品模型','mproduction','','1','0','*',0,'0','1','0');
INSERT INTO `clt_module` VALUES ('25','分类模型','mcategory','','1','0','*',0,'0','0','0');
INSERT INTO `clt_module` VALUES ('24','子分类模型','msub','','1','0','*',0,'0','1','0');
--
-- 表的结构 `clt_mproduction`
-- 
DROP TABLE IF EXISTS `clt_mproduction`;
CREATE TABLE `clt_mproduction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template` varchar(40) NOT NULL DEFAULT '',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `descrption` text NOT NULL,
  `content` text NOT NULL,
  `pictures` mediumtext NOT NULL,
  `pic1` varchar(80) NOT NULL DEFAULT '',
  `title1` varchar(255) NOT NULL DEFAULT '',
  `conten1` mediumtext NOT NULL,
  `pic2` varchar(80) NOT NULL DEFAULT '',
  `pic3` varchar(80) NOT NULL DEFAULT '',
  `pic4` varchar(80) NOT NULL DEFAULT '',
  `pic5` varchar(80) NOT NULL DEFAULT '',
  `pic6` varchar(80) NOT NULL DEFAULT '',
  `title2` varchar(255) NOT NULL DEFAULT '',
  `title3` varchar(255) NOT NULL DEFAULT '',
  `title4` varchar(255) NOT NULL DEFAULT '',
  `title5` varchar(255) NOT NULL DEFAULT '',
  `title6` varchar(255) NOT NULL DEFAULT '',
  `conten3` mediumtext NOT NULL,
  `conten2` mediumtext NOT NULL,
  `conten4` mediumtext NOT NULL,
  `conten5` mediumtext NOT NULL,
  `conten6` mediumtext NOT NULL,
  `detail_content` text NOT NULL,
  `detail_specification` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_mproduction`表中的数据 `clt_mproduction`
--
INSERT INTO `clt_mproduction` VALUES ('12','负离子波浪枕Negative ion wave-shaped pillow','color:;font-weight:normal;','','16','1','1','admin','5','1523861024','1523865858','0','0','31','<p>被誉为“空气维生素”的负离子能够清新空气，使睡眠呼吸顺畅。</p><p><br/></p>','<p>S型波浪设计，稳固睡姿保护颈椎，预防落枕，改善不良睡姿，提升睡眠深度和质量。</p><p><br/></p>','/uploads/20180416/b5bfd1f6a0b64ebbd96c0fbf449e89aa.jpg;','/uploads/20180416/eb285be801557cc0c459914f054030fc.jpg','','','','','','','','','','','','','','','','','','','<p>BIG&nbsp; : &nbsp;60x40x10/12 cm</p><p>BIG: 60x40x10/12 cm</p><p>KIDS :&nbsp; 50x30xx7/9 cm</p><p>KIDS: 50x30xx7/9 cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('13','Classic Contour 经典护颈型','color:;font-weight:normal;','','13','1','1','admin','3','1523863233','0','0','0','30','<p>独特的人体工程学支撑头部和颈部，有助于脊柱的最佳排列。提供清爽的感觉，这不仅让您随时随地保持安稳的睡眠，也可以缓解头痛症状。</p><p><br/></p>','<p>为颈部痛、背部痛或肩部痛的人士设计，适合习惯仰睡及侧睡，独特的人体工学流线设计能使睡眠时肩部所受的压力减少；适用于最爱挑剔、喜欢没有任何后推力支撑的睡眠者使用。</p><p><br/></p>','/uploads/20180416/aca848012ef393cd572cfdf6a04a3bf7.jpg;/uploads/20180416/beced339ad375368c51948bf61c28344.jpg;/uploads/20180416/6718c219565772b6f08e8a3bc5969513.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('14','Pioneer 先驱护颈加强型','color:;font-weight:normal;','','20','1','1','admin','4','1523863464','0','0','0','30','<p>超大的高分子凝胶块，全包围式新工艺，给您踏实、舒适的感觉，舒缓背部、肩部和颈部的不适，使肌肉松弛，舒缓压力，缓解头疼问题，给您带来独特的清爽感，让您的睡眠更加健康、美好。</p><p><br/></p>','<p>为有颈部、背部或肩部疼痛的人士设计，不但提供良好承托，而且能使肌肉放松，适合各种睡姿习惯的人士使用。</p><p><br/></p>','/uploads/20180416/05e06ad41d80aad3809b9cb7e8cc855e.jpg;/uploads/20180416/98d6d275d76240003ba9c5cc4337c474.jpg;/uploads/20180416/132c8a7e976a64024fb6ba374d38b5a5.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('15','Exalted Deluxe 尊贵 豪华型','color:;font-weight:normal;','','13','1','1','admin','5','1523863869','0','0','0','30','<p>此款奢华枕采用3D植物凝胶带来独特的清凉感，更加透气，缓解头痛，让睡眠加倍凉爽轻松！出众的支撑以及一流的舒适睡感，出色的人体工程学支撑头部和颈部，有助于脊柱的最佳排列。</p><p><br/></p>','<p>推荐给那些偏爱传统枕头，习惯仰睡以及大、中体型的人使用。它能适应每个身体的形状和睡姿。</p><p><br/></p>','/uploads/20180416/537eb70d3d7a262a69cf9204be308fa1.jpg;/uploads/20180416/966eed883b15eea4aac7860b5747ee1a.jpg;/uploads/20180416/309b7b79a968cf7cfd02f8da2c74d6c6.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('16','Exalted Contour：尊贵 护颈型','color:;font-weight:normal;','','12','1','1','admin','6','1523864137','1523864310','0','0','30','<p>此款奢华枕采用3D植物凝胶带来独特的清凉感，更加透气，缓解头痛，让睡眠加倍凉爽轻松！出众的支撑以及一流的舒适睡感，出色的人体工程学支撑头部和颈部，有助于脊柱的最佳排列。</p><p><br/></p>','<p>专门为患有颈部，背部，肩部疼痛的人群，适合习惯仰睡及侧睡，喜欢没有任何后推力支撑的睡眠者使用。</p><p><br/></p>','/uploads/20180416/d9250e9db95076c5021c5c3ee296bd92.jpg;/uploads/20180416/7adc6b2da384e24b7e8d9989272b9e4c.jpg;/uploads/20180416/ba0dcef1ef61ea0f5b2f7023a876f7f9.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('2','Classic Deluxe 经典豪华型','color:;font-weight:bold;','/uploads/20180416/971290d2cfdcbd80c4d9e38df5122527.jpg','230','1','1','admin','1','1519356645','1523868827','0','mproduction_show','30','<p>出色的人体工程学支撑头部和颈部，有助于脊柱的最佳排列。提供清爽的感觉，这不仅让您随时随地保持安稳的睡眠，也可以缓解头痛症状。</p><p><br/></p>','<p>推荐给那些偏爱传统枕头，习惯仰睡以及大、中体型的人使用。它能适应每个身体的形状和睡姿。</p><p><br/></p>','/uploads/20180416/251c58863f08e4a5f0a22d89272e973f.jpg;/uploads/20180416/5eb366c70284a752581685e5d60c5fe1.jpg;/uploads/20180416/b731b864140cd318cb0bf477c4fe6243.jpg;','/uploads/20180223/f8814efffda563f7e2a5fe47717f6cd7.png','深度睡眠从这里开始','临床测试显示 Technogel®床垫有助减少多达33%的浅度睡眠，增加多达45%的深度睡眠。这是令人大开眼界的事实！','/uploads/20180223/408a3fb50f03ef6aa939a443fd5c7e21.png','','','','','健康的细节','','','','','','Technogel® 是唯一一种不使用塑化油的聚氨酯凝胶——它无毒、近乎无味且不随温度或使用年限而硬化或软化。它是一种具有生物相容性和弹性的专利柔软固体凝胶。这意味着您可以轻松地躺下并让您的忧虑飘远。','','','','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box;\">加厚的</span><span style=\"box-sizing: border-box; font-family: Verdana, sans-serif;\">Technogel</span><span style=\"box-sizing: border-box;\">层帮助您保持舒适和凉爽。独特的</span><span style=\"box-sizing: border-box; font-family: Verdana, sans-serif;\">3-</span><span style=\"box-sizing: border-box;\">区域设计为肩部和臀部提供额外缓冲以及下背部定位支撑。这一个性化的压力缓解令</span><span style=\"box-sizing: border-box; font-family: Verdana, sans-serif;\">Estasi坚实</span><span style=\"box-sizing: border-box;\">款床垫尤其受到侧卧睡眠者或偏爱坚实支撑床垫的人士的欢迎。</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box;\">不再为了找到舒适睡姿而辗转反侧或因为闷热流汗而醒来，你将入睡并享受在最恢复精力的睡眠阶段不间断休息的益处。</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box;\">通过</span><span style=\"box-sizing: border-box; font-family: Verdana, sans-serif;\">Estasi</span><span style=\"box-sizing: border-box;\">极致的凝胶体验，您可以每晚享受令人精神焕发的睡眠。感觉就是相信。寻找授权的</span><span style=\"box-sizing: border-box; font-family: Verdana, sans-serif;\">Technogel®</span><span style=\"box-sizing: border-box;\">床垫零售商并访问您附近的商店，发现远胜其他品牌的杰出产品。</span></p><p><br/></p>','<ul class=\"ul1 list-paddingleft-2\" style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><li><p>人体工程学设计<br/></p></li><li><p><span style=\"box-sizing: border-box;\">意大利设计和制造</span></p></li><li><p><span style=\"box-sizing: border-box;\">设计师风格，带薄款和厚款拉链保护套</span></p></li><li><p><span style=\"box-sizing: border-box;\">保修</span>: 5+5&nbsp;<span style=\"box-sizing: border-box;\">年</span></p></li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-weight: 700;\">现有尺寸:</span></p><p>Classic Deluxe 11:&nbsp; 66x40x11cm</p><p>Classic Deluxe 11:&nbsp; 66x40x11cm</p><p>Classic Deluxe 14:&nbsp; 66x40x14cm</p><p>Classic Deluxe 14:&nbsp; 66x40x14cm</p><ul class=\"ul1 list-paddingleft-2\" style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></ul>');
INSERT INTO `clt_mproduction` VALUES ('11','花型波浪按摩枕Patternand wave-shaped massage pillow','color:;font-weight:normal;','','13','1','1','admin','4','1523860937','1523865754','0','0','31','<p>高低设计贴合颈椎曲线，有效分散头颈压力，实现舒适睡眠。</p><p><br/></p>','<p>高低设计贴合颈椎曲线，有效分散头颈压力，实现舒适睡眠。</p><p><br/></p>','/uploads/20180416/26af84379fb355f003f1967b766b4a19.jpg;','','','','','','','','','','','','','','','','','','','','<p>规格：65x40x10/12 cm</p><p>Specification: 65x40x10/12cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('5','Classic  Anatomic 经典舒适型','color:;font-weight:bold;','','45','1','1','admin','2','1521867517','1523863162','0','0','30','<p>提供了极好的支持，可以舒缓颈部，背部或肩部的疼痛，让肌肉松弛。给您带来独特的清爽感，可以缓解头痛问题，让你的睡眠清爽舒适！</p><p><br/></p>','<p>为有颈部、背部或肩部疼痛的人士设计，不但提供良好承托，而且能使肌肉放松，适合习惯侧睡人士使用</p>','/uploads/20180416/ae8bbd9f110b046c18280d7ea73231e7.jpg;/uploads/20180416/5e5f6ac9da31bf72dd2107c3a6fdb1f1.jpg;/uploads/20180416/35dcbaab37d3c62028c9b293a0169725.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('3','Estasi柔软款 床垫','color:;font-weight:normal;','/uploads/20180416/4cb8e83b54cd1fd2e613c2f9cc91f203.jpg','138','1','1','admin','1','1519550801','1523870632','0','0','29','<p>1.7厘米厚的DavidFlynn凝胶层令Estasi柔软款受到侧卧睡眠者或偏爱柔软舒适床垫的人士的欢迎。</p>','<p>1.7厘米厚的DavidFlynn凝胶层令Estasi柔软款受到侧卧睡眠者或偏爱柔软舒适床垫的人士的欢迎。</p>','/uploads/20180416/ee349f322a74f9761cd20dc8d957d83d.jpg;','','针对下背部疼痛','经过人体工程学设计，为最为日常的活动——就座提供卓越舒适。只要将腰枕放于背后，您就可以和下背部疼痛告别了。','','','','','','凉爽的温度调节','','','','','','采用一种天然的热导体，您可以享受凉爽的感觉，保持放松、无压力并专注于手上的工作。','','','','<p>加厚的DavidFlynn层帮助您保持舒适和凉爽。独特的3-区域设计为肩部和臀部提供额外缓冲以及下背部定位支撑。这一个性化的压力缓解令Estasi柔软款床垫尤其受到侧卧睡眠者或偏爱柔软舒适床垫的人士的欢迎。</p><p>不再为了找到舒适睡姿而辗转反侧或因为闷热流汗而醒来，你将入睡并享受在最恢复精力的睡眠阶段不间断休息的益处。</p><p>通过Estasi极致的凝胶体验，您可以每晚享受令人精神焕发的睡眠。感觉就是相信。寻找授权的Technogel®床垫零售商并访问您附近的商店，发现远胜其他品牌的杰出产品。</p><p><br/></p><p><br/></p>','<ul class=\"ul1 list-paddingleft-2\" style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><li><p>25 厘米总厚度</p></li><li><p>1.7厘米厚DavidFlynn层</p></li><li><p>人体工程学设计</p></li><li><p>意大利设计和制造</p></li><li><p>设计师风格，带薄款和厚款拉链保护套</p></li><li><p>保修: 5+5 年</p></li></ul><p>现有尺寸</p><ul class=\"ul1 list-paddingleft-2\" style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><li><p>90 x 200 x 25 厘米</p></li><li><p>100 x 200 x 25 厘米<br/></p></li><li><p>80 x 200 x 25 厘米</p></li><li><p>90 x 190 x&nbsp;25 厘米</p></li><li><p>120 x 200&nbsp;x 25 厘米</p></li><li><p>140 x 200&nbsp;x 25 厘米</p></li><li><p>160 x 200 x 25 厘米</p></li><li><p>180 x 200 x 25 厘米</p></li><li><p>200 x 200 x 25 厘米</p></li></ul><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('8','波浪枕 Wave-shapedpillow','color:;font-weight:normal;','','63','1','1','admin','1','1523859026','1523865609','0','0','31','<p>S型波浪设计，稳固睡姿保护颈椎，预防落枕，改善不良睡姿，提升睡眠深度和质量。</p><p><br/></p>','<p>S型波浪设计，稳固睡姿保护颈椎，预防落枕，改善不良睡姿，提升睡眠深度和质量。</p><p><br/></p>','/uploads/20180416/52b8aaf15bc07b7392eaea606d8f7782.jpg;','','舒适','','','','','','','深度睡眠','','','','','','','','','','<p>S型波浪设计，稳固睡姿保护颈椎，预防落枕，改善不良睡姿，提升睡眠深度和质量。</p><p><br/></p>','<p>BIG&nbsp; :&nbsp; 60x40x10/12 cm</p><p>BIG: 60x40x10/12 cm</p><p>KIDS :&nbsp; 50x30xx7/9 cm</p><p>KIDS: 50x30xx7/9 cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('9','大面包枕 Bread-shaped pillow','color:;font-weight:normal;','','52','1','1','admin','2','1523860578','1523865635','0','0','31','<p>专为颈、肩、背部不适人群设计，良好承托，有效放松肌肉，适合任何睡眠习惯的人士使用。</p><p><br/></p>','<p style=\"white-space: normal;\">专为颈、肩、背部不适人群设计，良好承托，有效放松肌肉，适合任何睡眠习惯的人士使用。</p><p><br/></p>','/uploads/20180416/2dc2659e0df84cdada34aa2f8714c0f3.jpg;','','','','','','','','','','','','','','','','','','','','<p>规格：60x40x13cm</p><p>Specification: 60x40x13cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('10','狼牙按摩枕Sophora  viciifolia  massage  pillow','color:;font-weight:normal;','','17','1','1','admin','3','1523860861','1523865716','0','0','31','<p>根据人体肩宽设计，贴心呵护颈肩，颗粒状凸起按摩头部穴位，蜂巢式气孔吸湿透气，面部达到深睡中畅享SPA</p><p><br/></p>','<p>根据人体肩宽设计，贴心呵护颈肩，颗粒状凸起按摩头部穴位，蜂巢式气孔吸湿透气，面部达到深睡中畅享SPA</p><p><br/></p>','/uploads/20180416/011ccff240cbba092f57094dc844789a.jpg;','','','','','','','','','','','','','','','','','','','','<p>规格：60x40x10/12 cm</p><p>Specification: 60x40x10/12cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('6','旅行枕','color:;font-weight:normal;','','53','1','1','admin','1','1522142309','1523870329','0','0','28','<p>体积小巧可方便地置于行李箱内，旅行枕帮助您在离家时获得美好睡眠。</p>','<p>体积小巧可方便地置于行李箱内，旅行枕帮助您在离家时获得美好睡眠。</p>','/uploads/20180416/9c21659f84d4130a842b35ea8b54a692.jpg;','','小巧便于携带','体积小巧，很适合长途使用，带在旅行箱内不占空间','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('7','Estasi坚实款 床垫','color:;font-weight:normal;','','67','1','1','admin','2','1522142473','1523870544','0','0','29','<p>1.7厘米厚的Technogel凝胶层令Estasi坚实款成为喜爱舒适和更强支撑感的海绵床垫的人士的理想选择。</p>','<p>1.7厘米厚的Technogel凝胶层令Estasi坚实款成为喜爱舒适和更强支撑感的海绵床垫的人士的理想选择。</p>','/uploads/20180416/6d1ba41df24ff3e446cbd35a2490ddf6.jpg;','','定位缓冲','独特的3-区域设计提供了额外的肩部和臀部缓冲以及下背部支撑。从您入睡的那一刻起到第二天起床时始终保持舒适。不必在早晨活动您的关节；精神焕发地醒来并整装待发。','','','','','','个性化支撑','天然凉爽和设计','','','','DavidFlynn的天然高导热性意味着它能整晚帮助您分散身体热量。此外，创新的网格设计有助促进空气流通和透气性，从而加强温度调节。','我们称之为3D变形。您可以称之为前所未有的美好夜晚。像水一样具有适应性，又具有固体的支撑性，逐步且独特地适应您的身体，缓解压力的同时不限制运动。','','','','<p>加厚的DavidFlynn层帮助您保持舒适和凉爽。独特的3-区域设计为肩部和臀部提供额外缓冲以及下背部定位支撑。这一个性化的压力缓解令Estasi坚实款床垫尤其受到侧卧睡眠者或偏爱坚实支撑床垫的人士的欢迎。</p><p>不再为了找到舒适睡姿而辗转反侧或因为闷热流汗而醒来，你将入睡并享受在最恢复精力的睡眠阶段不间断休息的益处。</p><p>通过Estasi极致的凝胶体验，您可以每晚享受令人精神焕发的睡眠。感觉就是相信。寻找授权的DavidFlynn床垫零售商并访问您附近的商店，发现远胜其他品牌的杰出产品。</p><p><br/></p>','<ul class=\"ul1 list-paddingleft-2\" style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><li><p>25 厘米总厚度</p></li><li><p>1.7&nbsp;<span style=\"box-sizing: border-box;\">厘米厚</span>Technogel®层</p></li><li><p>人体工程学设计</p></li><li><p><span style=\"box-sizing: border-box;\">意大利设计和制造</span></p></li><li><p><span style=\"box-sizing: border-box;\">设计师风格，带薄款和厚款拉链保护套</span></p></li><li><p><span style=\"box-sizing: border-box;\">保修</span>: 5+5&nbsp;<span style=\"box-sizing: border-box;\">年</span></p></li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-weight: 700;\">现有尺寸:</span></p><ul class=\"ul1 list-paddingleft-2\" style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><li><p>90 x 200 x 25 厘米</p></li><li><p>100 x 200 x 25 厘米</p></li><li><p>80 x 200 x 25 厘米</p></li><li><p>90 x 190 x 25 厘米</p></li><li><p>120 x 200 x 25 厘米</p></li><li><p>140 x 200 x 25 厘米</p></li><li><p>160 x 200 x 25 厘米</p></li><li><p>180 x 200 x 25 厘米</p></li><li><p>200 x 200 x 25 厘米</p></li></ul><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('17','Noble Contour 高贵 护颈型','color:;font-weight:normal;','','14','1','1','admin','7','1523864352','0','0','0','30','<p>此款豪华 枕头采用三维立体凝胶，出色的人体工程学支撑头部和颈部，更加透气，有助于脊柱的整体排列。供清凉的感觉，不仅让您随时随地保持安稳的睡眠，也可以缓解头痛症状。</p><p><br/></p>','<p>适用于颈椎或肩背疼痛的人士，建议肩背疼痛且习惯一般枕头高度的人使用。</p><p><br/></p>','/uploads/20180416/748570c7b986fe10eb27df3c0dca8162.jpg;/uploads/20180416/6876fdc415da69335c25a24a51d37aff.jpg;/uploads/20180416/90b51e09ee46cc486503acc289454683.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('18','Comfortable G Basic 舒适金  基础型','color:;font-weight:normal;','','12','1','1','admin','9','1523864578','0','0','0','30','<p>出色的人体工程学支撑头部和颈部，有助于脊柱的最佳排列。提供清爽的感觉，这不仅让您随时随地保持安稳的睡眠，也可以缓解头痛症状。</p><p><br/></p>','<p><span style=\"font-size:16px;font-family:宋体;background: white\">推荐给那些偏爱传统枕头，习惯仰睡以及大、中体型的人使用。它能适应每个身体的形状和睡姿。</span></p><p><br/></p>','/uploads/20180416/b97e417148a7f78525ba0bc3342db16d.jpg;/uploads/20180416/ccab4d5b18b624d5507dc4abb082e7ff.jpg;/uploads/20180416/5cde5a4613dd8f337d5701eb75d3ae4f.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('19','Comfortable G Basic 舒适金  基础型','color:;font-weight:normal;','','18','1','1','admin','8','1523864578','0','0','0','30','<p>出色的人体工程学支撑头部和颈部，有助于脊柱的最佳排列。提供清爽的感觉，这不仅让您随时随地保持安稳的睡眠，也可以缓解头痛症状。</p><p><br/></p>','<p><span style=\"font-size:16px;font-family:宋体;background: white\">推荐给那些偏爱传统枕头，习惯仰睡以及大、中体型的人使用。它能适应每个身体的形状和睡姿。</span></p><p><br/></p>','/uploads/20180416/b97e417148a7f78525ba0bc3342db16d.jpg;/uploads/20180416/ccab4d5b18b624d5507dc4abb082e7ff.jpg;/uploads/20180416/5cde5a4613dd8f337d5701eb75d3ae4f.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('20','Exquisite  精巧型','color:;font-weight:normal;','','12','1','1','admin','10','1523864838','0','0','0','30','<p>出色的人体工程学支撑头部和颈部，有助于脊柱的最佳排列。提供清爽的感觉，这不仅让您随时随地保持安稳的睡眠，也可以缓解头痛症状。</p><p><br/></p>','<p>推荐给那些偏爱传统枕头，习惯仰睡以及大、中体型的人使用。它能适应每个身体的形状和睡姿。</p><p><br/></p>','/uploads/20180416/cf09415c6aa18999247f6a8d84206397.jpg;/uploads/20180416/d3c42e3e3b38eed677846021fb0c10bb.jpg;/uploads/20180416/1f45e1483f453516214d177c356e33c5.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('21','Classic Nursing 经典护颈椎型','color:;font-weight:normal;','','14','1','1','admin','11','1523865028','0','0','0','30','<p>出色的人体工程学支撑头部和颈椎部位，有帮助修复颈椎的效果。提供清爽的感觉，这不仅让您随时随地保持安稳的睡眠，也可以缓解颈椎疼痛的症状。</p><p><br/></p>','<p>适用于颈椎及肩部疼痛的人士，建议有颈椎疼痛且习惯一般枕头高度的人使用。</p><p><br/></p>','/uploads/20180416/e7a5be00248bbedde8204524940dba33.jpg;/uploads/20180416/62f11bc4a87a50cc70f1608cd83e5043.jpg;/uploads/20180416/559b4d8639cefbab7806e7fe1fe0de3a.jpg;','','','','','','','','','','','','','','','','','','','','');
INSERT INTO `clt_mproduction` VALUES ('22','U型护颈枕 U-shaped neck pillow','color:;font-weight:normal;','','13','1','1','admin','6','1523865882','1523865987','0','0','31','<p>采用德国特拉雷工艺，缓解颈椎疼痛或疲劳，适用于长途旅行 、长途驾驶以及日常休闲。</p><p><br/></p>','<p>采用德国特拉雷工艺，缓解颈椎疼痛或疲劳，适用于长途旅行 、长途驾驶以及日常休闲。</p>','/uploads/20180416/5dee20f9839bc8205071bc7c6cad4c8a.jpg;','','','','','','','','','','','','','','','','','','','','<p>规格：28x25x10 cm</p><p>Specification: 28x25x10cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('23','儿童波浪枕Children wave-shaped pillow','color:;font-weight:normal;','','16','1','1','admin','7','1523866009','0','0','0','31','<p>为宝宝安稳睡眠保驾护航/呵护百万儿童健康成长</p><p><br/></p>','<p>贴合宝宝颈部曲线，有效舒缓后脑勺承担的压力，矫正睡姿的同时保护儿童颈椎，增加宝宝的舒适感，利于快速进入深度睡眠状态。</p><p><br/></p>','/uploads/20180416/adf63a760abc39eaa96d01f3b4b607fb.jpg;','','','','','','','','','','','','','','','','','','','','<p>规格 :&nbsp; 50x30xx7/9 cm</p><p>Specification: 50x30xx7/9cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('25','婴儿枕 Baby bolster','color:;font-weight:normal;','','9','1','1','admin','8','1523866174','0','0','0','31','<p>妈妈的放心之选/定型护颈，塑造宝宝漂亮头型</p><p><br/></p>','<p>贴合婴儿头部，起到头部定型作用，肩颈重力轮廓有效分解压力，让婴儿睡眠更舒适。</p><p><br/></p>','/uploads/20180416/ce94d9d1ced33307d84ad3b5e5a54410.jpg;','','','','','','','','','','','','','','','','','','','','<p>规格：30x25x5 cm</p><p>Specification: 50x30xx7/9cm</p><p><br/></p>');
INSERT INTO `clt_mproduction` VALUES ('26','Armonia 床垫','color:;font-weight:normal;','','14','1','1','admin','3','1523870011','1523870684','0','0','29','<p>完美融合了舒适和支撑力的中等凉爽床垫，是追求坚实感和DavidFlynn附加优点的人士的理想选择。</p>','<p>完美融合了舒适和支撑力的中等凉爽床垫，是追求坚实感和DavidFlynn附加优点的人士的理想选择。</p>','/uploads/20180416/8ea37ddf2d95baf30dfdd95de9d10587.jpg;','','舒适的坚实床垫','耐用的海绵床垫配以加厚凝胶顶层，拥抱您的身体并令其恢复精力，提供均匀的压力分布帮助避免关节压力，缓解颈部、肩部和背部疼痛。','','','','','','天然凉爽和设计','深度睡眠从这里开始','','','','临床测试显示DavidFlynn床垫有助减少多达33%的浅度睡眠，增加多达45%的深度睡眠。这是令人大开眼界的事实！','DavidFlynn的天然高导热性意味着它能整晚帮助您分散身体热量。此外，创新的网格设计有助促进空气流通和透气性，从而加强温度调节。','','','','<p>这款床垫使用了整层DavidFlynn，提供了极致的缓压和支撑。Armonia是追求坚实感觉、凉爽睡眠层的附加优点以及有助避免关节压力的均匀压力分布的人士的理想选择。</p><p>1厘米厚的塔型设计DavidFlynn层承托着您的整个身体。在这款床垫上入睡，您会爱上这种感觉。</p><p>感觉就是相信。寻找授权的DavidFlynn床垫零售商并访问您附近的商店，发现远胜其他品牌的杰出产品。</p><p><br/></p>','<ul style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>22厘米总厚度</p></li><li><p>1厘米厚Technogel®层</p></li><li><p>人体工程学设计</p></li><li><p>意大利设计和制造</p></li><li><p>保修: 5 + 5年</p></li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-weight: 700;\">现有尺寸:</span></p><ul style=\"box-sizing: border-box; padding: 0px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>90 x 200 x 22 厘米</p></li><li><p>100 x 200 x 22 厘米</p></li><li><p>80 x 200 x 22 厘米</p></li><li><p>90 x 190 x 22 厘米</p></li><li><p>120 x 200 x 22 厘米</p></li><li><p>140 x 200 x 22 厘米</p></li><li><p>160 x 200 x 22 厘米</p></li><li><p>180 x 200 x 22 厘米</p></li><li><p>200 x 200 x 22 厘米</p></li></ul><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"s2\" style=\"box-sizing: border-box;\">&nbsp;</span></p><p class=\"p3\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; font-family: lexia; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p><br/></p>');
--
-- 表的结构 `clt_msub`
-- 
DROP TABLE IF EXISTS `clt_msub`;
CREATE TABLE `clt_msub` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template` varchar(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `picture` varchar(80) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `picture_align` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_order`
-- 
DROP TABLE IF EXISTS `clt_order`;
CREATE TABLE `clt_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` char(22) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `price` decimal(10,0) unsigned NOT NULL DEFAULT '0',
  `productlist` mediumtext NOT NULL,
  `note` mediumtext NOT NULL,
  `realname` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(18) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(80) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) ,
  KEY `sn` (`sn`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_plugin`
-- 
DROP TABLE IF EXISTS `clt_plugin`;
CREATE TABLE `clt_plugin` (
  `code` varchar(13) DEFAULT NULL COMMENT '插件编码',
  `name` varchar(55) DEFAULT NULL COMMENT '中文名字',
  `version` varchar(255) DEFAULT NULL COMMENT '插件的版本',
  `author` varchar(30) DEFAULT NULL COMMENT '插件作者',
  `config` text COMMENT '配置信息',
  `config_value` text COMMENT '配置值信息',
  `desc` varchar(255) DEFAULT NULL COMMENT '插件描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否启用',
  `type` varchar(50) DEFAULT NULL COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `bank_code` text COMMENT '网银配置信息',
  `scene` tinyint(1) DEFAULT '0' COMMENT '使用场景 0 PC+手机 1 手机 2 PC'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_plugin`表中的数据 `clt_plugin`
--
INSERT INTO `clt_plugin` VALUES ('qq','QQ登陆','1.0','褫憷','a:2:{i:0;a:4:{s:4:\"name\";s:6:\"app_id\";s:5:\"label\";s:6:\"app_id\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"app_secret\";s:5:\"label\";s:10:\"app_secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}','a:2:{s:6:\"app_id\";s:14:\"10138dsfdf6319\";s:10:\"app_secret\";s:40:\"f328198fe17031567fedd81110dsfdf24944f4d4\";}','QQ登陆插件 ','1','login','logo.png','N;',0);
--
-- 表的结构 `clt_posid`
-- 
DROP TABLE IF EXISTS `clt_posid`;
CREATE TABLE `clt_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_posid`表中的数据 `clt_posid`
--
INSERT INTO `clt_posid` VALUES ('1','首页推荐','0');
INSERT INTO `clt_posid` VALUES ('2','当前分类推荐','0');
--
-- 表的结构 `clt_region`
-- 
DROP TABLE IF EXISTS `clt_region`;
CREATE TABLE `clt_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM AUTO_INCREMENT=3726 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_region`表中的数据 `clt_region`
--
INSERT INTO `clt_region` VALUES ('1','0','中国','0');
INSERT INTO `clt_region` VALUES ('2','1','北京','1');
INSERT INTO `clt_region` VALUES ('3','1','安徽','1');
INSERT INTO `clt_region` VALUES ('4','1','福建','1');
INSERT INTO `clt_region` VALUES ('5','1','甘肃','1');
INSERT INTO `clt_region` VALUES ('6','1','广东','1');
INSERT INTO `clt_region` VALUES ('7','1','广西','1');
INSERT INTO `clt_region` VALUES ('8','1','贵州','1');
INSERT INTO `clt_region` VALUES ('9','1','海南','1');
INSERT INTO `clt_region` VALUES ('10','1','河北','1');
INSERT INTO `clt_region` VALUES ('11','1','河南','1');
INSERT INTO `clt_region` VALUES ('12','1','黑龙江','1');
INSERT INTO `clt_region` VALUES ('13','1','湖北','1');
INSERT INTO `clt_region` VALUES ('14','1','湖南','1');
INSERT INTO `clt_region` VALUES ('15','1','吉林','1');
INSERT INTO `clt_region` VALUES ('16','1','江苏','1');
INSERT INTO `clt_region` VALUES ('17','1','江西','1');
INSERT INTO `clt_region` VALUES ('18','1','辽宁','1');
INSERT INTO `clt_region` VALUES ('19','1','内蒙古','1');
INSERT INTO `clt_region` VALUES ('20','1','宁夏','1');
INSERT INTO `clt_region` VALUES ('21','1','青海','1');
INSERT INTO `clt_region` VALUES ('22','1','山东','1');
INSERT INTO `clt_region` VALUES ('23','1','山西','1');
INSERT INTO `clt_region` VALUES ('24','1','陕西','1');
INSERT INTO `clt_region` VALUES ('25','1','上海','1');
INSERT INTO `clt_region` VALUES ('26','1','四川','1');
INSERT INTO `clt_region` VALUES ('27','1','天津','1');
INSERT INTO `clt_region` VALUES ('28','1','西藏','1');
INSERT INTO `clt_region` VALUES ('29','1','新疆','1');
INSERT INTO `clt_region` VALUES ('30','1','云南','1');
INSERT INTO `clt_region` VALUES ('31','1','浙江','1');
INSERT INTO `clt_region` VALUES ('32','1','重庆','1');
INSERT INTO `clt_region` VALUES ('33','1','香港','1');
INSERT INTO `clt_region` VALUES ('34','1','澳门','1');
INSERT INTO `clt_region` VALUES ('35','1','台湾','1');
INSERT INTO `clt_region` VALUES ('36','3','安庆','2');
INSERT INTO `clt_region` VALUES ('37','3','蚌埠','2');
INSERT INTO `clt_region` VALUES ('38','3','巢湖','2');
INSERT INTO `clt_region` VALUES ('39','3','池州','2');
INSERT INTO `clt_region` VALUES ('40','3','滁州','2');
INSERT INTO `clt_region` VALUES ('41','3','阜阳','2');
INSERT INTO `clt_region` VALUES ('42','3','淮北','2');
INSERT INTO `clt_region` VALUES ('43','3','淮南','2');
INSERT INTO `clt_region` VALUES ('44','3','黄山','2');
INSERT INTO `clt_region` VALUES ('45','3','六安','2');
INSERT INTO `clt_region` VALUES ('46','3','马鞍山','2');
INSERT INTO `clt_region` VALUES ('47','3','宿州','2');
INSERT INTO `clt_region` VALUES ('48','3','铜陵','2');
INSERT INTO `clt_region` VALUES ('49','3','芜湖','2');
INSERT INTO `clt_region` VALUES ('50','3','宣城','2');
INSERT INTO `clt_region` VALUES ('51','3','亳州','2');
INSERT INTO `clt_region` VALUES ('52','2','北京','2');
INSERT INTO `clt_region` VALUES ('53','4','福州','2');
INSERT INTO `clt_region` VALUES ('54','4','龙岩','2');
INSERT INTO `clt_region` VALUES ('55','4','南平','2');
INSERT INTO `clt_region` VALUES ('56','4','宁德','2');
INSERT INTO `clt_region` VALUES ('57','4','莆田','2');
INSERT INTO `clt_region` VALUES ('58','4','泉州','2');
INSERT INTO `clt_region` VALUES ('59','4','三明','2');
INSERT INTO `clt_region` VALUES ('60','4','厦门','2');
INSERT INTO `clt_region` VALUES ('61','4','漳州','2');
INSERT INTO `clt_region` VALUES ('62','5','兰州','2');
INSERT INTO `clt_region` VALUES ('63','5','白银','2');
INSERT INTO `clt_region` VALUES ('64','5','定西','2');
INSERT INTO `clt_region` VALUES ('65','5','甘南','2');
INSERT INTO `clt_region` VALUES ('66','5','嘉峪关','2');
INSERT INTO `clt_region` VALUES ('67','5','金昌','2');
INSERT INTO `clt_region` VALUES ('68','5','酒泉','2');
INSERT INTO `clt_region` VALUES ('69','5','临夏','2');
INSERT INTO `clt_region` VALUES ('70','5','陇南','2');
INSERT INTO `clt_region` VALUES ('71','5','平凉','2');
INSERT INTO `clt_region` VALUES ('72','5','庆阳','2');
INSERT INTO `clt_region` VALUES ('73','5','天水','2');
INSERT INTO `clt_region` VALUES ('74','5','武威','2');
INSERT INTO `clt_region` VALUES ('75','5','张掖','2');
INSERT INTO `clt_region` VALUES ('76','6','广州','2');
INSERT INTO `clt_region` VALUES ('77','6','深圳','2');
INSERT INTO `clt_region` VALUES ('78','6','潮州','2');
INSERT INTO `clt_region` VALUES ('79','6','东莞','2');
INSERT INTO `clt_region` VALUES ('80','6','佛山','2');
INSERT INTO `clt_region` VALUES ('81','6','河源','2');
INSERT INTO `clt_region` VALUES ('82','6','惠州','2');
INSERT INTO `clt_region` VALUES ('83','6','江门','2');
INSERT INTO `clt_region` VALUES ('84','6','揭阳','2');
INSERT INTO `clt_region` VALUES ('85','6','茂名','2');
INSERT INTO `clt_region` VALUES ('86','6','梅州','2');
INSERT INTO `clt_region` VALUES ('87','6','清远','2');
INSERT INTO `clt_region` VALUES ('88','6','汕头','2');
INSERT INTO `clt_region` VALUES ('89','6','汕尾','2');
INSERT INTO `clt_region` VALUES ('90','6','韶关','2');
INSERT INTO `clt_region` VALUES ('91','6','阳江','2');
INSERT INTO `clt_region` VALUES ('92','6','云浮','2');
INSERT INTO `clt_region` VALUES ('93','6','湛江','2');
INSERT INTO `clt_region` VALUES ('94','6','肇庆','2');
INSERT INTO `clt_region` VALUES ('95','6','中山','2');
INSERT INTO `clt_region` VALUES ('96','6','珠海','2');
INSERT INTO `clt_region` VALUES ('97','7','南宁','2');
INSERT INTO `clt_region` VALUES ('98','7','桂林','2');
INSERT INTO `clt_region` VALUES ('99','7','百色','2');
INSERT INTO `clt_region` VALUES ('100','7','北海','2');
INSERT INTO `clt_region` VALUES ('101','7','崇左','2');
INSERT INTO `clt_region` VALUES ('102','7','防城港','2');
INSERT INTO `clt_region` VALUES ('103','7','贵港','2');
INSERT INTO `clt_region` VALUES ('104','7','河池','2');
INSERT INTO `clt_region` VALUES ('105','7','贺州','2');
INSERT INTO `clt_region` VALUES ('106','7','来宾','2');
INSERT INTO `clt_region` VALUES ('107','7','柳州','2');
INSERT INTO `clt_region` VALUES ('108','7','钦州','2');
INSERT INTO `clt_region` VALUES ('109','7','梧州','2');
INSERT INTO `clt_region` VALUES ('110','7','玉林','2');
INSERT INTO `clt_region` VALUES ('111','8','贵阳','2');
INSERT INTO `clt_region` VALUES ('112','8','安顺','2');
INSERT INTO `clt_region` VALUES ('113','8','毕节','2');
INSERT INTO `clt_region` VALUES ('114','8','六盘水','2');
INSERT INTO `clt_region` VALUES ('115','8','黔东南','2');
INSERT INTO `clt_region` VALUES ('116','8','黔南','2');
INSERT INTO `clt_region` VALUES ('117','8','黔西南','2');
INSERT INTO `clt_region` VALUES ('118','8','铜仁','2');
INSERT INTO `clt_region` VALUES ('119','8','遵义','2');
INSERT INTO `clt_region` VALUES ('120','9','海口','2');
INSERT INTO `clt_region` VALUES ('121','9','三亚','2');
INSERT INTO `clt_region` VALUES ('122','9','白沙','2');
INSERT INTO `clt_region` VALUES ('123','9','保亭','2');
INSERT INTO `clt_region` VALUES ('124','9','昌江','2');
INSERT INTO `clt_region` VALUES ('125','9','澄迈县','2');
INSERT INTO `clt_region` VALUES ('126','9','定安县','2');
INSERT INTO `clt_region` VALUES ('127','9','东方','2');
INSERT INTO `clt_region` VALUES ('128','9','乐东','2');
INSERT INTO `clt_region` VALUES ('129','9','临高县','2');
INSERT INTO `clt_region` VALUES ('130','9','陵水','2');
INSERT INTO `clt_region` VALUES ('131','9','琼海','2');
INSERT INTO `clt_region` VALUES ('132','9','琼中','2');
INSERT INTO `clt_region` VALUES ('133','9','屯昌县','2');
INSERT INTO `clt_region` VALUES ('134','9','万宁','2');
INSERT INTO `clt_region` VALUES ('135','9','文昌','2');
INSERT INTO `clt_region` VALUES ('136','9','五指山','2');
INSERT INTO `clt_region` VALUES ('137','9','儋州','2');
INSERT INTO `clt_region` VALUES ('138','10','石家庄','2');
INSERT INTO `clt_region` VALUES ('139','10','保定','2');
INSERT INTO `clt_region` VALUES ('140','10','沧州','2');
INSERT INTO `clt_region` VALUES ('141','10','承德','2');
INSERT INTO `clt_region` VALUES ('142','10','邯郸','2');
INSERT INTO `clt_region` VALUES ('143','10','衡水','2');
INSERT INTO `clt_region` VALUES ('144','10','廊坊','2');
INSERT INTO `clt_region` VALUES ('145','10','秦皇岛','2');
INSERT INTO `clt_region` VALUES ('146','10','唐山','2');
INSERT INTO `clt_region` VALUES ('147','10','邢台','2');
INSERT INTO `clt_region` VALUES ('148','10','张家口','2');
INSERT INTO `clt_region` VALUES ('149','11','郑州','2');
INSERT INTO `clt_region` VALUES ('150','11','洛阳','2');
INSERT INTO `clt_region` VALUES ('151','11','开封','2');
INSERT INTO `clt_region` VALUES ('152','11','安阳','2');
INSERT INTO `clt_region` VALUES ('153','11','鹤壁','2');
INSERT INTO `clt_region` VALUES ('154','11','济源','2');
INSERT INTO `clt_region` VALUES ('155','11','焦作','2');
INSERT INTO `clt_region` VALUES ('156','11','南阳','2');
INSERT INTO `clt_region` VALUES ('157','11','平顶山','2');
INSERT INTO `clt_region` VALUES ('158','11','三门峡','2');
INSERT INTO `clt_region` VALUES ('159','11','商丘','2');
INSERT INTO `clt_region` VALUES ('160','11','新乡','2');
INSERT INTO `clt_region` VALUES ('161','11','信阳','2');
INSERT INTO `clt_region` VALUES ('162','11','许昌','2');
INSERT INTO `clt_region` VALUES ('163','11','周口','2');
INSERT INTO `clt_region` VALUES ('164','11','驻马店','2');
INSERT INTO `clt_region` VALUES ('165','11','漯河','2');
INSERT INTO `clt_region` VALUES ('166','11','濮阳','2');
INSERT INTO `clt_region` VALUES ('167','12','哈尔滨','2');
INSERT INTO `clt_region` VALUES ('168','12','大庆','2');
INSERT INTO `clt_region` VALUES ('169','12','大兴安岭','2');
INSERT INTO `clt_region` VALUES ('170','12','鹤岗','2');
INSERT INTO `clt_region` VALUES ('171','12','黑河','2');
INSERT INTO `clt_region` VALUES ('172','12','鸡西','2');
INSERT INTO `clt_region` VALUES ('173','12','佳木斯','2');
INSERT INTO `clt_region` VALUES ('174','12','牡丹江','2');
INSERT INTO `clt_region` VALUES ('175','12','七台河','2');
INSERT INTO `clt_region` VALUES ('176','12','齐齐哈尔','2');
INSERT INTO `clt_region` VALUES ('177','12','双鸭山','2');
INSERT INTO `clt_region` VALUES ('178','12','绥化','2');
INSERT INTO `clt_region` VALUES ('179','12','伊春','2');
INSERT INTO `clt_region` VALUES ('180','13','武汉','2');
INSERT INTO `clt_region` VALUES ('181','13','仙桃','2');
INSERT INTO `clt_region` VALUES ('182','13','鄂州','2');
INSERT INTO `clt_region` VALUES ('183','13','黄冈','2');
INSERT INTO `clt_region` VALUES ('184','13','黄石','2');
INSERT INTO `clt_region` VALUES ('185','13','荆门','2');
INSERT INTO `clt_region` VALUES ('186','13','荆州','2');
INSERT INTO `clt_region` VALUES ('187','13','潜江','2');
INSERT INTO `clt_region` VALUES ('188','13','神农架林区','2');
INSERT INTO `clt_region` VALUES ('189','13','十堰','2');
INSERT INTO `clt_region` VALUES ('190','13','随州','2');
INSERT INTO `clt_region` VALUES ('191','13','天门','2');
INSERT INTO `clt_region` VALUES ('192','13','咸宁','2');
INSERT INTO `clt_region` VALUES ('193','13','襄樊','2');
INSERT INTO `clt_region` VALUES ('194','13','孝感','2');
INSERT INTO `clt_region` VALUES ('195','13','宜昌','2');
INSERT INTO `clt_region` VALUES ('196','13','恩施','2');
INSERT INTO `clt_region` VALUES ('197','14','长沙','2');
INSERT INTO `clt_region` VALUES ('198','14','张家界','2');
INSERT INTO `clt_region` VALUES ('199','14','常德','2');
INSERT INTO `clt_region` VALUES ('200','14','郴州','2');
INSERT INTO `clt_region` VALUES ('201','14','衡阳','2');
INSERT INTO `clt_region` VALUES ('202','14','怀化','2');
INSERT INTO `clt_region` VALUES ('203','14','娄底','2');
INSERT INTO `clt_region` VALUES ('204','14','邵阳','2');
INSERT INTO `clt_region` VALUES ('205','14','湘潭','2');
INSERT INTO `clt_region` VALUES ('206','14','湘西','2');
INSERT INTO `clt_region` VALUES ('207','14','益阳','2');
INSERT INTO `clt_region` VALUES ('208','14','永州','2');
INSERT INTO `clt_region` VALUES ('209','14','岳阳','2');
INSERT INTO `clt_region` VALUES ('210','14','株洲','2');
INSERT INTO `clt_region` VALUES ('211','15','长春','2');
INSERT INTO `clt_region` VALUES ('212','15','吉林','2');
INSERT INTO `clt_region` VALUES ('213','15','白城','2');
INSERT INTO `clt_region` VALUES ('214','15','白山','2');
INSERT INTO `clt_region` VALUES ('215','15','辽源','2');
INSERT INTO `clt_region` VALUES ('216','15','四平','2');
INSERT INTO `clt_region` VALUES ('217','15','松原','2');
INSERT INTO `clt_region` VALUES ('218','15','通化','2');
INSERT INTO `clt_region` VALUES ('219','15','延边','2');
INSERT INTO `clt_region` VALUES ('220','16','南京','2');
INSERT INTO `clt_region` VALUES ('221','16','苏州','2');
INSERT INTO `clt_region` VALUES ('222','16','无锡','2');
INSERT INTO `clt_region` VALUES ('223','16','常州','2');
INSERT INTO `clt_region` VALUES ('224','16','淮安','2');
INSERT INTO `clt_region` VALUES ('225','16','连云港','2');
INSERT INTO `clt_region` VALUES ('226','16','南通','2');
INSERT INTO `clt_region` VALUES ('227','16','宿迁','2');
INSERT INTO `clt_region` VALUES ('228','16','泰州','2');
INSERT INTO `clt_region` VALUES ('229','16','徐州','2');
INSERT INTO `clt_region` VALUES ('230','16','盐城','2');
INSERT INTO `clt_region` VALUES ('231','16','扬州','2');
INSERT INTO `clt_region` VALUES ('232','16','镇江','2');
INSERT INTO `clt_region` VALUES ('233','17','南昌','2');
INSERT INTO `clt_region` VALUES ('234','17','抚州','2');
INSERT INTO `clt_region` VALUES ('235','17','赣州','2');
INSERT INTO `clt_region` VALUES ('236','17','吉安','2');
INSERT INTO `clt_region` VALUES ('237','17','景德镇','2');
INSERT INTO `clt_region` VALUES ('238','17','九江','2');
INSERT INTO `clt_region` VALUES ('239','17','萍乡','2');
INSERT INTO `clt_region` VALUES ('240','17','上饶','2');
INSERT INTO `clt_region` VALUES ('241','17','新余','2');
INSERT INTO `clt_region` VALUES ('242','17','宜春','2');
INSERT INTO `clt_region` VALUES ('243','17','鹰潭','2');
INSERT INTO `clt_region` VALUES ('244','18','沈阳','2');
INSERT INTO `clt_region` VALUES ('245','18','大连','2');
INSERT INTO `clt_region` VALUES ('246','18','鞍山','2');
INSERT INTO `clt_region` VALUES ('247','18','本溪','2');
INSERT INTO `clt_region` VALUES ('248','18','朝阳','2');
INSERT INTO `clt_region` VALUES ('249','18','丹东','2');
INSERT INTO `clt_region` VALUES ('250','18','抚顺','2');
INSERT INTO `clt_region` VALUES ('251','18','阜新','2');
INSERT INTO `clt_region` VALUES ('252','18','葫芦岛','2');
INSERT INTO `clt_region` VALUES ('253','18','锦州','2');
INSERT INTO `clt_region` VALUES ('254','18','辽阳','2');
INSERT INTO `clt_region` VALUES ('255','18','盘锦','2');
INSERT INTO `clt_region` VALUES ('256','18','铁岭','2');
INSERT INTO `clt_region` VALUES ('257','18','营口','2');
INSERT INTO `clt_region` VALUES ('258','19','呼和浩特','2');
INSERT INTO `clt_region` VALUES ('259','19','阿拉善盟','2');
INSERT INTO `clt_region` VALUES ('260','19','巴彦淖尔盟','2');
INSERT INTO `clt_region` VALUES ('261','19','包头','2');
INSERT INTO `clt_region` VALUES ('262','19','赤峰','2');
INSERT INTO `clt_region` VALUES ('263','19','鄂尔多斯','2');
INSERT INTO `clt_region` VALUES ('264','19','呼伦贝尔','2');
INSERT INTO `clt_region` VALUES ('265','19','通辽','2');
INSERT INTO `clt_region` VALUES ('266','19','乌海','2');
INSERT INTO `clt_region` VALUES ('267','19','乌兰察布市','2');
INSERT INTO `clt_region` VALUES ('268','19','锡林郭勒盟','2');
INSERT INTO `clt_region` VALUES ('269','19','兴安盟','2');
INSERT INTO `clt_region` VALUES ('270','20','银川','2');
INSERT INTO `clt_region` VALUES ('271','20','固原','2');
INSERT INTO `clt_region` VALUES ('272','20','石嘴山','2');
INSERT INTO `clt_region` VALUES ('273','20','吴忠','2');
INSERT INTO `clt_region` VALUES ('274','20','中卫','2');
INSERT INTO `clt_region` VALUES ('275','21','西宁','2');
INSERT INTO `clt_region` VALUES ('276','21','果洛','2');
INSERT INTO `clt_region` VALUES ('277','21','海北','2');
INSERT INTO `clt_region` VALUES ('278','21','海东','2');
INSERT INTO `clt_region` VALUES ('279','21','海南','2');
INSERT INTO `clt_region` VALUES ('280','21','海西','2');
INSERT INTO `clt_region` VALUES ('281','21','黄南','2');
INSERT INTO `clt_region` VALUES ('282','21','玉树','2');
INSERT INTO `clt_region` VALUES ('283','22','济南','2');
INSERT INTO `clt_region` VALUES ('284','22','青岛','2');
INSERT INTO `clt_region` VALUES ('285','22','滨州','2');
INSERT INTO `clt_region` VALUES ('286','22','德州','2');
INSERT INTO `clt_region` VALUES ('287','22','东营','2');
INSERT INTO `clt_region` VALUES ('288','22','菏泽','2');
INSERT INTO `clt_region` VALUES ('289','22','济宁','2');
INSERT INTO `clt_region` VALUES ('290','22','莱芜','2');
INSERT INTO `clt_region` VALUES ('291','22','聊城','2');
INSERT INTO `clt_region` VALUES ('292','22','临沂','2');
INSERT INTO `clt_region` VALUES ('293','22','日照','2');
INSERT INTO `clt_region` VALUES ('294','22','泰安','2');
INSERT INTO `clt_region` VALUES ('295','22','威海','2');
INSERT INTO `clt_region` VALUES ('296','22','潍坊','2');
INSERT INTO `clt_region` VALUES ('297','22','烟台','2');
INSERT INTO `clt_region` VALUES ('298','22','枣庄','2');
INSERT INTO `clt_region` VALUES ('299','22','淄博','2');
INSERT INTO `clt_region` VALUES ('300','23','太原','2');
INSERT INTO `clt_region` VALUES ('301','23','长治','2');
INSERT INTO `clt_region` VALUES ('302','23','大同','2');
INSERT INTO `clt_region` VALUES ('303','23','晋城','2');
INSERT INTO `clt_region` VALUES ('304','23','晋中','2');
INSERT INTO `clt_region` VALUES ('305','23','临汾','2');
INSERT INTO `clt_region` VALUES ('306','23','吕梁','2');
INSERT INTO `clt_region` VALUES ('307','23','朔州','2');
INSERT INTO `clt_region` VALUES ('308','23','忻州','2');
INSERT INTO `clt_region` VALUES ('309','23','阳泉','2');
INSERT INTO `clt_region` VALUES ('310','23','运城','2');
INSERT INTO `clt_region` VALUES ('311','24','西安','2');
INSERT INTO `clt_region` VALUES ('312','24','安康','2');
INSERT INTO `clt_region` VALUES ('313','24','宝鸡','2');
INSERT INTO `clt_region` VALUES ('314','24','汉中','2');
INSERT INTO `clt_region` VALUES ('315','24','商洛','2');
INSERT INTO `clt_region` VALUES ('316','24','铜川','2');
INSERT INTO `clt_region` VALUES ('317','24','渭南','2');
INSERT INTO `clt_region` VALUES ('318','24','咸阳','2');
INSERT INTO `clt_region` VALUES ('319','24','延安','2');
INSERT INTO `clt_region` VALUES ('320','24','榆林','2');
INSERT INTO `clt_region` VALUES ('321','25','上海','2');
INSERT INTO `clt_region` VALUES ('322','26','成都','2');
INSERT INTO `clt_region` VALUES ('323','26','绵阳','2');
INSERT INTO `clt_region` VALUES ('324','26','阿坝','2');
INSERT INTO `clt_region` VALUES ('325','26','巴中','2');
INSERT INTO `clt_region` VALUES ('326','26','达州','2');
INSERT INTO `clt_region` VALUES ('327','26','德阳','2');
INSERT INTO `clt_region` VALUES ('328','26','甘孜','2');
INSERT INTO `clt_region` VALUES ('329','26','广安','2');
INSERT INTO `clt_region` VALUES ('330','26','广元','2');
INSERT INTO `clt_region` VALUES ('331','26','乐山','2');
INSERT INTO `clt_region` VALUES ('332','26','凉山','2');
INSERT INTO `clt_region` VALUES ('333','26','眉山','2');
INSERT INTO `clt_region` VALUES ('334','26','南充','2');
INSERT INTO `clt_region` VALUES ('335','26','内江','2');
INSERT INTO `clt_region` VALUES ('336','26','攀枝花','2');
INSERT INTO `clt_region` VALUES ('337','26','遂宁','2');
INSERT INTO `clt_region` VALUES ('338','26','雅安','2');
INSERT INTO `clt_region` VALUES ('339','26','宜宾','2');
INSERT INTO `clt_region` VALUES ('340','26','资阳','2');
INSERT INTO `clt_region` VALUES ('341','26','自贡','2');
INSERT INTO `clt_region` VALUES ('342','26','泸州','2');
INSERT INTO `clt_region` VALUES ('343','27','天津','2');
INSERT INTO `clt_region` VALUES ('344','28','拉萨','2');
INSERT INTO `clt_region` VALUES ('345','28','阿里','2');
INSERT INTO `clt_region` VALUES ('346','28','昌都','2');
INSERT INTO `clt_region` VALUES ('347','28','林芝','2');
INSERT INTO `clt_region` VALUES ('348','28','那曲','2');
INSERT INTO `clt_region` VALUES ('349','28','日喀则','2');
INSERT INTO `clt_region` VALUES ('350','28','山南','2');
INSERT INTO `clt_region` VALUES ('351','29','乌鲁木齐','2');
INSERT INTO `clt_region` VALUES ('352','29','阿克苏','2');
INSERT INTO `clt_region` VALUES ('353','29','阿拉尔','2');
INSERT INTO `clt_region` VALUES ('354','29','巴音郭楞','2');
INSERT INTO `clt_region` VALUES ('355','29','博尔塔拉','2');
INSERT INTO `clt_region` VALUES ('356','29','昌吉','2');
INSERT INTO `clt_region` VALUES ('357','29','哈密','2');
INSERT INTO `clt_region` VALUES ('358','29','和田','2');
INSERT INTO `clt_region` VALUES ('359','29','喀什','2');
INSERT INTO `clt_region` VALUES ('360','29','克拉玛依','2');
INSERT INTO `clt_region` VALUES ('361','29','克孜勒苏','2');
INSERT INTO `clt_region` VALUES ('362','29','石河子','2');
INSERT INTO `clt_region` VALUES ('363','29','图木舒克','2');
INSERT INTO `clt_region` VALUES ('364','29','吐鲁番','2');
INSERT INTO `clt_region` VALUES ('365','29','五家渠','2');
INSERT INTO `clt_region` VALUES ('366','29','伊犁','2');
INSERT INTO `clt_region` VALUES ('367','30','昆明','2');
INSERT INTO `clt_region` VALUES ('368','30','怒江','2');
INSERT INTO `clt_region` VALUES ('369','30','普洱','2');
INSERT INTO `clt_region` VALUES ('370','30','丽江','2');
INSERT INTO `clt_region` VALUES ('371','30','保山','2');
INSERT INTO `clt_region` VALUES ('372','30','楚雄','2');
INSERT INTO `clt_region` VALUES ('373','30','大理','2');
INSERT INTO `clt_region` VALUES ('374','30','德宏','2');
INSERT INTO `clt_region` VALUES ('375','30','迪庆','2');
INSERT INTO `clt_region` VALUES ('376','30','红河','2');
INSERT INTO `clt_region` VALUES ('377','30','临沧','2');
INSERT INTO `clt_region` VALUES ('378','30','曲靖','2');
INSERT INTO `clt_region` VALUES ('379','30','文山','2');
INSERT INTO `clt_region` VALUES ('380','30','西双版纳','2');
INSERT INTO `clt_region` VALUES ('381','30','玉溪','2');
INSERT INTO `clt_region` VALUES ('382','30','昭通','2');
INSERT INTO `clt_region` VALUES ('383','31','杭州','2');
INSERT INTO `clt_region` VALUES ('384','31','湖州','2');
INSERT INTO `clt_region` VALUES ('385','31','嘉兴','2');
INSERT INTO `clt_region` VALUES ('386','31','金华','2');
INSERT INTO `clt_region` VALUES ('387','31','丽水','2');
INSERT INTO `clt_region` VALUES ('388','31','宁波','2');
INSERT INTO `clt_region` VALUES ('389','31','绍兴','2');
INSERT INTO `clt_region` VALUES ('390','31','台州','2');
INSERT INTO `clt_region` VALUES ('391','31','温州','2');
INSERT INTO `clt_region` VALUES ('392','31','舟山','2');
INSERT INTO `clt_region` VALUES ('393','31','衢州','2');
INSERT INTO `clt_region` VALUES ('394','32','重庆','2');
INSERT INTO `clt_region` VALUES ('395','33','香港','2');
INSERT INTO `clt_region` VALUES ('396','34','澳门','2');
INSERT INTO `clt_region` VALUES ('397','35','台湾','2');
INSERT INTO `clt_region` VALUES ('398','36','迎江区','3');
INSERT INTO `clt_region` VALUES ('399','36','大观区','3');
INSERT INTO `clt_region` VALUES ('400','36','宜秀区','3');
INSERT INTO `clt_region` VALUES ('401','36','桐城市','3');
INSERT INTO `clt_region` VALUES ('402','36','怀宁县','3');
INSERT INTO `clt_region` VALUES ('403','36','枞阳县','3');
INSERT INTO `clt_region` VALUES ('404','36','潜山县','3');
INSERT INTO `clt_region` VALUES ('405','36','太湖县','3');
INSERT INTO `clt_region` VALUES ('406','36','宿松县','3');
INSERT INTO `clt_region` VALUES ('407','36','望江县','3');
INSERT INTO `clt_region` VALUES ('408','36','岳西县','3');
INSERT INTO `clt_region` VALUES ('409','37','中市区','3');
INSERT INTO `clt_region` VALUES ('410','37','东市区','3');
INSERT INTO `clt_region` VALUES ('411','37','西市区','3');
INSERT INTO `clt_region` VALUES ('412','37','郊区','3');
INSERT INTO `clt_region` VALUES ('413','37','怀远县','3');
INSERT INTO `clt_region` VALUES ('414','37','五河县','3');
INSERT INTO `clt_region` VALUES ('415','37','固镇县','3');
INSERT INTO `clt_region` VALUES ('416','38','居巢区','3');
INSERT INTO `clt_region` VALUES ('417','38','庐江县','3');
INSERT INTO `clt_region` VALUES ('418','38','无为县','3');
INSERT INTO `clt_region` VALUES ('419','38','含山县','3');
INSERT INTO `clt_region` VALUES ('420','38','和县','3');
INSERT INTO `clt_region` VALUES ('421','39','贵池区','3');
INSERT INTO `clt_region` VALUES ('422','39','东至县','3');
INSERT INTO `clt_region` VALUES ('423','39','石台县','3');
INSERT INTO `clt_region` VALUES ('424','39','青阳县','3');
INSERT INTO `clt_region` VALUES ('425','40','琅琊区','3');
INSERT INTO `clt_region` VALUES ('426','40','南谯区','3');
INSERT INTO `clt_region` VALUES ('427','40','天长市','3');
INSERT INTO `clt_region` VALUES ('428','40','明光市','3');
INSERT INTO `clt_region` VALUES ('429','40','来安县','3');
INSERT INTO `clt_region` VALUES ('430','40','全椒县','3');
INSERT INTO `clt_region` VALUES ('431','40','定远县','3');
INSERT INTO `clt_region` VALUES ('432','40','凤阳县','3');
INSERT INTO `clt_region` VALUES ('433','41','蚌山区','3');
INSERT INTO `clt_region` VALUES ('434','41','龙子湖区','3');
INSERT INTO `clt_region` VALUES ('435','41','禹会区','3');
INSERT INTO `clt_region` VALUES ('436','41','淮上区','3');
INSERT INTO `clt_region` VALUES ('437','41','颍州区','3');
INSERT INTO `clt_region` VALUES ('438','41','颍东区','3');
INSERT INTO `clt_region` VALUES ('439','41','颍泉区','3');
INSERT INTO `clt_region` VALUES ('440','41','界首市','3');
INSERT INTO `clt_region` VALUES ('441','41','临泉县','3');
INSERT INTO `clt_region` VALUES ('442','41','太和县','3');
INSERT INTO `clt_region` VALUES ('443','41','阜南县','3');
INSERT INTO `clt_region` VALUES ('444','41','颖上县','3');
INSERT INTO `clt_region` VALUES ('445','42','相山区','3');
INSERT INTO `clt_region` VALUES ('446','42','杜集区','3');
INSERT INTO `clt_region` VALUES ('447','42','烈山区','3');
INSERT INTO `clt_region` VALUES ('448','42','濉溪县','3');
INSERT INTO `clt_region` VALUES ('449','43','田家庵区','3');
INSERT INTO `clt_region` VALUES ('450','43','大通区','3');
INSERT INTO `clt_region` VALUES ('451','43','谢家集区','3');
INSERT INTO `clt_region` VALUES ('452','43','八公山区','3');
INSERT INTO `clt_region` VALUES ('453','43','潘集区','3');
INSERT INTO `clt_region` VALUES ('454','43','凤台县','3');
INSERT INTO `clt_region` VALUES ('455','44','屯溪区','3');
INSERT INTO `clt_region` VALUES ('456','44','黄山区','3');
INSERT INTO `clt_region` VALUES ('457','44','徽州区','3');
INSERT INTO `clt_region` VALUES ('458','44','歙县','3');
INSERT INTO `clt_region` VALUES ('459','44','休宁县','3');
INSERT INTO `clt_region` VALUES ('460','44','黟县','3');
INSERT INTO `clt_region` VALUES ('461','44','祁门县','3');
INSERT INTO `clt_region` VALUES ('462','45','金安区','3');
INSERT INTO `clt_region` VALUES ('463','45','裕安区','3');
INSERT INTO `clt_region` VALUES ('464','45','寿县','3');
INSERT INTO `clt_region` VALUES ('465','45','霍邱县','3');
INSERT INTO `clt_region` VALUES ('466','45','舒城县','3');
INSERT INTO `clt_region` VALUES ('467','45','金寨县','3');
INSERT INTO `clt_region` VALUES ('468','45','霍山县','3');
INSERT INTO `clt_region` VALUES ('469','46','雨山区','3');
INSERT INTO `clt_region` VALUES ('470','46','花山区','3');
INSERT INTO `clt_region` VALUES ('471','46','金家庄区','3');
INSERT INTO `clt_region` VALUES ('472','46','当涂县','3');
INSERT INTO `clt_region` VALUES ('473','47','埇桥区','3');
INSERT INTO `clt_region` VALUES ('474','47','砀山县','3');
INSERT INTO `clt_region` VALUES ('475','47','萧县','3');
INSERT INTO `clt_region` VALUES ('476','47','灵璧县','3');
INSERT INTO `clt_region` VALUES ('477','47','泗县','3');
INSERT INTO `clt_region` VALUES ('478','48','铜官山区','3');
INSERT INTO `clt_region` VALUES ('479','48','狮子山区','3');
INSERT INTO `clt_region` VALUES ('480','48','郊区','3');
INSERT INTO `clt_region` VALUES ('481','48','铜陵县','3');
INSERT INTO `clt_region` VALUES ('482','49','镜湖区','3');
INSERT INTO `clt_region` VALUES ('483','49','弋江区','3');
INSERT INTO `clt_region` VALUES ('484','49','鸠江区','3');
INSERT INTO `clt_region` VALUES ('485','49','三山区','3');
INSERT INTO `clt_region` VALUES ('486','49','芜湖县','3');
INSERT INTO `clt_region` VALUES ('487','49','繁昌县','3');
INSERT INTO `clt_region` VALUES ('488','49','南陵县','3');
INSERT INTO `clt_region` VALUES ('489','50','宣州区','3');
INSERT INTO `clt_region` VALUES ('490','50','宁国市','3');
INSERT INTO `clt_region` VALUES ('491','50','郎溪县','3');
INSERT INTO `clt_region` VALUES ('492','50','广德县','3');
INSERT INTO `clt_region` VALUES ('493','50','泾县','3');
INSERT INTO `clt_region` VALUES ('494','50','绩溪县','3');
INSERT INTO `clt_region` VALUES ('495','50','旌德县','3');
INSERT INTO `clt_region` VALUES ('496','51','涡阳县','3');
INSERT INTO `clt_region` VALUES ('497','51','蒙城县','3');
INSERT INTO `clt_region` VALUES ('498','51','利辛县','3');
INSERT INTO `clt_region` VALUES ('499','51','谯城区','3');
INSERT INTO `clt_region` VALUES ('500','52','东城区','3');
INSERT INTO `clt_region` VALUES ('501','52','西城区','3');
INSERT INTO `clt_region` VALUES ('502','52','海淀区','3');
INSERT INTO `clt_region` VALUES ('503','52','朝阳区','3');
INSERT INTO `clt_region` VALUES ('504','52','崇文区','3');
INSERT INTO `clt_region` VALUES ('505','52','宣武区','3');
INSERT INTO `clt_region` VALUES ('506','52','丰台区','3');
INSERT INTO `clt_region` VALUES ('507','52','石景山区','3');
INSERT INTO `clt_region` VALUES ('508','52','房山区','3');
INSERT INTO `clt_region` VALUES ('509','52','门头沟区','3');
INSERT INTO `clt_region` VALUES ('510','52','通州区','3');
INSERT INTO `clt_region` VALUES ('511','52','顺义区','3');
INSERT INTO `clt_region` VALUES ('512','52','昌平区','3');
INSERT INTO `clt_region` VALUES ('513','52','怀柔区','3');
INSERT INTO `clt_region` VALUES ('514','52','平谷区','3');
INSERT INTO `clt_region` VALUES ('515','52','大兴区','3');
INSERT INTO `clt_region` VALUES ('516','52','密云县','3');
INSERT INTO `clt_region` VALUES ('517','52','延庆县','3');
INSERT INTO `clt_region` VALUES ('518','53','鼓楼区','3');
INSERT INTO `clt_region` VALUES ('519','53','台江区','3');
INSERT INTO `clt_region` VALUES ('520','53','仓山区','3');
INSERT INTO `clt_region` VALUES ('521','53','马尾区','3');
INSERT INTO `clt_region` VALUES ('522','53','晋安区','3');
INSERT INTO `clt_region` VALUES ('523','53','福清市','3');
INSERT INTO `clt_region` VALUES ('524','53','长乐市','3');
INSERT INTO `clt_region` VALUES ('525','53','闽侯县','3');
INSERT INTO `clt_region` VALUES ('526','53','连江县','3');
INSERT INTO `clt_region` VALUES ('527','53','罗源县','3');
INSERT INTO `clt_region` VALUES ('528','53','闽清县','3');
INSERT INTO `clt_region` VALUES ('529','53','永泰县','3');
INSERT INTO `clt_region` VALUES ('530','53','平潭县','3');
INSERT INTO `clt_region` VALUES ('531','54','新罗区','3');
INSERT INTO `clt_region` VALUES ('532','54','漳平市','3');
INSERT INTO `clt_region` VALUES ('533','54','长汀县','3');
INSERT INTO `clt_region` VALUES ('534','54','永定县','3');
INSERT INTO `clt_region` VALUES ('535','54','上杭县','3');
INSERT INTO `clt_region` VALUES ('536','54','武平县','3');
INSERT INTO `clt_region` VALUES ('537','54','连城县','3');
INSERT INTO `clt_region` VALUES ('538','55','延平区','3');
INSERT INTO `clt_region` VALUES ('539','55','邵武市','3');
INSERT INTO `clt_region` VALUES ('540','55','武夷山市','3');
INSERT INTO `clt_region` VALUES ('541','55','建瓯市','3');
INSERT INTO `clt_region` VALUES ('542','55','建阳市','3');
INSERT INTO `clt_region` VALUES ('543','55','顺昌县','3');
INSERT INTO `clt_region` VALUES ('544','55','浦城县','3');
INSERT INTO `clt_region` VALUES ('545','55','光泽县','3');
INSERT INTO `clt_region` VALUES ('546','55','松溪县','3');
INSERT INTO `clt_region` VALUES ('547','55','政和县','3');
INSERT INTO `clt_region` VALUES ('548','56','蕉城区','3');
INSERT INTO `clt_region` VALUES ('549','56','福安市','3');
INSERT INTO `clt_region` VALUES ('550','56','福鼎市','3');
INSERT INTO `clt_region` VALUES ('551','56','霞浦县','3');
INSERT INTO `clt_region` VALUES ('552','56','古田县','3');
INSERT INTO `clt_region` VALUES ('553','56','屏南县','3');
INSERT INTO `clt_region` VALUES ('554','56','寿宁县','3');
INSERT INTO `clt_region` VALUES ('555','56','周宁县','3');
INSERT INTO `clt_region` VALUES ('556','56','柘荣县','3');
INSERT INTO `clt_region` VALUES ('557','57','城厢区','3');
INSERT INTO `clt_region` VALUES ('558','57','涵江区','3');
INSERT INTO `clt_region` VALUES ('559','57','荔城区','3');
INSERT INTO `clt_region` VALUES ('560','57','秀屿区','3');
INSERT INTO `clt_region` VALUES ('561','57','仙游县','3');
INSERT INTO `clt_region` VALUES ('562','58','鲤城区','3');
INSERT INTO `clt_region` VALUES ('563','58','丰泽区','3');
INSERT INTO `clt_region` VALUES ('564','58','洛江区','3');
INSERT INTO `clt_region` VALUES ('565','58','清濛开发区','3');
INSERT INTO `clt_region` VALUES ('566','58','泉港区','3');
INSERT INTO `clt_region` VALUES ('567','58','石狮市','3');
INSERT INTO `clt_region` VALUES ('568','58','晋江市','3');
INSERT INTO `clt_region` VALUES ('569','58','南安市','3');
INSERT INTO `clt_region` VALUES ('570','58','惠安县','3');
INSERT INTO `clt_region` VALUES ('571','58','安溪县','3');
INSERT INTO `clt_region` VALUES ('572','58','永春县','3');
INSERT INTO `clt_region` VALUES ('573','58','德化县','3');
INSERT INTO `clt_region` VALUES ('574','58','金门县','3');
INSERT INTO `clt_region` VALUES ('575','59','梅列区','3');
INSERT INTO `clt_region` VALUES ('576','59','三元区','3');
INSERT INTO `clt_region` VALUES ('577','59','永安市','3');
INSERT INTO `clt_region` VALUES ('578','59','明溪县','3');
INSERT INTO `clt_region` VALUES ('579','59','清流县','3');
INSERT INTO `clt_region` VALUES ('580','59','宁化县','3');
INSERT INTO `clt_region` VALUES ('581','59','大田县','3');
INSERT INTO `clt_region` VALUES ('582','59','尤溪县','3');
INSERT INTO `clt_region` VALUES ('583','59','沙县','3');
INSERT INTO `clt_region` VALUES ('584','59','将乐县','3');
INSERT INTO `clt_region` VALUES ('585','59','泰宁县','3');
INSERT INTO `clt_region` VALUES ('586','59','建宁县','3');
INSERT INTO `clt_region` VALUES ('587','60','思明区','3');
INSERT INTO `clt_region` VALUES ('588','60','海沧区','3');
INSERT INTO `clt_region` VALUES ('589','60','湖里区','3');
INSERT INTO `clt_region` VALUES ('590','60','集美区','3');
INSERT INTO `clt_region` VALUES ('591','60','同安区','3');
INSERT INTO `clt_region` VALUES ('592','60','翔安区','3');
INSERT INTO `clt_region` VALUES ('593','61','芗城区','3');
INSERT INTO `clt_region` VALUES ('594','61','龙文区','3');
INSERT INTO `clt_region` VALUES ('595','61','龙海市','3');
INSERT INTO `clt_region` VALUES ('596','61','云霄县','3');
INSERT INTO `clt_region` VALUES ('597','61','漳浦县','3');
INSERT INTO `clt_region` VALUES ('598','61','诏安县','3');
INSERT INTO `clt_region` VALUES ('599','61','长泰县','3');
INSERT INTO `clt_region` VALUES ('600','61','东山县','3');
INSERT INTO `clt_region` VALUES ('601','61','南靖县','3');
INSERT INTO `clt_region` VALUES ('602','61','平和县','3');
INSERT INTO `clt_region` VALUES ('603','61','华安县','3');
INSERT INTO `clt_region` VALUES ('604','62','皋兰县','3');
INSERT INTO `clt_region` VALUES ('605','62','城关区','3');
INSERT INTO `clt_region` VALUES ('606','62','七里河区','3');
INSERT INTO `clt_region` VALUES ('607','62','西固区','3');
INSERT INTO `clt_region` VALUES ('608','62','安宁区','3');
INSERT INTO `clt_region` VALUES ('609','62','红古区','3');
INSERT INTO `clt_region` VALUES ('610','62','永登县','3');
INSERT INTO `clt_region` VALUES ('611','62','榆中县','3');
INSERT INTO `clt_region` VALUES ('612','63','白银区','3');
INSERT INTO `clt_region` VALUES ('613','63','平川区','3');
INSERT INTO `clt_region` VALUES ('614','63','会宁县','3');
INSERT INTO `clt_region` VALUES ('615','63','景泰县','3');
INSERT INTO `clt_region` VALUES ('616','63','靖远县','3');
INSERT INTO `clt_region` VALUES ('617','64','临洮县','3');
INSERT INTO `clt_region` VALUES ('618','64','陇西县','3');
INSERT INTO `clt_region` VALUES ('619','64','通渭县','3');
INSERT INTO `clt_region` VALUES ('620','64','渭源县','3');
INSERT INTO `clt_region` VALUES ('621','64','漳县','3');
INSERT INTO `clt_region` VALUES ('622','64','岷县','3');
INSERT INTO `clt_region` VALUES ('623','64','安定区','3');
INSERT INTO `clt_region` VALUES ('624','64','安定区','3');
INSERT INTO `clt_region` VALUES ('625','65','合作市','3');
INSERT INTO `clt_region` VALUES ('626','65','临潭县','3');
INSERT INTO `clt_region` VALUES ('627','65','卓尼县','3');
INSERT INTO `clt_region` VALUES ('628','65','舟曲县','3');
INSERT INTO `clt_region` VALUES ('629','65','迭部县','3');
INSERT INTO `clt_region` VALUES ('630','65','玛曲县','3');
INSERT INTO `clt_region` VALUES ('631','65','碌曲县','3');
INSERT INTO `clt_region` VALUES ('632','65','夏河县','3');
INSERT INTO `clt_region` VALUES ('633','66','嘉峪关市','3');
INSERT INTO `clt_region` VALUES ('634','67','金川区','3');
INSERT INTO `clt_region` VALUES ('635','67','永昌县','3');
INSERT INTO `clt_region` VALUES ('636','68','肃州区','3');
INSERT INTO `clt_region` VALUES ('637','68','玉门市','3');
INSERT INTO `clt_region` VALUES ('638','68','敦煌市','3');
INSERT INTO `clt_region` VALUES ('639','68','金塔县','3');
INSERT INTO `clt_region` VALUES ('640','68','瓜州县','3');
INSERT INTO `clt_region` VALUES ('641','68','肃北','3');
INSERT INTO `clt_region` VALUES ('642','68','阿克塞','3');
INSERT INTO `clt_region` VALUES ('643','69','临夏市','3');
INSERT INTO `clt_region` VALUES ('644','69','临夏县','3');
INSERT INTO `clt_region` VALUES ('645','69','康乐县','3');
INSERT INTO `clt_region` VALUES ('646','69','永靖县','3');
INSERT INTO `clt_region` VALUES ('647','69','广河县','3');
INSERT INTO `clt_region` VALUES ('648','69','和政县','3');
INSERT INTO `clt_region` VALUES ('649','69','东乡族自治县','3');
INSERT INTO `clt_region` VALUES ('650','69','积石山','3');
INSERT INTO `clt_region` VALUES ('651','70','成县','3');
INSERT INTO `clt_region` VALUES ('652','70','徽县','3');
INSERT INTO `clt_region` VALUES ('653','70','康县','3');
INSERT INTO `clt_region` VALUES ('654','70','礼县','3');
INSERT INTO `clt_region` VALUES ('655','70','两当县','3');
INSERT INTO `clt_region` VALUES ('656','70','文县','3');
INSERT INTO `clt_region` VALUES ('657','70','西和县','3');
INSERT INTO `clt_region` VALUES ('658','70','宕昌县','3');
INSERT INTO `clt_region` VALUES ('659','70','武都区','3');
INSERT INTO `clt_region` VALUES ('660','71','崇信县','3');
INSERT INTO `clt_region` VALUES ('661','71','华亭县','3');
INSERT INTO `clt_region` VALUES ('662','71','静宁县','3');
INSERT INTO `clt_region` VALUES ('663','71','灵台县','3');
INSERT INTO `clt_region` VALUES ('664','71','崆峒区','3');
INSERT INTO `clt_region` VALUES ('665','71','庄浪县','3');
INSERT INTO `clt_region` VALUES ('666','71','泾川县','3');
INSERT INTO `clt_region` VALUES ('667','72','合水县','3');
INSERT INTO `clt_region` VALUES ('668','72','华池县','3');
INSERT INTO `clt_region` VALUES ('669','72','环县','3');
INSERT INTO `clt_region` VALUES ('670','72','宁县','3');
INSERT INTO `clt_region` VALUES ('671','72','庆城县','3');
INSERT INTO `clt_region` VALUES ('672','72','西峰区','3');
INSERT INTO `clt_region` VALUES ('673','72','镇原县','3');
INSERT INTO `clt_region` VALUES ('674','72','正宁县','3');
INSERT INTO `clt_region` VALUES ('675','73','甘谷县','3');
INSERT INTO `clt_region` VALUES ('676','73','秦安县','3');
INSERT INTO `clt_region` VALUES ('677','73','清水县','3');
INSERT INTO `clt_region` VALUES ('678','73','秦州区','3');
INSERT INTO `clt_region` VALUES ('679','73','麦积区','3');
INSERT INTO `clt_region` VALUES ('680','73','武山县','3');
INSERT INTO `clt_region` VALUES ('681','73','张家川','3');
INSERT INTO `clt_region` VALUES ('682','74','古浪县','3');
INSERT INTO `clt_region` VALUES ('683','74','民勤县','3');
INSERT INTO `clt_region` VALUES ('684','74','天祝','3');
INSERT INTO `clt_region` VALUES ('685','74','凉州区','3');
INSERT INTO `clt_region` VALUES ('686','75','高台县','3');
INSERT INTO `clt_region` VALUES ('687','75','临泽县','3');
INSERT INTO `clt_region` VALUES ('688','75','民乐县','3');
INSERT INTO `clt_region` VALUES ('689','75','山丹县','3');
INSERT INTO `clt_region` VALUES ('690','75','肃南','3');
INSERT INTO `clt_region` VALUES ('691','75','甘州区','3');
INSERT INTO `clt_region` VALUES ('692','76','从化市','3');
INSERT INTO `clt_region` VALUES ('693','76','天河区','3');
INSERT INTO `clt_region` VALUES ('694','76','东山区','3');
INSERT INTO `clt_region` VALUES ('695','76','白云区','3');
INSERT INTO `clt_region` VALUES ('696','76','海珠区','3');
INSERT INTO `clt_region` VALUES ('697','76','荔湾区','3');
INSERT INTO `clt_region` VALUES ('698','76','越秀区','3');
INSERT INTO `clt_region` VALUES ('699','76','黄埔区','3');
INSERT INTO `clt_region` VALUES ('700','76','番禺区','3');
INSERT INTO `clt_region` VALUES ('701','76','花都区','3');
INSERT INTO `clt_region` VALUES ('702','76','增城区','3');
INSERT INTO `clt_region` VALUES ('703','76','从化区','3');
INSERT INTO `clt_region` VALUES ('704','76','市郊','3');
INSERT INTO `clt_region` VALUES ('705','77','福田区','3');
INSERT INTO `clt_region` VALUES ('706','77','罗湖区','3');
INSERT INTO `clt_region` VALUES ('707','77','南山区','3');
INSERT INTO `clt_region` VALUES ('708','77','宝安区','3');
INSERT INTO `clt_region` VALUES ('709','77','龙岗区','3');
INSERT INTO `clt_region` VALUES ('710','77','盐田区','3');
INSERT INTO `clt_region` VALUES ('711','78','湘桥区','3');
INSERT INTO `clt_region` VALUES ('712','78','潮安县','3');
INSERT INTO `clt_region` VALUES ('713','78','饶平县','3');
INSERT INTO `clt_region` VALUES ('714','79','南城区','3');
INSERT INTO `clt_region` VALUES ('715','79','东城区','3');
INSERT INTO `clt_region` VALUES ('716','79','万江区','3');
INSERT INTO `clt_region` VALUES ('717','79','莞城区','3');
INSERT INTO `clt_region` VALUES ('718','79','石龙镇','3');
INSERT INTO `clt_region` VALUES ('719','79','虎门镇','3');
INSERT INTO `clt_region` VALUES ('720','79','麻涌镇','3');
INSERT INTO `clt_region` VALUES ('721','79','道滘镇','3');
INSERT INTO `clt_region` VALUES ('722','79','石碣镇','3');
INSERT INTO `clt_region` VALUES ('723','79','沙田镇','3');
INSERT INTO `clt_region` VALUES ('724','79','望牛墩镇','3');
INSERT INTO `clt_region` VALUES ('725','79','洪梅镇','3');
INSERT INTO `clt_region` VALUES ('726','79','茶山镇','3');
INSERT INTO `clt_region` VALUES ('727','79','寮步镇','3');
INSERT INTO `clt_region` VALUES ('728','79','大岭山镇','3');
INSERT INTO `clt_region` VALUES ('729','79','大朗镇','3');
INSERT INTO `clt_region` VALUES ('730','79','黄江镇','3');
INSERT INTO `clt_region` VALUES ('731','79','樟木头','3');
INSERT INTO `clt_region` VALUES ('732','79','凤岗镇','3');
INSERT INTO `clt_region` VALUES ('733','79','塘厦镇','3');
INSERT INTO `clt_region` VALUES ('734','79','谢岗镇','3');
INSERT INTO `clt_region` VALUES ('735','79','厚街镇','3');
INSERT INTO `clt_region` VALUES ('736','79','清溪镇','3');
INSERT INTO `clt_region` VALUES ('737','79','常平镇','3');
INSERT INTO `clt_region` VALUES ('738','79','桥头镇','3');
INSERT INTO `clt_region` VALUES ('739','79','横沥镇','3');
INSERT INTO `clt_region` VALUES ('740','79','东坑镇','3');
INSERT INTO `clt_region` VALUES ('741','79','企石镇','3');
INSERT INTO `clt_region` VALUES ('742','79','石排镇','3');
INSERT INTO `clt_region` VALUES ('743','79','长安镇','3');
INSERT INTO `clt_region` VALUES ('744','79','中堂镇','3');
INSERT INTO `clt_region` VALUES ('745','79','高埗镇','3');
INSERT INTO `clt_region` VALUES ('746','80','禅城区','3');
INSERT INTO `clt_region` VALUES ('747','80','南海区','3');
INSERT INTO `clt_region` VALUES ('748','80','顺德区','3');
INSERT INTO `clt_region` VALUES ('749','80','三水区','3');
INSERT INTO `clt_region` VALUES ('750','80','高明区','3');
INSERT INTO `clt_region` VALUES ('751','81','东源县','3');
INSERT INTO `clt_region` VALUES ('752','81','和平县','3');
INSERT INTO `clt_region` VALUES ('753','81','源城区','3');
INSERT INTO `clt_region` VALUES ('754','81','连平县','3');
INSERT INTO `clt_region` VALUES ('755','81','龙川县','3');
INSERT INTO `clt_region` VALUES ('756','81','紫金县','3');
INSERT INTO `clt_region` VALUES ('757','82','惠阳区','3');
INSERT INTO `clt_region` VALUES ('758','82','惠城区','3');
INSERT INTO `clt_region` VALUES ('759','82','大亚湾','3');
INSERT INTO `clt_region` VALUES ('760','82','博罗县','3');
INSERT INTO `clt_region` VALUES ('761','82','惠东县','3');
INSERT INTO `clt_region` VALUES ('762','82','龙门县','3');
INSERT INTO `clt_region` VALUES ('763','83','江海区','3');
INSERT INTO `clt_region` VALUES ('764','83','蓬江区','3');
INSERT INTO `clt_region` VALUES ('765','83','新会区','3');
INSERT INTO `clt_region` VALUES ('766','83','台山市','3');
INSERT INTO `clt_region` VALUES ('767','83','开平市','3');
INSERT INTO `clt_region` VALUES ('768','83','鹤山市','3');
INSERT INTO `clt_region` VALUES ('769','83','恩平市','3');
INSERT INTO `clt_region` VALUES ('770','84','榕城区','3');
INSERT INTO `clt_region` VALUES ('771','84','普宁市','3');
INSERT INTO `clt_region` VALUES ('772','84','揭东县','3');
INSERT INTO `clt_region` VALUES ('773','84','揭西县','3');
INSERT INTO `clt_region` VALUES ('774','84','惠来县','3');
INSERT INTO `clt_region` VALUES ('775','85','茂南区','3');
INSERT INTO `clt_region` VALUES ('776','85','茂港区','3');
INSERT INTO `clt_region` VALUES ('777','85','高州市','3');
INSERT INTO `clt_region` VALUES ('778','85','化州市','3');
INSERT INTO `clt_region` VALUES ('779','85','信宜市','3');
INSERT INTO `clt_region` VALUES ('780','85','电白县','3');
INSERT INTO `clt_region` VALUES ('781','86','梅县','3');
INSERT INTO `clt_region` VALUES ('782','86','梅江区','3');
INSERT INTO `clt_region` VALUES ('783','86','兴宁市','3');
INSERT INTO `clt_region` VALUES ('784','86','大埔县','3');
INSERT INTO `clt_region` VALUES ('785','86','丰顺县','3');
INSERT INTO `clt_region` VALUES ('786','86','五华县','3');
INSERT INTO `clt_region` VALUES ('787','86','平远县','3');
INSERT INTO `clt_region` VALUES ('788','86','蕉岭县','3');
INSERT INTO `clt_region` VALUES ('789','87','清城区','3');
INSERT INTO `clt_region` VALUES ('790','87','英德市','3');
INSERT INTO `clt_region` VALUES ('791','87','连州市','3');
INSERT INTO `clt_region` VALUES ('792','87','佛冈县','3');
INSERT INTO `clt_region` VALUES ('793','87','阳山县','3');
INSERT INTO `clt_region` VALUES ('794','87','清新县','3');
INSERT INTO `clt_region` VALUES ('795','87','连山','3');
INSERT INTO `clt_region` VALUES ('796','87','连南','3');
INSERT INTO `clt_region` VALUES ('797','88','南澳县','3');
INSERT INTO `clt_region` VALUES ('798','88','潮阳区','3');
INSERT INTO `clt_region` VALUES ('799','88','澄海区','3');
INSERT INTO `clt_region` VALUES ('800','88','龙湖区','3');
INSERT INTO `clt_region` VALUES ('801','88','金平区','3');
INSERT INTO `clt_region` VALUES ('802','88','濠江区','3');
INSERT INTO `clt_region` VALUES ('803','88','潮南区','3');
INSERT INTO `clt_region` VALUES ('804','89','城区','3');
INSERT INTO `clt_region` VALUES ('805','89','陆丰市','3');
INSERT INTO `clt_region` VALUES ('806','89','海丰县','3');
INSERT INTO `clt_region` VALUES ('807','89','陆河县','3');
INSERT INTO `clt_region` VALUES ('808','90','曲江县','3');
INSERT INTO `clt_region` VALUES ('809','90','浈江区','3');
INSERT INTO `clt_region` VALUES ('810','90','武江区','3');
INSERT INTO `clt_region` VALUES ('811','90','曲江区','3');
INSERT INTO `clt_region` VALUES ('812','90','乐昌市','3');
INSERT INTO `clt_region` VALUES ('813','90','南雄市','3');
INSERT INTO `clt_region` VALUES ('814','90','始兴县','3');
INSERT INTO `clt_region` VALUES ('815','90','仁化县','3');
INSERT INTO `clt_region` VALUES ('816','90','翁源县','3');
INSERT INTO `clt_region` VALUES ('817','90','新丰县','3');
INSERT INTO `clt_region` VALUES ('818','90','乳源','3');
INSERT INTO `clt_region` VALUES ('819','91','江城区','3');
INSERT INTO `clt_region` VALUES ('820','91','阳春市','3');
INSERT INTO `clt_region` VALUES ('821','91','阳西县','3');
INSERT INTO `clt_region` VALUES ('822','91','阳东县','3');
INSERT INTO `clt_region` VALUES ('823','92','云城区','3');
INSERT INTO `clt_region` VALUES ('824','92','罗定市','3');
INSERT INTO `clt_region` VALUES ('825','92','新兴县','3');
INSERT INTO `clt_region` VALUES ('826','92','郁南县','3');
INSERT INTO `clt_region` VALUES ('827','92','云安县','3');
INSERT INTO `clt_region` VALUES ('828','93','赤坎区','3');
INSERT INTO `clt_region` VALUES ('829','93','霞山区','3');
INSERT INTO `clt_region` VALUES ('830','93','坡头区','3');
INSERT INTO `clt_region` VALUES ('831','93','麻章区','3');
INSERT INTO `clt_region` VALUES ('832','93','廉江市','3');
INSERT INTO `clt_region` VALUES ('833','93','雷州市','3');
INSERT INTO `clt_region` VALUES ('834','93','吴川市','3');
INSERT INTO `clt_region` VALUES ('835','93','遂溪县','3');
INSERT INTO `clt_region` VALUES ('836','93','徐闻县','3');
INSERT INTO `clt_region` VALUES ('837','94','肇庆市','3');
INSERT INTO `clt_region` VALUES ('838','94','高要市','3');
INSERT INTO `clt_region` VALUES ('839','94','四会市','3');
INSERT INTO `clt_region` VALUES ('840','94','广宁县','3');
INSERT INTO `clt_region` VALUES ('841','94','怀集县','3');
INSERT INTO `clt_region` VALUES ('842','94','封开县','3');
INSERT INTO `clt_region` VALUES ('843','94','德庆县','3');
INSERT INTO `clt_region` VALUES ('844','95','石岐街道','3');
INSERT INTO `clt_region` VALUES ('845','95','东区街道','3');
INSERT INTO `clt_region` VALUES ('846','95','西区街道','3');
INSERT INTO `clt_region` VALUES ('847','95','环城街道','3');
INSERT INTO `clt_region` VALUES ('848','95','中山港街道','3');
INSERT INTO `clt_region` VALUES ('849','95','五桂山街道','3');
INSERT INTO `clt_region` VALUES ('850','96','香洲区','3');
INSERT INTO `clt_region` VALUES ('851','96','斗门区','3');
INSERT INTO `clt_region` VALUES ('852','96','金湾区','3');
INSERT INTO `clt_region` VALUES ('853','97','邕宁区','3');
INSERT INTO `clt_region` VALUES ('854','97','青秀区','3');
INSERT INTO `clt_region` VALUES ('855','97','兴宁区','3');
INSERT INTO `clt_region` VALUES ('856','97','良庆区','3');
INSERT INTO `clt_region` VALUES ('857','97','西乡塘区','3');
INSERT INTO `clt_region` VALUES ('858','97','江南区','3');
INSERT INTO `clt_region` VALUES ('859','97','武鸣县','3');
INSERT INTO `clt_region` VALUES ('860','97','隆安县','3');
INSERT INTO `clt_region` VALUES ('861','97','马山县','3');
INSERT INTO `clt_region` VALUES ('862','97','上林县','3');
INSERT INTO `clt_region` VALUES ('863','97','宾阳县','3');
INSERT INTO `clt_region` VALUES ('864','97','横县','3');
INSERT INTO `clt_region` VALUES ('865','98','秀峰区','3');
INSERT INTO `clt_region` VALUES ('866','98','叠彩区','3');
INSERT INTO `clt_region` VALUES ('867','98','象山区','3');
INSERT INTO `clt_region` VALUES ('868','98','七星区','3');
INSERT INTO `clt_region` VALUES ('869','98','雁山区','3');
INSERT INTO `clt_region` VALUES ('870','98','阳朔县','3');
INSERT INTO `clt_region` VALUES ('871','98','临桂县','3');
INSERT INTO `clt_region` VALUES ('872','98','灵川县','3');
INSERT INTO `clt_region` VALUES ('873','98','全州县','3');
INSERT INTO `clt_region` VALUES ('874','98','平乐县','3');
INSERT INTO `clt_region` VALUES ('875','98','兴安县','3');
INSERT INTO `clt_region` VALUES ('876','98','灌阳县','3');
INSERT INTO `clt_region` VALUES ('877','98','荔浦县','3');
INSERT INTO `clt_region` VALUES ('878','98','资源县','3');
INSERT INTO `clt_region` VALUES ('879','98','永福县','3');
INSERT INTO `clt_region` VALUES ('880','98','龙胜','3');
INSERT INTO `clt_region` VALUES ('881','98','恭城','3');
INSERT INTO `clt_region` VALUES ('882','99','右江区','3');
INSERT INTO `clt_region` VALUES ('883','99','凌云县','3');
INSERT INTO `clt_region` VALUES ('884','99','平果县','3');
INSERT INTO `clt_region` VALUES ('885','99','西林县','3');
INSERT INTO `clt_region` VALUES ('886','99','乐业县','3');
INSERT INTO `clt_region` VALUES ('887','99','德保县','3');
INSERT INTO `clt_region` VALUES ('888','99','田林县','3');
INSERT INTO `clt_region` VALUES ('889','99','田阳县','3');
INSERT INTO `clt_region` VALUES ('890','99','靖西县','3');
INSERT INTO `clt_region` VALUES ('891','99','田东县','3');
INSERT INTO `clt_region` VALUES ('892','99','那坡县','3');
INSERT INTO `clt_region` VALUES ('893','99','隆林','3');
INSERT INTO `clt_region` VALUES ('894','100','海城区','3');
INSERT INTO `clt_region` VALUES ('895','100','银海区','3');
INSERT INTO `clt_region` VALUES ('896','100','铁山港区','3');
INSERT INTO `clt_region` VALUES ('897','100','合浦县','3');
INSERT INTO `clt_region` VALUES ('898','101','江州区','3');
INSERT INTO `clt_region` VALUES ('899','101','凭祥市','3');
INSERT INTO `clt_region` VALUES ('900','101','宁明县','3');
INSERT INTO `clt_region` VALUES ('901','101','扶绥县','3');
INSERT INTO `clt_region` VALUES ('902','101','龙州县','3');
INSERT INTO `clt_region` VALUES ('903','101','大新县','3');
INSERT INTO `clt_region` VALUES ('904','101','天等县','3');
INSERT INTO `clt_region` VALUES ('905','102','港口区','3');
INSERT INTO `clt_region` VALUES ('906','102','防城区','3');
INSERT INTO `clt_region` VALUES ('907','102','东兴市','3');
INSERT INTO `clt_region` VALUES ('908','102','上思县','3');
INSERT INTO `clt_region` VALUES ('909','103','港北区','3');
INSERT INTO `clt_region` VALUES ('910','103','港南区','3');
INSERT INTO `clt_region` VALUES ('911','103','覃塘区','3');
INSERT INTO `clt_region` VALUES ('912','103','桂平市','3');
INSERT INTO `clt_region` VALUES ('913','103','平南县','3');
INSERT INTO `clt_region` VALUES ('914','104','金城江区','3');
INSERT INTO `clt_region` VALUES ('915','104','宜州市','3');
INSERT INTO `clt_region` VALUES ('916','104','天峨县','3');
INSERT INTO `clt_region` VALUES ('917','104','凤山县','3');
INSERT INTO `clt_region` VALUES ('918','104','南丹县','3');
INSERT INTO `clt_region` VALUES ('919','104','东兰县','3');
INSERT INTO `clt_region` VALUES ('920','104','都安','3');
INSERT INTO `clt_region` VALUES ('921','104','罗城','3');
INSERT INTO `clt_region` VALUES ('922','104','巴马','3');
INSERT INTO `clt_region` VALUES ('923','104','环江','3');
INSERT INTO `clt_region` VALUES ('924','104','大化','3');
INSERT INTO `clt_region` VALUES ('925','105','八步区','3');
INSERT INTO `clt_region` VALUES ('926','105','钟山县','3');
INSERT INTO `clt_region` VALUES ('927','105','昭平县','3');
INSERT INTO `clt_region` VALUES ('928','105','富川','3');
INSERT INTO `clt_region` VALUES ('929','106','兴宾区','3');
INSERT INTO `clt_region` VALUES ('930','106','合山市','3');
INSERT INTO `clt_region` VALUES ('931','106','象州县','3');
INSERT INTO `clt_region` VALUES ('932','106','武宣县','3');
INSERT INTO `clt_region` VALUES ('933','106','忻城县','3');
INSERT INTO `clt_region` VALUES ('934','106','金秀','3');
INSERT INTO `clt_region` VALUES ('935','107','城中区','3');
INSERT INTO `clt_region` VALUES ('936','107','鱼峰区','3');
INSERT INTO `clt_region` VALUES ('937','107','柳北区','3');
INSERT INTO `clt_region` VALUES ('938','107','柳南区','3');
INSERT INTO `clt_region` VALUES ('939','107','柳江县','3');
INSERT INTO `clt_region` VALUES ('940','107','柳城县','3');
INSERT INTO `clt_region` VALUES ('941','107','鹿寨县','3');
INSERT INTO `clt_region` VALUES ('942','107','融安县','3');
INSERT INTO `clt_region` VALUES ('943','107','融水','3');
INSERT INTO `clt_region` VALUES ('944','107','三江','3');
INSERT INTO `clt_region` VALUES ('945','108','钦南区','3');
INSERT INTO `clt_region` VALUES ('946','108','钦北区','3');
INSERT INTO `clt_region` VALUES ('947','108','灵山县','3');
INSERT INTO `clt_region` VALUES ('948','108','浦北县','3');
INSERT INTO `clt_region` VALUES ('949','109','万秀区','3');
INSERT INTO `clt_region` VALUES ('950','109','蝶山区','3');
INSERT INTO `clt_region` VALUES ('951','109','长洲区','3');
INSERT INTO `clt_region` VALUES ('952','109','岑溪市','3');
INSERT INTO `clt_region` VALUES ('953','109','苍梧县','3');
INSERT INTO `clt_region` VALUES ('954','109','藤县','3');
INSERT INTO `clt_region` VALUES ('955','109','蒙山县','3');
INSERT INTO `clt_region` VALUES ('956','110','玉州区','3');
INSERT INTO `clt_region` VALUES ('957','110','北流市','3');
INSERT INTO `clt_region` VALUES ('958','110','容县','3');
INSERT INTO `clt_region` VALUES ('959','110','陆川县','3');
INSERT INTO `clt_region` VALUES ('960','110','博白县','3');
INSERT INTO `clt_region` VALUES ('961','110','兴业县','3');
INSERT INTO `clt_region` VALUES ('962','111','南明区','3');
INSERT INTO `clt_region` VALUES ('963','111','云岩区','3');
INSERT INTO `clt_region` VALUES ('964','111','花溪区','3');
INSERT INTO `clt_region` VALUES ('965','111','乌当区','3');
INSERT INTO `clt_region` VALUES ('966','111','白云区','3');
INSERT INTO `clt_region` VALUES ('967','111','小河区','3');
INSERT INTO `clt_region` VALUES ('968','111','金阳新区','3');
INSERT INTO `clt_region` VALUES ('969','111','新天园区','3');
INSERT INTO `clt_region` VALUES ('970','111','清镇市','3');
INSERT INTO `clt_region` VALUES ('971','111','开阳县','3');
INSERT INTO `clt_region` VALUES ('972','111','修文县','3');
INSERT INTO `clt_region` VALUES ('973','111','息烽县','3');
INSERT INTO `clt_region` VALUES ('974','112','西秀区','3');
INSERT INTO `clt_region` VALUES ('975','112','关岭','3');
INSERT INTO `clt_region` VALUES ('976','112','镇宁','3');
INSERT INTO `clt_region` VALUES ('977','112','紫云','3');
INSERT INTO `clt_region` VALUES ('978','112','平坝县','3');
INSERT INTO `clt_region` VALUES ('979','112','普定县','3');
INSERT INTO `clt_region` VALUES ('980','113','毕节市','3');
INSERT INTO `clt_region` VALUES ('981','113','大方县','3');
INSERT INTO `clt_region` VALUES ('982','113','黔西县','3');
INSERT INTO `clt_region` VALUES ('983','113','金沙县','3');
INSERT INTO `clt_region` VALUES ('984','113','织金县','3');
INSERT INTO `clt_region` VALUES ('985','113','纳雍县','3');
INSERT INTO `clt_region` VALUES ('986','113','赫章县','3');
INSERT INTO `clt_region` VALUES ('987','113','威宁','3');
INSERT INTO `clt_region` VALUES ('988','114','钟山区','3');
INSERT INTO `clt_region` VALUES ('989','114','六枝特区','3');
INSERT INTO `clt_region` VALUES ('990','114','水城县','3');
INSERT INTO `clt_region` VALUES ('991','114','盘县','3');
INSERT INTO `clt_region` VALUES ('992','115','凯里市','3');
INSERT INTO `clt_region` VALUES ('993','115','黄平县','3');
INSERT INTO `clt_region` VALUES ('994','115','施秉县','3');
INSERT INTO `clt_region` VALUES ('995','115','三穗县','3');
INSERT INTO `clt_region` VALUES ('996','115','镇远县','3');
INSERT INTO `clt_region` VALUES ('997','115','岑巩县','3');
INSERT INTO `clt_region` VALUES ('998','115','天柱县','3');
INSERT INTO `clt_region` VALUES ('999','115','锦屏县','3');
INSERT INTO `clt_region` VALUES ('1000','115','剑河县','3');
INSERT INTO `clt_region` VALUES ('1001','115','台江县','3');
INSERT INTO `clt_region` VALUES ('1002','115','黎平县','3');
INSERT INTO `clt_region` VALUES ('1003','115','榕江县','3');
INSERT INTO `clt_region` VALUES ('1004','115','从江县','3');
INSERT INTO `clt_region` VALUES ('1005','115','雷山县','3');
INSERT INTO `clt_region` VALUES ('1006','115','麻江县','3');
INSERT INTO `clt_region` VALUES ('1007','115','丹寨县','3');
INSERT INTO `clt_region` VALUES ('1008','116','都匀市','3');
INSERT INTO `clt_region` VALUES ('1009','116','福泉市','3');
INSERT INTO `clt_region` VALUES ('1010','116','荔波县','3');
INSERT INTO `clt_region` VALUES ('1011','116','贵定县','3');
INSERT INTO `clt_region` VALUES ('1012','116','瓮安县','3');
INSERT INTO `clt_region` VALUES ('1013','116','独山县','3');
INSERT INTO `clt_region` VALUES ('1014','116','平塘县','3');
INSERT INTO `clt_region` VALUES ('1015','116','罗甸县','3');
INSERT INTO `clt_region` VALUES ('1016','116','长顺县','3');
INSERT INTO `clt_region` VALUES ('1017','116','龙里县','3');
INSERT INTO `clt_region` VALUES ('1018','116','惠水县','3');
INSERT INTO `clt_region` VALUES ('1019','116','三都','3');
INSERT INTO `clt_region` VALUES ('1020','117','兴义市','3');
INSERT INTO `clt_region` VALUES ('1021','117','兴仁县','3');
INSERT INTO `clt_region` VALUES ('1022','117','普安县','3');
INSERT INTO `clt_region` VALUES ('1023','117','晴隆县','3');
INSERT INTO `clt_region` VALUES ('1024','117','贞丰县','3');
INSERT INTO `clt_region` VALUES ('1025','117','望谟县','3');
INSERT INTO `clt_region` VALUES ('1026','117','册亨县','3');
INSERT INTO `clt_region` VALUES ('1027','117','安龙县','3');
INSERT INTO `clt_region` VALUES ('1028','118','铜仁市','3');
INSERT INTO `clt_region` VALUES ('1029','118','江口县','3');
INSERT INTO `clt_region` VALUES ('1030','118','石阡县','3');
INSERT INTO `clt_region` VALUES ('1031','118','思南县','3');
INSERT INTO `clt_region` VALUES ('1032','118','德江县','3');
INSERT INTO `clt_region` VALUES ('1033','118','玉屏','3');
INSERT INTO `clt_region` VALUES ('1034','118','印江','3');
INSERT INTO `clt_region` VALUES ('1035','118','沿河','3');
INSERT INTO `clt_region` VALUES ('1036','118','松桃','3');
INSERT INTO `clt_region` VALUES ('1037','118','万山特区','3');
INSERT INTO `clt_region` VALUES ('1038','119','红花岗区','3');
INSERT INTO `clt_region` VALUES ('1039','119','务川县','3');
INSERT INTO `clt_region` VALUES ('1040','119','道真县','3');
INSERT INTO `clt_region` VALUES ('1041','119','汇川区','3');
INSERT INTO `clt_region` VALUES ('1042','119','赤水市','3');
INSERT INTO `clt_region` VALUES ('1043','119','仁怀市','3');
INSERT INTO `clt_region` VALUES ('1044','119','遵义县','3');
INSERT INTO `clt_region` VALUES ('1045','119','桐梓县','3');
INSERT INTO `clt_region` VALUES ('1046','119','绥阳县','3');
INSERT INTO `clt_region` VALUES ('1047','119','正安县','3');
INSERT INTO `clt_region` VALUES ('1048','119','凤冈县','3');
INSERT INTO `clt_region` VALUES ('1049','119','湄潭县','3');
INSERT INTO `clt_region` VALUES ('1050','119','余庆县','3');
INSERT INTO `clt_region` VALUES ('1051','119','习水县','3');
INSERT INTO `clt_region` VALUES ('1052','119','道真','3');
INSERT INTO `clt_region` VALUES ('1053','119','务川','3');
INSERT INTO `clt_region` VALUES ('1054','120','秀英区','3');
INSERT INTO `clt_region` VALUES ('1055','120','龙华区','3');
INSERT INTO `clt_region` VALUES ('1056','120','琼山区','3');
INSERT INTO `clt_region` VALUES ('1057','120','美兰区','3');
INSERT INTO `clt_region` VALUES ('1058','137','市区','3');
INSERT INTO `clt_region` VALUES ('1059','137','洋浦开发区','3');
INSERT INTO `clt_region` VALUES ('1060','137','那大镇','3');
INSERT INTO `clt_region` VALUES ('1061','137','王五镇','3');
INSERT INTO `clt_region` VALUES ('1062','137','雅星镇','3');
INSERT INTO `clt_region` VALUES ('1063','137','大成镇','3');
INSERT INTO `clt_region` VALUES ('1064','137','中和镇','3');
INSERT INTO `clt_region` VALUES ('1065','137','峨蔓镇','3');
INSERT INTO `clt_region` VALUES ('1066','137','南丰镇','3');
INSERT INTO `clt_region` VALUES ('1067','137','白马井镇','3');
INSERT INTO `clt_region` VALUES ('1068','137','兰洋镇','3');
INSERT INTO `clt_region` VALUES ('1069','137','和庆镇','3');
INSERT INTO `clt_region` VALUES ('1070','137','海头镇','3');
INSERT INTO `clt_region` VALUES ('1071','137','排浦镇','3');
INSERT INTO `clt_region` VALUES ('1072','137','东成镇','3');
INSERT INTO `clt_region` VALUES ('1073','137','光村镇','3');
INSERT INTO `clt_region` VALUES ('1074','137','木棠镇','3');
INSERT INTO `clt_region` VALUES ('1075','137','新州镇','3');
INSERT INTO `clt_region` VALUES ('1076','137','三都镇','3');
INSERT INTO `clt_region` VALUES ('1077','137','其他','3');
INSERT INTO `clt_region` VALUES ('1078','138','长安区','3');
INSERT INTO `clt_region` VALUES ('1079','138','桥东区','3');
INSERT INTO `clt_region` VALUES ('1080','138','桥西区','3');
INSERT INTO `clt_region` VALUES ('1081','138','新华区','3');
INSERT INTO `clt_region` VALUES ('1082','138','裕华区','3');
INSERT INTO `clt_region` VALUES ('1083','138','井陉矿区','3');
INSERT INTO `clt_region` VALUES ('1084','138','高新区','3');
INSERT INTO `clt_region` VALUES ('1085','138','辛集市','3');
INSERT INTO `clt_region` VALUES ('1086','138','藁城市','3');
INSERT INTO `clt_region` VALUES ('1087','138','晋州市','3');
INSERT INTO `clt_region` VALUES ('1088','138','新乐市','3');
INSERT INTO `clt_region` VALUES ('1089','138','鹿泉市','3');
INSERT INTO `clt_region` VALUES ('1090','138','井陉县','3');
INSERT INTO `clt_region` VALUES ('1091','138','正定县','3');
INSERT INTO `clt_region` VALUES ('1092','138','栾城县','3');
INSERT INTO `clt_region` VALUES ('1093','138','行唐县','3');
INSERT INTO `clt_region` VALUES ('1094','138','灵寿县','3');
INSERT INTO `clt_region` VALUES ('1095','138','高邑县','3');
INSERT INTO `clt_region` VALUES ('1096','138','深泽县','3');
INSERT INTO `clt_region` VALUES ('1097','138','赞皇县','3');
INSERT INTO `clt_region` VALUES ('1098','138','无极县','3');
INSERT INTO `clt_region` VALUES ('1099','138','平山县','3');
INSERT INTO `clt_region` VALUES ('1100','138','元氏县','3');
INSERT INTO `clt_region` VALUES ('1101','138','赵县','3');
INSERT INTO `clt_region` VALUES ('1102','139','新市区','3');
INSERT INTO `clt_region` VALUES ('1103','139','南市区','3');
INSERT INTO `clt_region` VALUES ('1104','139','北市区','3');
INSERT INTO `clt_region` VALUES ('1105','139','涿州市','3');
INSERT INTO `clt_region` VALUES ('1106','139','定州市','3');
INSERT INTO `clt_region` VALUES ('1107','139','安国市','3');
INSERT INTO `clt_region` VALUES ('1108','139','高碑店市','3');
INSERT INTO `clt_region` VALUES ('1109','139','满城县','3');
INSERT INTO `clt_region` VALUES ('1110','139','清苑县','3');
INSERT INTO `clt_region` VALUES ('1111','139','涞水县','3');
INSERT INTO `clt_region` VALUES ('1112','139','阜平县','3');
INSERT INTO `clt_region` VALUES ('1113','139','徐水县','3');
INSERT INTO `clt_region` VALUES ('1114','139','定兴县','3');
INSERT INTO `clt_region` VALUES ('1115','139','唐县','3');
INSERT INTO `clt_region` VALUES ('1116','139','高阳县','3');
INSERT INTO `clt_region` VALUES ('1117','139','容城县','3');
INSERT INTO `clt_region` VALUES ('1118','139','涞源县','3');
INSERT INTO `clt_region` VALUES ('1119','139','望都县','3');
INSERT INTO `clt_region` VALUES ('1120','139','安新县','3');
INSERT INTO `clt_region` VALUES ('1121','139','易县','3');
INSERT INTO `clt_region` VALUES ('1122','139','曲阳县','3');
INSERT INTO `clt_region` VALUES ('1123','139','蠡县','3');
INSERT INTO `clt_region` VALUES ('1124','139','顺平县','3');
INSERT INTO `clt_region` VALUES ('1125','139','博野县','3');
INSERT INTO `clt_region` VALUES ('1126','139','雄县','3');
INSERT INTO `clt_region` VALUES ('1127','140','运河区','3');
INSERT INTO `clt_region` VALUES ('1128','140','新华区','3');
INSERT INTO `clt_region` VALUES ('1129','140','泊头市','3');
INSERT INTO `clt_region` VALUES ('1130','140','任丘市','3');
INSERT INTO `clt_region` VALUES ('1131','140','黄骅市','3');
INSERT INTO `clt_region` VALUES ('1132','140','河间市','3');
INSERT INTO `clt_region` VALUES ('1133','140','沧县','3');
INSERT INTO `clt_region` VALUES ('1134','140','青县','3');
INSERT INTO `clt_region` VALUES ('1135','140','东光县','3');
INSERT INTO `clt_region` VALUES ('1136','140','海兴县','3');
INSERT INTO `clt_region` VALUES ('1137','140','盐山县','3');
INSERT INTO `clt_region` VALUES ('1138','140','肃宁县','3');
INSERT INTO `clt_region` VALUES ('1139','140','南皮县','3');
INSERT INTO `clt_region` VALUES ('1140','140','吴桥县','3');
INSERT INTO `clt_region` VALUES ('1141','140','献县','3');
INSERT INTO `clt_region` VALUES ('1142','140','孟村','3');
INSERT INTO `clt_region` VALUES ('1143','141','双桥区','3');
INSERT INTO `clt_region` VALUES ('1144','141','双滦区','3');
INSERT INTO `clt_region` VALUES ('1145','141','鹰手营子矿区','3');
INSERT INTO `clt_region` VALUES ('1146','141','承德县','3');
INSERT INTO `clt_region` VALUES ('1147','141','兴隆县','3');
INSERT INTO `clt_region` VALUES ('1148','141','平泉县','3');
INSERT INTO `clt_region` VALUES ('1149','141','滦平县','3');
INSERT INTO `clt_region` VALUES ('1150','141','隆化县','3');
INSERT INTO `clt_region` VALUES ('1151','141','丰宁','3');
INSERT INTO `clt_region` VALUES ('1152','141','宽城','3');
INSERT INTO `clt_region` VALUES ('1153','141','围场','3');
INSERT INTO `clt_region` VALUES ('1154','142','从台区','3');
INSERT INTO `clt_region` VALUES ('1155','142','复兴区','3');
INSERT INTO `clt_region` VALUES ('1156','142','邯山区','3');
INSERT INTO `clt_region` VALUES ('1157','142','峰峰矿区','3');
INSERT INTO `clt_region` VALUES ('1158','142','武安市','3');
INSERT INTO `clt_region` VALUES ('1159','142','邯郸县','3');
INSERT INTO `clt_region` VALUES ('1160','142','临漳县','3');
INSERT INTO `clt_region` VALUES ('1161','142','成安县','3');
INSERT INTO `clt_region` VALUES ('1162','142','大名县','3');
INSERT INTO `clt_region` VALUES ('1163','142','涉县','3');
INSERT INTO `clt_region` VALUES ('1164','142','磁县','3');
INSERT INTO `clt_region` VALUES ('1165','142','肥乡县','3');
INSERT INTO `clt_region` VALUES ('1166','142','永年县','3');
INSERT INTO `clt_region` VALUES ('1167','142','邱县','3');
INSERT INTO `clt_region` VALUES ('1168','142','鸡泽县','3');
INSERT INTO `clt_region` VALUES ('1169','142','广平县','3');
INSERT INTO `clt_region` VALUES ('1170','142','馆陶县','3');
INSERT INTO `clt_region` VALUES ('1171','142','魏县','3');
INSERT INTO `clt_region` VALUES ('1172','142','曲周县','3');
INSERT INTO `clt_region` VALUES ('1173','143','桃城区','3');
INSERT INTO `clt_region` VALUES ('1174','143','冀州市','3');
INSERT INTO `clt_region` VALUES ('1175','143','深州市','3');
INSERT INTO `clt_region` VALUES ('1176','143','枣强县','3');
INSERT INTO `clt_region` VALUES ('1177','143','武邑县','3');
INSERT INTO `clt_region` VALUES ('1178','143','武强县','3');
INSERT INTO `clt_region` VALUES ('1179','143','饶阳县','3');
INSERT INTO `clt_region` VALUES ('1180','143','安平县','3');
INSERT INTO `clt_region` VALUES ('1181','143','故城县','3');
INSERT INTO `clt_region` VALUES ('1182','143','景县','3');
INSERT INTO `clt_region` VALUES ('1183','143','阜城县','3');
INSERT INTO `clt_region` VALUES ('1184','144','安次区','3');
INSERT INTO `clt_region` VALUES ('1185','144','广阳区','3');
INSERT INTO `clt_region` VALUES ('1186','144','霸州市','3');
INSERT INTO `clt_region` VALUES ('1187','144','三河市','3');
INSERT INTO `clt_region` VALUES ('1188','144','固安县','3');
INSERT INTO `clt_region` VALUES ('1189','144','永清县','3');
INSERT INTO `clt_region` VALUES ('1190','144','香河县','3');
INSERT INTO `clt_region` VALUES ('1191','144','大城县','3');
INSERT INTO `clt_region` VALUES ('1192','144','文安县','3');
INSERT INTO `clt_region` VALUES ('1193','144','大厂','3');
INSERT INTO `clt_region` VALUES ('1194','145','海港区','3');
INSERT INTO `clt_region` VALUES ('1195','145','山海关区','3');
INSERT INTO `clt_region` VALUES ('1196','145','北戴河区','3');
INSERT INTO `clt_region` VALUES ('1197','145','昌黎县','3');
INSERT INTO `clt_region` VALUES ('1198','145','抚宁县','3');
INSERT INTO `clt_region` VALUES ('1199','145','卢龙县','3');
INSERT INTO `clt_region` VALUES ('1200','145','青龙','3');
INSERT INTO `clt_region` VALUES ('1201','146','路北区','3');
INSERT INTO `clt_region` VALUES ('1202','146','路南区','3');
INSERT INTO `clt_region` VALUES ('1203','146','古冶区','3');
INSERT INTO `clt_region` VALUES ('1204','146','开平区','3');
INSERT INTO `clt_region` VALUES ('1205','146','丰南区','3');
INSERT INTO `clt_region` VALUES ('1206','146','丰润区','3');
INSERT INTO `clt_region` VALUES ('1207','146','遵化市','3');
INSERT INTO `clt_region` VALUES ('1208','146','迁安市','3');
INSERT INTO `clt_region` VALUES ('1209','146','滦县','3');
INSERT INTO `clt_region` VALUES ('1210','146','滦南县','3');
INSERT INTO `clt_region` VALUES ('1211','146','乐亭县','3');
INSERT INTO `clt_region` VALUES ('1212','146','迁西县','3');
INSERT INTO `clt_region` VALUES ('1213','146','玉田县','3');
INSERT INTO `clt_region` VALUES ('1214','146','唐海县','3');
INSERT INTO `clt_region` VALUES ('1215','147','桥东区','3');
INSERT INTO `clt_region` VALUES ('1216','147','桥西区','3');
INSERT INTO `clt_region` VALUES ('1217','147','南宫市','3');
INSERT INTO `clt_region` VALUES ('1218','147','沙河市','3');
INSERT INTO `clt_region` VALUES ('1219','147','邢台县','3');
INSERT INTO `clt_region` VALUES ('1220','147','临城县','3');
INSERT INTO `clt_region` VALUES ('1221','147','内丘县','3');
INSERT INTO `clt_region` VALUES ('1222','147','柏乡县','3');
INSERT INTO `clt_region` VALUES ('1223','147','隆尧县','3');
INSERT INTO `clt_region` VALUES ('1224','147','任县','3');
INSERT INTO `clt_region` VALUES ('1225','147','南和县','3');
INSERT INTO `clt_region` VALUES ('1226','147','宁晋县','3');
INSERT INTO `clt_region` VALUES ('1227','147','巨鹿县','3');
INSERT INTO `clt_region` VALUES ('1228','147','新河县','3');
INSERT INTO `clt_region` VALUES ('1229','147','广宗县','3');
INSERT INTO `clt_region` VALUES ('1230','147','平乡县','3');
INSERT INTO `clt_region` VALUES ('1231','147','威县','3');
INSERT INTO `clt_region` VALUES ('1232','147','清河县','3');
INSERT INTO `clt_region` VALUES ('1233','147','临西县','3');
INSERT INTO `clt_region` VALUES ('1234','148','桥西区','3');
INSERT INTO `clt_region` VALUES ('1235','148','桥东区','3');
INSERT INTO `clt_region` VALUES ('1236','148','宣化区','3');
INSERT INTO `clt_region` VALUES ('1237','148','下花园区','3');
INSERT INTO `clt_region` VALUES ('1238','148','宣化县','3');
INSERT INTO `clt_region` VALUES ('1239','148','张北县','3');
INSERT INTO `clt_region` VALUES ('1240','148','康保县','3');
INSERT INTO `clt_region` VALUES ('1241','148','沽源县','3');
INSERT INTO `clt_region` VALUES ('1242','148','尚义县','3');
INSERT INTO `clt_region` VALUES ('1243','148','蔚县','3');
INSERT INTO `clt_region` VALUES ('1244','148','阳原县','3');
INSERT INTO `clt_region` VALUES ('1245','148','怀安县','3');
INSERT INTO `clt_region` VALUES ('1246','148','万全县','3');
INSERT INTO `clt_region` VALUES ('1247','148','怀来县','3');
INSERT INTO `clt_region` VALUES ('1248','148','涿鹿县','3');
INSERT INTO `clt_region` VALUES ('1249','148','赤城县','3');
INSERT INTO `clt_region` VALUES ('1250','148','崇礼县','3');
INSERT INTO `clt_region` VALUES ('1251','149','金水区','3');
INSERT INTO `clt_region` VALUES ('1252','149','邙山区','3');
INSERT INTO `clt_region` VALUES ('1253','149','二七区','3');
INSERT INTO `clt_region` VALUES ('1254','149','管城区','3');
INSERT INTO `clt_region` VALUES ('1255','149','中原区','3');
INSERT INTO `clt_region` VALUES ('1256','149','上街区','3');
INSERT INTO `clt_region` VALUES ('1257','149','惠济区','3');
INSERT INTO `clt_region` VALUES ('1258','149','郑东新区','3');
INSERT INTO `clt_region` VALUES ('1259','149','经济技术开发区','3');
INSERT INTO `clt_region` VALUES ('1260','149','高新开发区','3');
INSERT INTO `clt_region` VALUES ('1261','149','出口加工区','3');
INSERT INTO `clt_region` VALUES ('1262','149','巩义市','3');
INSERT INTO `clt_region` VALUES ('1263','149','荥阳市','3');
INSERT INTO `clt_region` VALUES ('1264','149','新密市','3');
INSERT INTO `clt_region` VALUES ('1265','149','新郑市','3');
INSERT INTO `clt_region` VALUES ('1266','149','登封市','3');
INSERT INTO `clt_region` VALUES ('1267','149','中牟县','3');
INSERT INTO `clt_region` VALUES ('1268','150','西工区','3');
INSERT INTO `clt_region` VALUES ('1269','150','老城区','3');
INSERT INTO `clt_region` VALUES ('1270','150','涧西区','3');
INSERT INTO `clt_region` VALUES ('1271','150','瀍河回族区','3');
INSERT INTO `clt_region` VALUES ('1272','150','洛龙区','3');
INSERT INTO `clt_region` VALUES ('1273','150','吉利区','3');
INSERT INTO `clt_region` VALUES ('1274','150','偃师市','3');
INSERT INTO `clt_region` VALUES ('1275','150','孟津县','3');
INSERT INTO `clt_region` VALUES ('1276','150','新安县','3');
INSERT INTO `clt_region` VALUES ('1277','150','栾川县','3');
INSERT INTO `clt_region` VALUES ('1278','150','嵩县','3');
INSERT INTO `clt_region` VALUES ('1279','150','汝阳县','3');
INSERT INTO `clt_region` VALUES ('1280','150','宜阳县','3');
INSERT INTO `clt_region` VALUES ('1281','150','洛宁县','3');
INSERT INTO `clt_region` VALUES ('1282','150','伊川县','3');
INSERT INTO `clt_region` VALUES ('1283','151','鼓楼区','3');
INSERT INTO `clt_region` VALUES ('1284','151','龙亭区','3');
INSERT INTO `clt_region` VALUES ('1285','151','顺河回族区','3');
INSERT INTO `clt_region` VALUES ('1286','151','金明区','3');
INSERT INTO `clt_region` VALUES ('1287','151','禹王台区','3');
INSERT INTO `clt_region` VALUES ('1288','151','杞县','3');
INSERT INTO `clt_region` VALUES ('1289','151','通许县','3');
INSERT INTO `clt_region` VALUES ('1290','151','尉氏县','3');
INSERT INTO `clt_region` VALUES ('1291','151','开封县','3');
INSERT INTO `clt_region` VALUES ('1292','151','兰考县','3');
INSERT INTO `clt_region` VALUES ('1293','152','北关区','3');
INSERT INTO `clt_region` VALUES ('1294','152','文峰区','3');
INSERT INTO `clt_region` VALUES ('1295','152','殷都区','3');
INSERT INTO `clt_region` VALUES ('1296','152','龙安区','3');
INSERT INTO `clt_region` VALUES ('1297','152','林州市','3');
INSERT INTO `clt_region` VALUES ('1298','152','安阳县','3');
INSERT INTO `clt_region` VALUES ('1299','152','汤阴县','3');
INSERT INTO `clt_region` VALUES ('1300','152','滑县','3');
INSERT INTO `clt_region` VALUES ('1301','152','内黄县','3');
INSERT INTO `clt_region` VALUES ('1302','153','淇滨区','3');
INSERT INTO `clt_region` VALUES ('1303','153','山城区','3');
INSERT INTO `clt_region` VALUES ('1304','153','鹤山区','3');
INSERT INTO `clt_region` VALUES ('1305','153','浚县','3');
INSERT INTO `clt_region` VALUES ('1306','153','淇县','3');
INSERT INTO `clt_region` VALUES ('1307','154','济源市','3');
INSERT INTO `clt_region` VALUES ('1308','155','解放区','3');
INSERT INTO `clt_region` VALUES ('1309','155','中站区','3');
INSERT INTO `clt_region` VALUES ('1310','155','马村区','3');
INSERT INTO `clt_region` VALUES ('1311','155','山阳区','3');
INSERT INTO `clt_region` VALUES ('1312','155','沁阳市','3');
INSERT INTO `clt_region` VALUES ('1313','155','孟州市','3');
INSERT INTO `clt_region` VALUES ('1314','155','修武县','3');
INSERT INTO `clt_region` VALUES ('1315','155','博爱县','3');
INSERT INTO `clt_region` VALUES ('1316','155','武陟县','3');
INSERT INTO `clt_region` VALUES ('1317','155','温县','3');
INSERT INTO `clt_region` VALUES ('1318','156','卧龙区','3');
INSERT INTO `clt_region` VALUES ('1319','156','宛城区','3');
INSERT INTO `clt_region` VALUES ('1320','156','邓州市','3');
INSERT INTO `clt_region` VALUES ('1321','156','南召县','3');
INSERT INTO `clt_region` VALUES ('1322','156','方城县','3');
INSERT INTO `clt_region` VALUES ('1323','156','西峡县','3');
INSERT INTO `clt_region` VALUES ('1324','156','镇平县','3');
INSERT INTO `clt_region` VALUES ('1325','156','内乡县','3');
INSERT INTO `clt_region` VALUES ('1326','156','淅川县','3');
INSERT INTO `clt_region` VALUES ('1327','156','社旗县','3');
INSERT INTO `clt_region` VALUES ('1328','156','唐河县','3');
INSERT INTO `clt_region` VALUES ('1329','156','新野县','3');
INSERT INTO `clt_region` VALUES ('1330','156','桐柏县','3');
INSERT INTO `clt_region` VALUES ('1331','157','新华区','3');
INSERT INTO `clt_region` VALUES ('1332','157','卫东区','3');
INSERT INTO `clt_region` VALUES ('1333','157','湛河区','3');
INSERT INTO `clt_region` VALUES ('1334','157','石龙区','3');
INSERT INTO `clt_region` VALUES ('1335','157','舞钢市','3');
INSERT INTO `clt_region` VALUES ('1336','157','汝州市','3');
INSERT INTO `clt_region` VALUES ('1337','157','宝丰县','3');
INSERT INTO `clt_region` VALUES ('1338','157','叶县','3');
INSERT INTO `clt_region` VALUES ('1339','157','鲁山县','3');
INSERT INTO `clt_region` VALUES ('1340','157','郏县','3');
INSERT INTO `clt_region` VALUES ('1341','158','湖滨区','3');
INSERT INTO `clt_region` VALUES ('1342','158','义马市','3');
INSERT INTO `clt_region` VALUES ('1343','158','灵宝市','3');
INSERT INTO `clt_region` VALUES ('1344','158','渑池县','3');
INSERT INTO `clt_region` VALUES ('1345','158','陕县','3');
INSERT INTO `clt_region` VALUES ('1346','158','卢氏县','3');
INSERT INTO `clt_region` VALUES ('1347','159','梁园区','3');
INSERT INTO `clt_region` VALUES ('1348','159','睢阳区','3');
INSERT INTO `clt_region` VALUES ('1349','159','永城市','3');
INSERT INTO `clt_region` VALUES ('1350','159','民权县','3');
INSERT INTO `clt_region` VALUES ('1351','159','睢县','3');
INSERT INTO `clt_region` VALUES ('1352','159','宁陵县','3');
INSERT INTO `clt_region` VALUES ('1353','159','虞城县','3');
INSERT INTO `clt_region` VALUES ('1354','159','柘城县','3');
INSERT INTO `clt_region` VALUES ('1355','159','夏邑县','3');
INSERT INTO `clt_region` VALUES ('1356','160','卫滨区','3');
INSERT INTO `clt_region` VALUES ('1357','160','红旗区','3');
INSERT INTO `clt_region` VALUES ('1358','160','凤泉区','3');
INSERT INTO `clt_region` VALUES ('1359','160','牧野区','3');
INSERT INTO `clt_region` VALUES ('1360','160','卫辉市','3');
INSERT INTO `clt_region` VALUES ('1361','160','辉县市','3');
INSERT INTO `clt_region` VALUES ('1362','160','新乡县','3');
INSERT INTO `clt_region` VALUES ('1363','160','获嘉县','3');
INSERT INTO `clt_region` VALUES ('1364','160','原阳县','3');
INSERT INTO `clt_region` VALUES ('1365','160','延津县','3');
INSERT INTO `clt_region` VALUES ('1366','160','封丘县','3');
INSERT INTO `clt_region` VALUES ('1367','160','长垣县','3');
INSERT INTO `clt_region` VALUES ('1368','161','浉河区','3');
INSERT INTO `clt_region` VALUES ('1369','161','平桥区','3');
INSERT INTO `clt_region` VALUES ('1370','161','罗山县','3');
INSERT INTO `clt_region` VALUES ('1371','161','光山县','3');
INSERT INTO `clt_region` VALUES ('1372','161','新县','3');
INSERT INTO `clt_region` VALUES ('1373','161','商城县','3');
INSERT INTO `clt_region` VALUES ('1374','161','固始县','3');
INSERT INTO `clt_region` VALUES ('1375','161','潢川县','3');
INSERT INTO `clt_region` VALUES ('1376','161','淮滨县','3');
INSERT INTO `clt_region` VALUES ('1377','161','息县','3');
INSERT INTO `clt_region` VALUES ('1378','162','魏都区','3');
INSERT INTO `clt_region` VALUES ('1379','162','禹州市','3');
INSERT INTO `clt_region` VALUES ('1380','162','长葛市','3');
INSERT INTO `clt_region` VALUES ('1381','162','许昌县','3');
INSERT INTO `clt_region` VALUES ('1382','162','鄢陵县','3');
INSERT INTO `clt_region` VALUES ('1383','162','襄城县','3');
INSERT INTO `clt_region` VALUES ('1384','163','川汇区','3');
INSERT INTO `clt_region` VALUES ('1385','163','项城市','3');
INSERT INTO `clt_region` VALUES ('1386','163','扶沟县','3');
INSERT INTO `clt_region` VALUES ('1387','163','西华县','3');
INSERT INTO `clt_region` VALUES ('1388','163','商水县','3');
INSERT INTO `clt_region` VALUES ('1389','163','沈丘县','3');
INSERT INTO `clt_region` VALUES ('1390','163','郸城县','3');
INSERT INTO `clt_region` VALUES ('1391','163','淮阳县','3');
INSERT INTO `clt_region` VALUES ('1392','163','太康县','3');
INSERT INTO `clt_region` VALUES ('1393','163','鹿邑县','3');
INSERT INTO `clt_region` VALUES ('1394','164','驿城区','3');
INSERT INTO `clt_region` VALUES ('1395','164','西平县','3');
INSERT INTO `clt_region` VALUES ('1396','164','上蔡县','3');
INSERT INTO `clt_region` VALUES ('1397','164','平舆县','3');
INSERT INTO `clt_region` VALUES ('1398','164','正阳县','3');
INSERT INTO `clt_region` VALUES ('1399','164','确山县','3');
INSERT INTO `clt_region` VALUES ('1400','164','泌阳县','3');
INSERT INTO `clt_region` VALUES ('1401','164','汝南县','3');
INSERT INTO `clt_region` VALUES ('1402','164','遂平县','3');
INSERT INTO `clt_region` VALUES ('1403','164','新蔡县','3');
INSERT INTO `clt_region` VALUES ('1404','165','郾城区','3');
INSERT INTO `clt_region` VALUES ('1405','165','源汇区','3');
INSERT INTO `clt_region` VALUES ('1406','165','召陵区','3');
INSERT INTO `clt_region` VALUES ('1407','165','舞阳县','3');
INSERT INTO `clt_region` VALUES ('1408','165','临颍县','3');
INSERT INTO `clt_region` VALUES ('1409','166','华龙区','3');
INSERT INTO `clt_region` VALUES ('1410','166','清丰县','3');
INSERT INTO `clt_region` VALUES ('1411','166','南乐县','3');
INSERT INTO `clt_region` VALUES ('1412','166','范县','3');
INSERT INTO `clt_region` VALUES ('1413','166','台前县','3');
INSERT INTO `clt_region` VALUES ('1414','166','濮阳县','3');
INSERT INTO `clt_region` VALUES ('1415','167','道里区','3');
INSERT INTO `clt_region` VALUES ('1416','167','南岗区','3');
INSERT INTO `clt_region` VALUES ('1417','167','动力区','3');
INSERT INTO `clt_region` VALUES ('1418','167','平房区','3');
INSERT INTO `clt_region` VALUES ('1419','167','香坊区','3');
INSERT INTO `clt_region` VALUES ('1420','167','太平区','3');
INSERT INTO `clt_region` VALUES ('1421','167','道外区','3');
INSERT INTO `clt_region` VALUES ('1422','167','阿城区','3');
INSERT INTO `clt_region` VALUES ('1423','167','呼兰区','3');
INSERT INTO `clt_region` VALUES ('1424','167','松北区','3');
INSERT INTO `clt_region` VALUES ('1425','167','尚志市','3');
INSERT INTO `clt_region` VALUES ('1426','167','双城市','3');
INSERT INTO `clt_region` VALUES ('1427','167','五常市','3');
INSERT INTO `clt_region` VALUES ('1428','167','方正县','3');
INSERT INTO `clt_region` VALUES ('1429','167','宾县','3');
INSERT INTO `clt_region` VALUES ('1430','167','依兰县','3');
INSERT INTO `clt_region` VALUES ('1431','167','巴彦县','3');
INSERT INTO `clt_region` VALUES ('1432','167','通河县','3');
INSERT INTO `clt_region` VALUES ('1433','167','木兰县','3');
INSERT INTO `clt_region` VALUES ('1434','167','延寿县','3');
INSERT INTO `clt_region` VALUES ('1435','168','萨尔图区','3');
INSERT INTO `clt_region` VALUES ('1436','168','红岗区','3');
INSERT INTO `clt_region` VALUES ('1437','168','龙凤区','3');
INSERT INTO `clt_region` VALUES ('1438','168','让胡路区','3');
INSERT INTO `clt_region` VALUES ('1439','168','大同区','3');
INSERT INTO `clt_region` VALUES ('1440','168','肇州县','3');
INSERT INTO `clt_region` VALUES ('1441','168','肇源县','3');
INSERT INTO `clt_region` VALUES ('1442','168','林甸县','3');
INSERT INTO `clt_region` VALUES ('1443','168','杜尔伯特','3');
INSERT INTO `clt_region` VALUES ('1444','169','呼玛县','3');
INSERT INTO `clt_region` VALUES ('1445','169','漠河县','3');
INSERT INTO `clt_region` VALUES ('1446','169','塔河县','3');
INSERT INTO `clt_region` VALUES ('1447','170','兴山区','3');
INSERT INTO `clt_region` VALUES ('1448','170','工农区','3');
INSERT INTO `clt_region` VALUES ('1449','170','南山区','3');
INSERT INTO `clt_region` VALUES ('1450','170','兴安区','3');
INSERT INTO `clt_region` VALUES ('1451','170','向阳区','3');
INSERT INTO `clt_region` VALUES ('1452','170','东山区','3');
INSERT INTO `clt_region` VALUES ('1453','170','萝北县','3');
INSERT INTO `clt_region` VALUES ('1454','170','绥滨县','3');
INSERT INTO `clt_region` VALUES ('1455','171','爱辉区','3');
INSERT INTO `clt_region` VALUES ('1456','171','五大连池市','3');
INSERT INTO `clt_region` VALUES ('1457','171','北安市','3');
INSERT INTO `clt_region` VALUES ('1458','171','嫩江县','3');
INSERT INTO `clt_region` VALUES ('1459','171','逊克县','3');
INSERT INTO `clt_region` VALUES ('1460','171','孙吴县','3');
INSERT INTO `clt_region` VALUES ('1461','172','鸡冠区','3');
INSERT INTO `clt_region` VALUES ('1462','172','恒山区','3');
INSERT INTO `clt_region` VALUES ('1463','172','城子河区','3');
INSERT INTO `clt_region` VALUES ('1464','172','滴道区','3');
INSERT INTO `clt_region` VALUES ('1465','172','梨树区','3');
INSERT INTO `clt_region` VALUES ('1466','172','虎林市','3');
INSERT INTO `clt_region` VALUES ('1467','172','密山市','3');
INSERT INTO `clt_region` VALUES ('1468','172','鸡东县','3');
INSERT INTO `clt_region` VALUES ('1469','173','前进区','3');
INSERT INTO `clt_region` VALUES ('1470','173','郊区','3');
INSERT INTO `clt_region` VALUES ('1471','173','向阳区','3');
INSERT INTO `clt_region` VALUES ('1472','173','东风区','3');
INSERT INTO `clt_region` VALUES ('1473','173','同江市','3');
INSERT INTO `clt_region` VALUES ('1474','173','富锦市','3');
INSERT INTO `clt_region` VALUES ('1475','173','桦南县','3');
INSERT INTO `clt_region` VALUES ('1476','173','桦川县','3');
INSERT INTO `clt_region` VALUES ('1477','173','汤原县','3');
INSERT INTO `clt_region` VALUES ('1478','173','抚远县','3');
INSERT INTO `clt_region` VALUES ('1479','174','爱民区','3');
INSERT INTO `clt_region` VALUES ('1480','174','东安区','3');
INSERT INTO `clt_region` VALUES ('1481','174','阳明区','3');
INSERT INTO `clt_region` VALUES ('1482','174','西安区','3');
INSERT INTO `clt_region` VALUES ('1483','174','绥芬河市','3');
INSERT INTO `clt_region` VALUES ('1484','174','海林市','3');
INSERT INTO `clt_region` VALUES ('1485','174','宁安市','3');
INSERT INTO `clt_region` VALUES ('1486','174','穆棱市','3');
INSERT INTO `clt_region` VALUES ('1487','174','东宁县','3');
INSERT INTO `clt_region` VALUES ('1488','174','林口县','3');
INSERT INTO `clt_region` VALUES ('1489','175','桃山区','3');
INSERT INTO `clt_region` VALUES ('1490','175','新兴区','3');
INSERT INTO `clt_region` VALUES ('1491','175','茄子河区','3');
INSERT INTO `clt_region` VALUES ('1492','175','勃利县','3');
INSERT INTO `clt_region` VALUES ('1493','176','龙沙区','3');
INSERT INTO `clt_region` VALUES ('1494','176','昂昂溪区','3');
INSERT INTO `clt_region` VALUES ('1495','176','铁峰区','3');
INSERT INTO `clt_region` VALUES ('1496','176','建华区','3');
INSERT INTO `clt_region` VALUES ('1497','176','富拉尔基区','3');
INSERT INTO `clt_region` VALUES ('1498','176','碾子山区','3');
INSERT INTO `clt_region` VALUES ('1499','176','梅里斯达斡尔区','3');
INSERT INTO `clt_region` VALUES ('1500','176','讷河市','3');
INSERT INTO `clt_region` VALUES ('1501','176','龙江县','3');
INSERT INTO `clt_region` VALUES ('1502','176','依安县','3');
INSERT INTO `clt_region` VALUES ('1503','176','泰来县','3');
INSERT INTO `clt_region` VALUES ('1504','176','甘南县','3');
INSERT INTO `clt_region` VALUES ('1505','176','富裕县','3');
INSERT INTO `clt_region` VALUES ('1506','176','克山县','3');
INSERT INTO `clt_region` VALUES ('1507','176','克东县','3');
INSERT INTO `clt_region` VALUES ('1508','176','拜泉县','3');
INSERT INTO `clt_region` VALUES ('1509','177','尖山区','3');
INSERT INTO `clt_region` VALUES ('1510','177','岭东区','3');
INSERT INTO `clt_region` VALUES ('1511','177','四方台区','3');
INSERT INTO `clt_region` VALUES ('1512','177','宝山区','3');
INSERT INTO `clt_region` VALUES ('1513','177','集贤县','3');
INSERT INTO `clt_region` VALUES ('1514','177','友谊县','3');
INSERT INTO `clt_region` VALUES ('1515','177','宝清县','3');
INSERT INTO `clt_region` VALUES ('1516','177','饶河县','3');
INSERT INTO `clt_region` VALUES ('1517','178','北林区','3');
INSERT INTO `clt_region` VALUES ('1518','178','安达市','3');
INSERT INTO `clt_region` VALUES ('1519','178','肇东市','3');
INSERT INTO `clt_region` VALUES ('1520','178','海伦市','3');
INSERT INTO `clt_region` VALUES ('1521','178','望奎县','3');
INSERT INTO `clt_region` VALUES ('1522','178','兰西县','3');
INSERT INTO `clt_region` VALUES ('1523','178','青冈县','3');
INSERT INTO `clt_region` VALUES ('1524','178','庆安县','3');
INSERT INTO `clt_region` VALUES ('1525','178','明水县','3');
INSERT INTO `clt_region` VALUES ('1526','178','绥棱县','3');
INSERT INTO `clt_region` VALUES ('1527','179','伊春区','3');
INSERT INTO `clt_region` VALUES ('1528','179','带岭区','3');
INSERT INTO `clt_region` VALUES ('1529','179','南岔区','3');
INSERT INTO `clt_region` VALUES ('1530','179','金山屯区','3');
INSERT INTO `clt_region` VALUES ('1531','179','西林区','3');
INSERT INTO `clt_region` VALUES ('1532','179','美溪区','3');
INSERT INTO `clt_region` VALUES ('1533','179','乌马河区','3');
INSERT INTO `clt_region` VALUES ('1534','179','翠峦区','3');
INSERT INTO `clt_region` VALUES ('1535','179','友好区','3');
INSERT INTO `clt_region` VALUES ('1536','179','上甘岭区','3');
INSERT INTO `clt_region` VALUES ('1537','179','五营区','3');
INSERT INTO `clt_region` VALUES ('1538','179','红星区','3');
INSERT INTO `clt_region` VALUES ('1539','179','新青区','3');
INSERT INTO `clt_region` VALUES ('1540','179','汤旺河区','3');
INSERT INTO `clt_region` VALUES ('1541','179','乌伊岭区','3');
INSERT INTO `clt_region` VALUES ('1542','179','铁力市','3');
INSERT INTO `clt_region` VALUES ('1543','179','嘉荫县','3');
INSERT INTO `clt_region` VALUES ('1544','180','江岸区','3');
INSERT INTO `clt_region` VALUES ('1545','180','武昌区','3');
INSERT INTO `clt_region` VALUES ('1546','180','江汉区','3');
INSERT INTO `clt_region` VALUES ('1547','180','硚口区','3');
INSERT INTO `clt_region` VALUES ('1548','180','汉阳区','3');
INSERT INTO `clt_region` VALUES ('1549','180','青山区','3');
INSERT INTO `clt_region` VALUES ('1550','180','洪山区','3');
INSERT INTO `clt_region` VALUES ('1551','180','东西湖区','3');
INSERT INTO `clt_region` VALUES ('1552','180','汉南区','3');
INSERT INTO `clt_region` VALUES ('1553','180','蔡甸区','3');
INSERT INTO `clt_region` VALUES ('1554','180','江夏区','3');
INSERT INTO `clt_region` VALUES ('1555','180','黄陂区','3');
INSERT INTO `clt_region` VALUES ('1556','180','新洲区','3');
INSERT INTO `clt_region` VALUES ('1557','180','经济开发区','3');
INSERT INTO `clt_region` VALUES ('1558','181','仙桃市','3');
INSERT INTO `clt_region` VALUES ('1559','182','鄂城区','3');
INSERT INTO `clt_region` VALUES ('1560','182','华容区','3');
INSERT INTO `clt_region` VALUES ('1561','182','梁子湖区','3');
INSERT INTO `clt_region` VALUES ('1562','183','黄州区','3');
INSERT INTO `clt_region` VALUES ('1563','183','麻城市','3');
INSERT INTO `clt_region` VALUES ('1564','183','武穴市','3');
INSERT INTO `clt_region` VALUES ('1565','183','团风县','3');
INSERT INTO `clt_region` VALUES ('1566','183','红安县','3');
INSERT INTO `clt_region` VALUES ('1567','183','罗田县','3');
INSERT INTO `clt_region` VALUES ('1568','183','英山县','3');
INSERT INTO `clt_region` VALUES ('1569','183','浠水县','3');
INSERT INTO `clt_region` VALUES ('1570','183','蕲春县','3');
INSERT INTO `clt_region` VALUES ('1571','183','黄梅县','3');
INSERT INTO `clt_region` VALUES ('1572','184','黄石港区','3');
INSERT INTO `clt_region` VALUES ('1573','184','西塞山区','3');
INSERT INTO `clt_region` VALUES ('1574','184','下陆区','3');
INSERT INTO `clt_region` VALUES ('1575','184','铁山区','3');
INSERT INTO `clt_region` VALUES ('1576','184','大冶市','3');
INSERT INTO `clt_region` VALUES ('1577','184','阳新县','3');
INSERT INTO `clt_region` VALUES ('1578','185','东宝区','3');
INSERT INTO `clt_region` VALUES ('1579','185','掇刀区','3');
INSERT INTO `clt_region` VALUES ('1580','185','钟祥市','3');
INSERT INTO `clt_region` VALUES ('1581','185','京山县','3');
INSERT INTO `clt_region` VALUES ('1582','185','沙洋县','3');
INSERT INTO `clt_region` VALUES ('1583','186','沙市区','3');
INSERT INTO `clt_region` VALUES ('1584','186','荆州区','3');
INSERT INTO `clt_region` VALUES ('1585','186','石首市','3');
INSERT INTO `clt_region` VALUES ('1586','186','洪湖市','3');
INSERT INTO `clt_region` VALUES ('1587','186','松滋市','3');
INSERT INTO `clt_region` VALUES ('1588','186','公安县','3');
INSERT INTO `clt_region` VALUES ('1589','186','监利县','3');
INSERT INTO `clt_region` VALUES ('1590','186','江陵县','3');
INSERT INTO `clt_region` VALUES ('1591','187','潜江市','3');
INSERT INTO `clt_region` VALUES ('1592','188','神农架林区','3');
INSERT INTO `clt_region` VALUES ('1593','189','张湾区','3');
INSERT INTO `clt_region` VALUES ('1594','189','茅箭区','3');
INSERT INTO `clt_region` VALUES ('1595','189','丹江口市','3');
INSERT INTO `clt_region` VALUES ('1596','189','郧县','3');
INSERT INTO `clt_region` VALUES ('1597','189','郧西县','3');
INSERT INTO `clt_region` VALUES ('1598','189','竹山县','3');
INSERT INTO `clt_region` VALUES ('1599','189','竹溪县','3');
INSERT INTO `clt_region` VALUES ('1600','189','房县','3');
INSERT INTO `clt_region` VALUES ('1601','190','曾都区','3');
INSERT INTO `clt_region` VALUES ('1602','190','广水市','3');
INSERT INTO `clt_region` VALUES ('1603','191','天门市','3');
INSERT INTO `clt_region` VALUES ('1604','192','咸安区','3');
INSERT INTO `clt_region` VALUES ('1605','192','赤壁市','3');
INSERT INTO `clt_region` VALUES ('1606','192','嘉鱼县','3');
INSERT INTO `clt_region` VALUES ('1607','192','通城县','3');
INSERT INTO `clt_region` VALUES ('1608','192','崇阳县','3');
INSERT INTO `clt_region` VALUES ('1609','192','通山县','3');
INSERT INTO `clt_region` VALUES ('1610','193','襄城区','3');
INSERT INTO `clt_region` VALUES ('1611','193','樊城区','3');
INSERT INTO `clt_region` VALUES ('1612','193','襄阳区','3');
INSERT INTO `clt_region` VALUES ('1613','193','老河口市','3');
INSERT INTO `clt_region` VALUES ('1614','193','枣阳市','3');
INSERT INTO `clt_region` VALUES ('1615','193','宜城市','3');
INSERT INTO `clt_region` VALUES ('1616','193','南漳县','3');
INSERT INTO `clt_region` VALUES ('1617','193','谷城县','3');
INSERT INTO `clt_region` VALUES ('1618','193','保康县','3');
INSERT INTO `clt_region` VALUES ('1619','194','孝南区','3');
INSERT INTO `clt_region` VALUES ('1620','194','应城市','3');
INSERT INTO `clt_region` VALUES ('1621','194','安陆市','3');
INSERT INTO `clt_region` VALUES ('1622','194','汉川市','3');
INSERT INTO `clt_region` VALUES ('1623','194','孝昌县','3');
INSERT INTO `clt_region` VALUES ('1624','194','大悟县','3');
INSERT INTO `clt_region` VALUES ('1625','194','云梦县','3');
INSERT INTO `clt_region` VALUES ('1626','195','长阳','3');
INSERT INTO `clt_region` VALUES ('1627','195','五峰','3');
INSERT INTO `clt_region` VALUES ('1628','195','西陵区','3');
INSERT INTO `clt_region` VALUES ('1629','195','伍家岗区','3');
INSERT INTO `clt_region` VALUES ('1630','195','点军区','3');
INSERT INTO `clt_region` VALUES ('1631','195','猇亭区','3');
INSERT INTO `clt_region` VALUES ('1632','195','夷陵区','3');
INSERT INTO `clt_region` VALUES ('1633','195','宜都市','3');
INSERT INTO `clt_region` VALUES ('1634','195','当阳市','3');
INSERT INTO `clt_region` VALUES ('1635','195','枝江市','3');
INSERT INTO `clt_region` VALUES ('1636','195','远安县','3');
INSERT INTO `clt_region` VALUES ('1637','195','兴山县','3');
INSERT INTO `clt_region` VALUES ('1638','195','秭归县','3');
INSERT INTO `clt_region` VALUES ('1639','196','恩施市','3');
INSERT INTO `clt_region` VALUES ('1640','196','利川市','3');
INSERT INTO `clt_region` VALUES ('1641','196','建始县','3');
INSERT INTO `clt_region` VALUES ('1642','196','巴东县','3');
INSERT INTO `clt_region` VALUES ('1643','196','宣恩县','3');
INSERT INTO `clt_region` VALUES ('1644','196','咸丰县','3');
INSERT INTO `clt_region` VALUES ('1645','196','来凤县','3');
INSERT INTO `clt_region` VALUES ('1646','196','鹤峰县','3');
INSERT INTO `clt_region` VALUES ('1647','197','岳麓区','3');
INSERT INTO `clt_region` VALUES ('1648','197','芙蓉区','3');
INSERT INTO `clt_region` VALUES ('1649','197','天心区','3');
INSERT INTO `clt_region` VALUES ('1650','197','开福区','3');
INSERT INTO `clt_region` VALUES ('1651','197','雨花区','3');
INSERT INTO `clt_region` VALUES ('1652','197','开发区','3');
INSERT INTO `clt_region` VALUES ('1653','197','浏阳市','3');
INSERT INTO `clt_region` VALUES ('1654','197','长沙县','3');
INSERT INTO `clt_region` VALUES ('1655','197','望城县','3');
INSERT INTO `clt_region` VALUES ('1656','197','宁乡县','3');
INSERT INTO `clt_region` VALUES ('1657','198','永定区','3');
INSERT INTO `clt_region` VALUES ('1658','198','武陵源区','3');
INSERT INTO `clt_region` VALUES ('1659','198','慈利县','3');
INSERT INTO `clt_region` VALUES ('1660','198','桑植县','3');
INSERT INTO `clt_region` VALUES ('1661','199','武陵区','3');
INSERT INTO `clt_region` VALUES ('1662','199','鼎城区','3');
INSERT INTO `clt_region` VALUES ('1663','199','津市市','3');
INSERT INTO `clt_region` VALUES ('1664','199','安乡县','3');
INSERT INTO `clt_region` VALUES ('1665','199','汉寿县','3');
INSERT INTO `clt_region` VALUES ('1666','199','澧县','3');
INSERT INTO `clt_region` VALUES ('1667','199','临澧县','3');
INSERT INTO `clt_region` VALUES ('1668','199','桃源县','3');
INSERT INTO `clt_region` VALUES ('1669','199','石门县','3');
INSERT INTO `clt_region` VALUES ('1670','200','北湖区','3');
INSERT INTO `clt_region` VALUES ('1671','200','苏仙区','3');
INSERT INTO `clt_region` VALUES ('1672','200','资兴市','3');
INSERT INTO `clt_region` VALUES ('1673','200','桂阳县','3');
INSERT INTO `clt_region` VALUES ('1674','200','宜章县','3');
INSERT INTO `clt_region` VALUES ('1675','200','永兴县','3');
INSERT INTO `clt_region` VALUES ('1676','200','嘉禾县','3');
INSERT INTO `clt_region` VALUES ('1677','200','临武县','3');
INSERT INTO `clt_region` VALUES ('1678','200','汝城县','3');
INSERT INTO `clt_region` VALUES ('1679','200','桂东县','3');
INSERT INTO `clt_region` VALUES ('1680','200','安仁县','3');
INSERT INTO `clt_region` VALUES ('1681','201','雁峰区','3');
INSERT INTO `clt_region` VALUES ('1682','201','珠晖区','3');
INSERT INTO `clt_region` VALUES ('1683','201','石鼓区','3');
INSERT INTO `clt_region` VALUES ('1684','201','蒸湘区','3');
INSERT INTO `clt_region` VALUES ('1685','201','南岳区','3');
INSERT INTO `clt_region` VALUES ('1686','201','耒阳市','3');
INSERT INTO `clt_region` VALUES ('1687','201','常宁市','3');
INSERT INTO `clt_region` VALUES ('1688','201','衡阳县','3');
INSERT INTO `clt_region` VALUES ('1689','201','衡南县','3');
INSERT INTO `clt_region` VALUES ('1690','201','衡山县','3');
INSERT INTO `clt_region` VALUES ('1691','201','衡东县','3');
INSERT INTO `clt_region` VALUES ('1692','201','祁东县','3');
INSERT INTO `clt_region` VALUES ('1693','202','鹤城区','3');
INSERT INTO `clt_region` VALUES ('1694','202','靖州','3');
INSERT INTO `clt_region` VALUES ('1695','202','麻阳','3');
INSERT INTO `clt_region` VALUES ('1696','202','通道','3');
INSERT INTO `clt_region` VALUES ('1697','202','新晃','3');
INSERT INTO `clt_region` VALUES ('1698','202','芷江','3');
INSERT INTO `clt_region` VALUES ('1699','202','沅陵县','3');
INSERT INTO `clt_region` VALUES ('1700','202','辰溪县','3');
INSERT INTO `clt_region` VALUES ('1701','202','溆浦县','3');
INSERT INTO `clt_region` VALUES ('1702','202','中方县','3');
INSERT INTO `clt_region` VALUES ('1703','202','会同县','3');
INSERT INTO `clt_region` VALUES ('1704','202','洪江市','3');
INSERT INTO `clt_region` VALUES ('1705','203','娄星区','3');
INSERT INTO `clt_region` VALUES ('1706','203','冷水江市','3');
INSERT INTO `clt_region` VALUES ('1707','203','涟源市','3');
INSERT INTO `clt_region` VALUES ('1708','203','双峰县','3');
INSERT INTO `clt_region` VALUES ('1709','203','新化县','3');
INSERT INTO `clt_region` VALUES ('1710','204','城步','3');
INSERT INTO `clt_region` VALUES ('1711','204','双清区','3');
INSERT INTO `clt_region` VALUES ('1712','204','大祥区','3');
INSERT INTO `clt_region` VALUES ('1713','204','北塔区','3');
INSERT INTO `clt_region` VALUES ('1714','204','武冈市','3');
INSERT INTO `clt_region` VALUES ('1715','204','邵东县','3');
INSERT INTO `clt_region` VALUES ('1716','204','新邵县','3');
INSERT INTO `clt_region` VALUES ('1717','204','邵阳县','3');
INSERT INTO `clt_region` VALUES ('1718','204','隆回县','3');
INSERT INTO `clt_region` VALUES ('1719','204','洞口县','3');
INSERT INTO `clt_region` VALUES ('1720','204','绥宁县','3');
INSERT INTO `clt_region` VALUES ('1721','204','新宁县','3');
INSERT INTO `clt_region` VALUES ('1722','205','岳塘区','3');
INSERT INTO `clt_region` VALUES ('1723','205','雨湖区','3');
INSERT INTO `clt_region` VALUES ('1724','205','湘乡市','3');
INSERT INTO `clt_region` VALUES ('1725','205','韶山市','3');
INSERT INTO `clt_region` VALUES ('1726','205','湘潭县','3');
INSERT INTO `clt_region` VALUES ('1727','206','吉首市','3');
INSERT INTO `clt_region` VALUES ('1728','206','泸溪县','3');
INSERT INTO `clt_region` VALUES ('1729','206','凤凰县','3');
INSERT INTO `clt_region` VALUES ('1730','206','花垣县','3');
INSERT INTO `clt_region` VALUES ('1731','206','保靖县','3');
INSERT INTO `clt_region` VALUES ('1732','206','古丈县','3');
INSERT INTO `clt_region` VALUES ('1733','206','永顺县','3');
INSERT INTO `clt_region` VALUES ('1734','206','龙山县','3');
INSERT INTO `clt_region` VALUES ('1735','207','赫山区','3');
INSERT INTO `clt_region` VALUES ('1736','207','资阳区','3');
INSERT INTO `clt_region` VALUES ('1737','207','沅江市','3');
INSERT INTO `clt_region` VALUES ('1738','207','南县','3');
INSERT INTO `clt_region` VALUES ('1739','207','桃江县','3');
INSERT INTO `clt_region` VALUES ('1740','207','安化县','3');
INSERT INTO `clt_region` VALUES ('1741','208','江华','3');
INSERT INTO `clt_region` VALUES ('1742','208','冷水滩区','3');
INSERT INTO `clt_region` VALUES ('1743','208','零陵区','3');
INSERT INTO `clt_region` VALUES ('1744','208','祁阳县','3');
INSERT INTO `clt_region` VALUES ('1745','208','东安县','3');
INSERT INTO `clt_region` VALUES ('1746','208','双牌县','3');
INSERT INTO `clt_region` VALUES ('1747','208','道县','3');
INSERT INTO `clt_region` VALUES ('1748','208','江永县','3');
INSERT INTO `clt_region` VALUES ('1749','208','宁远县','3');
INSERT INTO `clt_region` VALUES ('1750','208','蓝山县','3');
INSERT INTO `clt_region` VALUES ('1751','208','新田县','3');
INSERT INTO `clt_region` VALUES ('1752','209','岳阳楼区','3');
INSERT INTO `clt_region` VALUES ('1753','209','君山区','3');
INSERT INTO `clt_region` VALUES ('1754','209','云溪区','3');
INSERT INTO `clt_region` VALUES ('1755','209','汨罗市','3');
INSERT INTO `clt_region` VALUES ('1756','209','临湘市','3');
INSERT INTO `clt_region` VALUES ('1757','209','岳阳县','3');
INSERT INTO `clt_region` VALUES ('1758','209','华容县','3');
INSERT INTO `clt_region` VALUES ('1759','209','湘阴县','3');
INSERT INTO `clt_region` VALUES ('1760','209','平江县','3');
INSERT INTO `clt_region` VALUES ('1761','210','天元区','3');
INSERT INTO `clt_region` VALUES ('1762','210','荷塘区','3');
INSERT INTO `clt_region` VALUES ('1763','210','芦淞区','3');
INSERT INTO `clt_region` VALUES ('1764','210','石峰区','3');
INSERT INTO `clt_region` VALUES ('1765','210','醴陵市','3');
INSERT INTO `clt_region` VALUES ('1766','210','株洲县','3');
INSERT INTO `clt_region` VALUES ('1767','210','攸县','3');
INSERT INTO `clt_region` VALUES ('1768','210','茶陵县','3');
INSERT INTO `clt_region` VALUES ('1769','210','炎陵县','3');
INSERT INTO `clt_region` VALUES ('1770','211','朝阳区','3');
INSERT INTO `clt_region` VALUES ('1771','211','宽城区','3');
INSERT INTO `clt_region` VALUES ('1772','211','二道区','3');
INSERT INTO `clt_region` VALUES ('1773','211','南关区','3');
INSERT INTO `clt_region` VALUES ('1774','211','绿园区','3');
INSERT INTO `clt_region` VALUES ('1775','211','双阳区','3');
INSERT INTO `clt_region` VALUES ('1776','211','净月潭开发区','3');
INSERT INTO `clt_region` VALUES ('1777','211','高新技术开发区','3');
INSERT INTO `clt_region` VALUES ('1778','211','经济技术开发区','3');
INSERT INTO `clt_region` VALUES ('1779','211','汽车产业开发区','3');
INSERT INTO `clt_region` VALUES ('1780','211','德惠市','3');
INSERT INTO `clt_region` VALUES ('1781','211','九台市','3');
INSERT INTO `clt_region` VALUES ('1782','211','榆树市','3');
INSERT INTO `clt_region` VALUES ('1783','211','农安县','3');
INSERT INTO `clt_region` VALUES ('1784','212','船营区','3');
INSERT INTO `clt_region` VALUES ('1785','212','昌邑区','3');
INSERT INTO `clt_region` VALUES ('1786','212','龙潭区','3');
INSERT INTO `clt_region` VALUES ('1787','212','丰满区','3');
INSERT INTO `clt_region` VALUES ('1788','212','蛟河市','3');
INSERT INTO `clt_region` VALUES ('1789','212','桦甸市','3');
INSERT INTO `clt_region` VALUES ('1790','212','舒兰市','3');
INSERT INTO `clt_region` VALUES ('1791','212','磐石市','3');
INSERT INTO `clt_region` VALUES ('1792','212','永吉县','3');
INSERT INTO `clt_region` VALUES ('1793','213','洮北区','3');
INSERT INTO `clt_region` VALUES ('1794','213','洮南市','3');
INSERT INTO `clt_region` VALUES ('1795','213','大安市','3');
INSERT INTO `clt_region` VALUES ('1796','213','镇赉县','3');
INSERT INTO `clt_region` VALUES ('1797','213','通榆县','3');
INSERT INTO `clt_region` VALUES ('1798','214','江源区','3');
INSERT INTO `clt_region` VALUES ('1799','214','八道江区','3');
INSERT INTO `clt_region` VALUES ('1800','214','长白','3');
INSERT INTO `clt_region` VALUES ('1801','214','临江市','3');
INSERT INTO `clt_region` VALUES ('1802','214','抚松县','3');
INSERT INTO `clt_region` VALUES ('1803','214','靖宇县','3');
INSERT INTO `clt_region` VALUES ('1804','215','龙山区','3');
INSERT INTO `clt_region` VALUES ('1805','215','西安区','3');
INSERT INTO `clt_region` VALUES ('1806','215','东丰县','3');
INSERT INTO `clt_region` VALUES ('1807','215','东辽县','3');
INSERT INTO `clt_region` VALUES ('1808','216','铁西区','3');
INSERT INTO `clt_region` VALUES ('1809','216','铁东区','3');
INSERT INTO `clt_region` VALUES ('1810','216','伊通','3');
INSERT INTO `clt_region` VALUES ('1811','216','公主岭市','3');
INSERT INTO `clt_region` VALUES ('1812','216','双辽市','3');
INSERT INTO `clt_region` VALUES ('1813','216','梨树县','3');
INSERT INTO `clt_region` VALUES ('1814','217','前郭尔罗斯','3');
INSERT INTO `clt_region` VALUES ('1815','217','宁江区','3');
INSERT INTO `clt_region` VALUES ('1816','217','长岭县','3');
INSERT INTO `clt_region` VALUES ('1817','217','乾安县','3');
INSERT INTO `clt_region` VALUES ('1818','217','扶余县','3');
INSERT INTO `clt_region` VALUES ('1819','218','东昌区','3');
INSERT INTO `clt_region` VALUES ('1820','218','二道江区','3');
INSERT INTO `clt_region` VALUES ('1821','218','梅河口市','3');
INSERT INTO `clt_region` VALUES ('1822','218','集安市','3');
INSERT INTO `clt_region` VALUES ('1823','218','通化县','3');
INSERT INTO `clt_region` VALUES ('1824','218','辉南县','3');
INSERT INTO `clt_region` VALUES ('1825','218','柳河县','3');
INSERT INTO `clt_region` VALUES ('1826','219','延吉市','3');
INSERT INTO `clt_region` VALUES ('1827','219','图们市','3');
INSERT INTO `clt_region` VALUES ('1828','219','敦化市','3');
INSERT INTO `clt_region` VALUES ('1829','219','珲春市','3');
INSERT INTO `clt_region` VALUES ('1830','219','龙井市','3');
INSERT INTO `clt_region` VALUES ('1831','219','和龙市','3');
INSERT INTO `clt_region` VALUES ('1832','219','安图县','3');
INSERT INTO `clt_region` VALUES ('1833','219','汪清县','3');
INSERT INTO `clt_region` VALUES ('1834','220','玄武区','3');
INSERT INTO `clt_region` VALUES ('1835','220','鼓楼区','3');
INSERT INTO `clt_region` VALUES ('1836','220','白下区','3');
INSERT INTO `clt_region` VALUES ('1837','220','建邺区','3');
INSERT INTO `clt_region` VALUES ('1838','220','秦淮区','3');
INSERT INTO `clt_region` VALUES ('1839','220','雨花台区','3');
INSERT INTO `clt_region` VALUES ('1840','220','下关区','3');
INSERT INTO `clt_region` VALUES ('1841','220','栖霞区','3');
INSERT INTO `clt_region` VALUES ('1842','220','浦口区','3');
INSERT INTO `clt_region` VALUES ('1843','220','江宁区','3');
INSERT INTO `clt_region` VALUES ('1844','220','六合区','3');
INSERT INTO `clt_region` VALUES ('1845','220','溧水县','3');
INSERT INTO `clt_region` VALUES ('1846','220','高淳县','3');
INSERT INTO `clt_region` VALUES ('1847','221','沧浪区','3');
INSERT INTO `clt_region` VALUES ('1848','221','金阊区','3');
INSERT INTO `clt_region` VALUES ('1849','221','平江区','3');
INSERT INTO `clt_region` VALUES ('1850','221','虎丘区','3');
INSERT INTO `clt_region` VALUES ('1851','221','吴中区','3');
INSERT INTO `clt_region` VALUES ('1852','221','相城区','3');
INSERT INTO `clt_region` VALUES ('1853','221','园区','3');
INSERT INTO `clt_region` VALUES ('1854','221','新区','3');
INSERT INTO `clt_region` VALUES ('1855','221','常熟市','3');
INSERT INTO `clt_region` VALUES ('1856','221','张家港市','3');
INSERT INTO `clt_region` VALUES ('1857','221','玉山镇','3');
INSERT INTO `clt_region` VALUES ('1858','221','巴城镇','3');
INSERT INTO `clt_region` VALUES ('1859','221','周市镇','3');
INSERT INTO `clt_region` VALUES ('1860','221','陆家镇','3');
INSERT INTO `clt_region` VALUES ('1861','221','花桥镇','3');
INSERT INTO `clt_region` VALUES ('1862','221','淀山湖镇','3');
INSERT INTO `clt_region` VALUES ('1863','221','张浦镇','3');
INSERT INTO `clt_region` VALUES ('1864','221','周庄镇','3');
INSERT INTO `clt_region` VALUES ('1865','221','千灯镇','3');
INSERT INTO `clt_region` VALUES ('1866','221','锦溪镇','3');
INSERT INTO `clt_region` VALUES ('1867','221','开发区','3');
INSERT INTO `clt_region` VALUES ('1868','221','吴江市','3');
INSERT INTO `clt_region` VALUES ('1869','221','太仓市','3');
INSERT INTO `clt_region` VALUES ('1870','222','崇安区','3');
INSERT INTO `clt_region` VALUES ('1871','222','北塘区','3');
INSERT INTO `clt_region` VALUES ('1872','222','南长区','3');
INSERT INTO `clt_region` VALUES ('1873','222','锡山区','3');
INSERT INTO `clt_region` VALUES ('1874','222','惠山区','3');
INSERT INTO `clt_region` VALUES ('1875','222','滨湖区','3');
INSERT INTO `clt_region` VALUES ('1876','222','新区','3');
INSERT INTO `clt_region` VALUES ('1877','222','江阴市','3');
INSERT INTO `clt_region` VALUES ('1878','222','宜兴市','3');
INSERT INTO `clt_region` VALUES ('1879','223','天宁区','3');
INSERT INTO `clt_region` VALUES ('1880','223','钟楼区','3');
INSERT INTO `clt_region` VALUES ('1881','223','戚墅堰区','3');
INSERT INTO `clt_region` VALUES ('1882','223','郊区','3');
INSERT INTO `clt_region` VALUES ('1883','223','新北区','3');
INSERT INTO `clt_region` VALUES ('1884','223','武进区','3');
INSERT INTO `clt_region` VALUES ('1885','223','溧阳市','3');
INSERT INTO `clt_region` VALUES ('1886','223','金坛市','3');
INSERT INTO `clt_region` VALUES ('1887','224','清河区','3');
INSERT INTO `clt_region` VALUES ('1888','224','清浦区','3');
INSERT INTO `clt_region` VALUES ('1889','224','楚州区','3');
INSERT INTO `clt_region` VALUES ('1890','224','淮阴区','3');
INSERT INTO `clt_region` VALUES ('1891','224','涟水县','3');
INSERT INTO `clt_region` VALUES ('1892','224','洪泽县','3');
INSERT INTO `clt_region` VALUES ('1893','224','盱眙县','3');
INSERT INTO `clt_region` VALUES ('1894','224','金湖县','3');
INSERT INTO `clt_region` VALUES ('1895','225','新浦区','3');
INSERT INTO `clt_region` VALUES ('1896','225','连云区','3');
INSERT INTO `clt_region` VALUES ('1897','225','海州区','3');
INSERT INTO `clt_region` VALUES ('1898','225','赣榆县','3');
INSERT INTO `clt_region` VALUES ('1899','225','东海县','3');
INSERT INTO `clt_region` VALUES ('1900','225','灌云县','3');
INSERT INTO `clt_region` VALUES ('1901','225','灌南县','3');
INSERT INTO `clt_region` VALUES ('1902','226','崇川区','3');
INSERT INTO `clt_region` VALUES ('1903','226','港闸区','3');
INSERT INTO `clt_region` VALUES ('1904','226','经济开发区','3');
INSERT INTO `clt_region` VALUES ('1905','226','启东市','3');
INSERT INTO `clt_region` VALUES ('1906','226','如皋市','3');
INSERT INTO `clt_region` VALUES ('1907','226','通州市','3');
INSERT INTO `clt_region` VALUES ('1908','226','海门市','3');
INSERT INTO `clt_region` VALUES ('1909','226','海安县','3');
INSERT INTO `clt_region` VALUES ('1910','226','如东县','3');
INSERT INTO `clt_region` VALUES ('1911','227','宿城区','3');
INSERT INTO `clt_region` VALUES ('1912','227','宿豫区','3');
INSERT INTO `clt_region` VALUES ('1913','227','宿豫县','3');
INSERT INTO `clt_region` VALUES ('1914','227','沭阳县','3');
INSERT INTO `clt_region` VALUES ('1915','227','泗阳县','3');
INSERT INTO `clt_region` VALUES ('1916','227','泗洪县','3');
INSERT INTO `clt_region` VALUES ('1917','228','海陵区','3');
INSERT INTO `clt_region` VALUES ('1918','228','高港区','3');
INSERT INTO `clt_region` VALUES ('1919','228','兴化市','3');
INSERT INTO `clt_region` VALUES ('1920','228','靖江市','3');
INSERT INTO `clt_region` VALUES ('1921','228','泰兴市','3');
INSERT INTO `clt_region` VALUES ('1922','228','姜堰市','3');
INSERT INTO `clt_region` VALUES ('1923','229','云龙区','3');
INSERT INTO `clt_region` VALUES ('1924','229','鼓楼区','3');
INSERT INTO `clt_region` VALUES ('1925','229','九里区','3');
INSERT INTO `clt_region` VALUES ('1926','229','贾汪区','3');
INSERT INTO `clt_region` VALUES ('1927','229','泉山区','3');
INSERT INTO `clt_region` VALUES ('1928','229','新沂市','3');
INSERT INTO `clt_region` VALUES ('1929','229','邳州市','3');
INSERT INTO `clt_region` VALUES ('1930','229','丰县','3');
INSERT INTO `clt_region` VALUES ('1931','229','沛县','3');
INSERT INTO `clt_region` VALUES ('1932','229','铜山县','3');
INSERT INTO `clt_region` VALUES ('1933','229','睢宁县','3');
INSERT INTO `clt_region` VALUES ('1934','230','城区','3');
INSERT INTO `clt_region` VALUES ('1935','230','亭湖区','3');
INSERT INTO `clt_region` VALUES ('1936','230','盐都区','3');
INSERT INTO `clt_region` VALUES ('1937','230','盐都县','3');
INSERT INTO `clt_region` VALUES ('1938','230','东台市','3');
INSERT INTO `clt_region` VALUES ('1939','230','大丰市','3');
INSERT INTO `clt_region` VALUES ('1940','230','响水县','3');
INSERT INTO `clt_region` VALUES ('1941','230','滨海县','3');
INSERT INTO `clt_region` VALUES ('1942','230','阜宁县','3');
INSERT INTO `clt_region` VALUES ('1943','230','射阳县','3');
INSERT INTO `clt_region` VALUES ('1944','230','建湖县','3');
INSERT INTO `clt_region` VALUES ('1945','231','广陵区','3');
INSERT INTO `clt_region` VALUES ('1946','231','维扬区','3');
INSERT INTO `clt_region` VALUES ('1947','231','邗江区','3');
INSERT INTO `clt_region` VALUES ('1948','231','仪征市','3');
INSERT INTO `clt_region` VALUES ('1949','231','高邮市','3');
INSERT INTO `clt_region` VALUES ('1950','231','江都市','3');
INSERT INTO `clt_region` VALUES ('1951','231','宝应县','3');
INSERT INTO `clt_region` VALUES ('1952','232','京口区','3');
INSERT INTO `clt_region` VALUES ('1953','232','润州区','3');
INSERT INTO `clt_region` VALUES ('1954','232','丹徒区','3');
INSERT INTO `clt_region` VALUES ('1955','232','丹阳市','3');
INSERT INTO `clt_region` VALUES ('1956','232','扬中市','3');
INSERT INTO `clt_region` VALUES ('1957','232','句容市','3');
INSERT INTO `clt_region` VALUES ('1958','233','东湖区','3');
INSERT INTO `clt_region` VALUES ('1959','233','西湖区','3');
INSERT INTO `clt_region` VALUES ('1960','233','青云谱区','3');
INSERT INTO `clt_region` VALUES ('1961','233','湾里区','3');
INSERT INTO `clt_region` VALUES ('1962','233','青山湖区','3');
INSERT INTO `clt_region` VALUES ('1963','233','红谷滩新区','3');
INSERT INTO `clt_region` VALUES ('1964','233','昌北区','3');
INSERT INTO `clt_region` VALUES ('1965','233','高新区','3');
INSERT INTO `clt_region` VALUES ('1966','233','南昌县','3');
INSERT INTO `clt_region` VALUES ('1967','233','新建县','3');
INSERT INTO `clt_region` VALUES ('1968','233','安义县','3');
INSERT INTO `clt_region` VALUES ('1969','233','进贤县','3');
INSERT INTO `clt_region` VALUES ('1970','234','临川区','3');
INSERT INTO `clt_region` VALUES ('1971','234','南城县','3');
INSERT INTO `clt_region` VALUES ('1972','234','黎川县','3');
INSERT INTO `clt_region` VALUES ('1973','234','南丰县','3');
INSERT INTO `clt_region` VALUES ('1974','234','崇仁县','3');
INSERT INTO `clt_region` VALUES ('1975','234','乐安县','3');
INSERT INTO `clt_region` VALUES ('1976','234','宜黄县','3');
INSERT INTO `clt_region` VALUES ('1977','234','金溪县','3');
INSERT INTO `clt_region` VALUES ('1978','234','资溪县','3');
INSERT INTO `clt_region` VALUES ('1979','234','东乡县','3');
INSERT INTO `clt_region` VALUES ('1980','234','广昌县','3');
INSERT INTO `clt_region` VALUES ('1981','235','章贡区','3');
INSERT INTO `clt_region` VALUES ('1982','235','于都县','3');
INSERT INTO `clt_region` VALUES ('1983','235','瑞金市','3');
INSERT INTO `clt_region` VALUES ('1984','235','南康市','3');
INSERT INTO `clt_region` VALUES ('1985','235','赣县','3');
INSERT INTO `clt_region` VALUES ('1986','235','信丰县','3');
INSERT INTO `clt_region` VALUES ('1987','235','大余县','3');
INSERT INTO `clt_region` VALUES ('1988','235','上犹县','3');
INSERT INTO `clt_region` VALUES ('1989','235','崇义县','3');
INSERT INTO `clt_region` VALUES ('1990','235','安远县','3');
INSERT INTO `clt_region` VALUES ('1991','235','龙南县','3');
INSERT INTO `clt_region` VALUES ('1992','235','定南县','3');
INSERT INTO `clt_region` VALUES ('1993','235','全南县','3');
INSERT INTO `clt_region` VALUES ('1994','235','宁都县','3');
INSERT INTO `clt_region` VALUES ('1995','235','兴国县','3');
INSERT INTO `clt_region` VALUES ('1996','235','会昌县','3');
INSERT INTO `clt_region` VALUES ('1997','235','寻乌县','3');
INSERT INTO `clt_region` VALUES ('1998','235','石城县','3');
INSERT INTO `clt_region` VALUES ('1999','236','安福县','3');
INSERT INTO `clt_region` VALUES ('2000','236','吉州区','3');
INSERT INTO `clt_region` VALUES ('2001','236','青原区','3');
INSERT INTO `clt_region` VALUES ('2002','236','井冈山市','3');
INSERT INTO `clt_region` VALUES ('2003','236','吉安县','3');
INSERT INTO `clt_region` VALUES ('2004','236','吉水县','3');
INSERT INTO `clt_region` VALUES ('2005','236','峡江县','3');
INSERT INTO `clt_region` VALUES ('2006','236','新干县','3');
INSERT INTO `clt_region` VALUES ('2007','236','永丰县','3');
INSERT INTO `clt_region` VALUES ('2008','236','泰和县','3');
INSERT INTO `clt_region` VALUES ('2009','236','遂川县','3');
INSERT INTO `clt_region` VALUES ('2010','236','万安县','3');
INSERT INTO `clt_region` VALUES ('2011','236','永新县','3');
INSERT INTO `clt_region` VALUES ('2012','237','珠山区','3');
INSERT INTO `clt_region` VALUES ('2013','237','昌江区','3');
INSERT INTO `clt_region` VALUES ('2014','237','乐平市','3');
INSERT INTO `clt_region` VALUES ('2015','237','浮梁县','3');
INSERT INTO `clt_region` VALUES ('2016','238','浔阳区','3');
INSERT INTO `clt_region` VALUES ('2017','238','庐山区','3');
INSERT INTO `clt_region` VALUES ('2018','238','瑞昌市','3');
INSERT INTO `clt_region` VALUES ('2019','238','九江县','3');
INSERT INTO `clt_region` VALUES ('2020','238','武宁县','3');
INSERT INTO `clt_region` VALUES ('2021','238','修水县','3');
INSERT INTO `clt_region` VALUES ('2022','238','永修县','3');
INSERT INTO `clt_region` VALUES ('2023','238','德安县','3');
INSERT INTO `clt_region` VALUES ('2024','238','星子县','3');
INSERT INTO `clt_region` VALUES ('2025','238','都昌县','3');
INSERT INTO `clt_region` VALUES ('2026','238','湖口县','3');
INSERT INTO `clt_region` VALUES ('2027','238','彭泽县','3');
INSERT INTO `clt_region` VALUES ('2028','239','安源区','3');
INSERT INTO `clt_region` VALUES ('2029','239','湘东区','3');
INSERT INTO `clt_region` VALUES ('2030','239','莲花县','3');
INSERT INTO `clt_region` VALUES ('2031','239','芦溪县','3');
INSERT INTO `clt_region` VALUES ('2032','239','上栗县','3');
INSERT INTO `clt_region` VALUES ('2033','240','信州区','3');
INSERT INTO `clt_region` VALUES ('2034','240','德兴市','3');
INSERT INTO `clt_region` VALUES ('2035','240','上饶县','3');
INSERT INTO `clt_region` VALUES ('2036','240','广丰县','3');
INSERT INTO `clt_region` VALUES ('2037','240','玉山县','3');
INSERT INTO `clt_region` VALUES ('2038','240','铅山县','3');
INSERT INTO `clt_region` VALUES ('2039','240','横峰县','3');
INSERT INTO `clt_region` VALUES ('2040','240','弋阳县','3');
INSERT INTO `clt_region` VALUES ('2041','240','余干县','3');
INSERT INTO `clt_region` VALUES ('2042','240','波阳县','3');
INSERT INTO `clt_region` VALUES ('2043','240','万年县','3');
INSERT INTO `clt_region` VALUES ('2044','240','婺源县','3');
INSERT INTO `clt_region` VALUES ('2045','241','渝水区','3');
INSERT INTO `clt_region` VALUES ('2046','241','分宜县','3');
INSERT INTO `clt_region` VALUES ('2047','242','袁州区','3');
INSERT INTO `clt_region` VALUES ('2048','242','丰城市','3');
INSERT INTO `clt_region` VALUES ('2049','242','樟树市','3');
INSERT INTO `clt_region` VALUES ('2050','242','高安市','3');
INSERT INTO `clt_region` VALUES ('2051','242','奉新县','3');
INSERT INTO `clt_region` VALUES ('2052','242','万载县','3');
INSERT INTO `clt_region` VALUES ('2053','242','上高县','3');
INSERT INTO `clt_region` VALUES ('2054','242','宜丰县','3');
INSERT INTO `clt_region` VALUES ('2055','242','靖安县','3');
INSERT INTO `clt_region` VALUES ('2056','242','铜鼓县','3');
INSERT INTO `clt_region` VALUES ('2057','243','月湖区','3');
INSERT INTO `clt_region` VALUES ('2058','243','贵溪市','3');
INSERT INTO `clt_region` VALUES ('2059','243','余江县','3');
INSERT INTO `clt_region` VALUES ('2060','244','沈河区','3');
INSERT INTO `clt_region` VALUES ('2061','244','皇姑区','3');
INSERT INTO `clt_region` VALUES ('2062','244','和平区','3');
INSERT INTO `clt_region` VALUES ('2063','244','大东区','3');
INSERT INTO `clt_region` VALUES ('2064','244','铁西区','3');
INSERT INTO `clt_region` VALUES ('2065','244','苏家屯区','3');
INSERT INTO `clt_region` VALUES ('2066','244','东陵区','3');
INSERT INTO `clt_region` VALUES ('2067','244','沈北新区','3');
INSERT INTO `clt_region` VALUES ('2068','244','于洪区','3');
INSERT INTO `clt_region` VALUES ('2069','244','浑南新区','3');
INSERT INTO `clt_region` VALUES ('2070','244','新民市','3');
INSERT INTO `clt_region` VALUES ('2071','244','辽中县','3');
INSERT INTO `clt_region` VALUES ('2072','244','康平县','3');
INSERT INTO `clt_region` VALUES ('2073','244','法库县','3');
INSERT INTO `clt_region` VALUES ('2074','245','西岗区','3');
INSERT INTO `clt_region` VALUES ('2075','245','中山区','3');
INSERT INTO `clt_region` VALUES ('2076','245','沙河口区','3');
INSERT INTO `clt_region` VALUES ('2077','245','甘井子区','3');
INSERT INTO `clt_region` VALUES ('2078','245','旅顺口区','3');
INSERT INTO `clt_region` VALUES ('2079','245','金州区','3');
INSERT INTO `clt_region` VALUES ('2080','245','开发区','3');
INSERT INTO `clt_region` VALUES ('2081','245','瓦房店市','3');
INSERT INTO `clt_region` VALUES ('2082','245','普兰店市','3');
INSERT INTO `clt_region` VALUES ('2083','245','庄河市','3');
INSERT INTO `clt_region` VALUES ('2084','245','长海县','3');
INSERT INTO `clt_region` VALUES ('2085','246','铁东区','3');
INSERT INTO `clt_region` VALUES ('2086','246','铁西区','3');
INSERT INTO `clt_region` VALUES ('2087','246','立山区','3');
INSERT INTO `clt_region` VALUES ('2088','246','千山区','3');
INSERT INTO `clt_region` VALUES ('2089','246','岫岩','3');
INSERT INTO `clt_region` VALUES ('2090','246','海城市','3');
INSERT INTO `clt_region` VALUES ('2091','246','台安县','3');
INSERT INTO `clt_region` VALUES ('2092','247','本溪','3');
INSERT INTO `clt_region` VALUES ('2093','247','平山区','3');
INSERT INTO `clt_region` VALUES ('2094','247','明山区','3');
INSERT INTO `clt_region` VALUES ('2095','247','溪湖区','3');
INSERT INTO `clt_region` VALUES ('2096','247','南芬区','3');
INSERT INTO `clt_region` VALUES ('2097','247','桓仁','3');
INSERT INTO `clt_region` VALUES ('2098','248','双塔区','3');
INSERT INTO `clt_region` VALUES ('2099','248','龙城区','3');
INSERT INTO `clt_region` VALUES ('2100','248','喀喇沁左翼蒙古族自治县','3');
INSERT INTO `clt_region` VALUES ('2101','248','北票市','3');
INSERT INTO `clt_region` VALUES ('2102','248','凌源市','3');
INSERT INTO `clt_region` VALUES ('2103','248','朝阳县','3');
INSERT INTO `clt_region` VALUES ('2104','248','建平县','3');
INSERT INTO `clt_region` VALUES ('2105','249','振兴区','3');
INSERT INTO `clt_region` VALUES ('2106','249','元宝区','3');
INSERT INTO `clt_region` VALUES ('2107','249','振安区','3');
INSERT INTO `clt_region` VALUES ('2108','249','宽甸','3');
INSERT INTO `clt_region` VALUES ('2109','249','东港市','3');
INSERT INTO `clt_region` VALUES ('2110','249','凤城市','3');
INSERT INTO `clt_region` VALUES ('2111','250','顺城区','3');
INSERT INTO `clt_region` VALUES ('2112','250','新抚区','3');
INSERT INTO `clt_region` VALUES ('2113','250','东洲区','3');
INSERT INTO `clt_region` VALUES ('2114','250','望花区','3');
INSERT INTO `clt_region` VALUES ('2115','250','清原','3');
INSERT INTO `clt_region` VALUES ('2116','250','新宾','3');
INSERT INTO `clt_region` VALUES ('2117','250','抚顺县','3');
INSERT INTO `clt_region` VALUES ('2118','251','阜新','3');
INSERT INTO `clt_region` VALUES ('2119','251','海州区','3');
INSERT INTO `clt_region` VALUES ('2120','251','新邱区','3');
INSERT INTO `clt_region` VALUES ('2121','251','太平区','3');
INSERT INTO `clt_region` VALUES ('2122','251','清河门区','3');
INSERT INTO `clt_region` VALUES ('2123','251','细河区','3');
INSERT INTO `clt_region` VALUES ('2124','251','彰武县','3');
INSERT INTO `clt_region` VALUES ('2125','252','龙港区','3');
INSERT INTO `clt_region` VALUES ('2126','252','南票区','3');
INSERT INTO `clt_region` VALUES ('2127','252','连山区','3');
INSERT INTO `clt_region` VALUES ('2128','252','兴城市','3');
INSERT INTO `clt_region` VALUES ('2129','252','绥中县','3');
INSERT INTO `clt_region` VALUES ('2130','252','建昌县','3');
INSERT INTO `clt_region` VALUES ('2131','253','太和区','3');
INSERT INTO `clt_region` VALUES ('2132','253','古塔区','3');
INSERT INTO `clt_region` VALUES ('2133','253','凌河区','3');
INSERT INTO `clt_region` VALUES ('2134','253','凌海市','3');
INSERT INTO `clt_region` VALUES ('2135','253','北镇市','3');
INSERT INTO `clt_region` VALUES ('2136','253','黑山县','3');
INSERT INTO `clt_region` VALUES ('2137','253','义县','3');
INSERT INTO `clt_region` VALUES ('2138','254','白塔区','3');
INSERT INTO `clt_region` VALUES ('2139','254','文圣区','3');
INSERT INTO `clt_region` VALUES ('2140','254','宏伟区','3');
INSERT INTO `clt_region` VALUES ('2141','254','太子河区','3');
INSERT INTO `clt_region` VALUES ('2142','254','弓长岭区','3');
INSERT INTO `clt_region` VALUES ('2143','254','灯塔市','3');
INSERT INTO `clt_region` VALUES ('2144','254','辽阳县','3');
INSERT INTO `clt_region` VALUES ('2145','255','双台子区','3');
INSERT INTO `clt_region` VALUES ('2146','255','兴隆台区','3');
INSERT INTO `clt_region` VALUES ('2147','255','大洼县','3');
INSERT INTO `clt_region` VALUES ('2148','255','盘山县','3');
INSERT INTO `clt_region` VALUES ('2149','256','银州区','3');
INSERT INTO `clt_region` VALUES ('2150','256','清河区','3');
INSERT INTO `clt_region` VALUES ('2151','256','调兵山市','3');
INSERT INTO `clt_region` VALUES ('2152','256','开原市','3');
INSERT INTO `clt_region` VALUES ('2153','256','铁岭县','3');
INSERT INTO `clt_region` VALUES ('2154','256','西丰县','3');
INSERT INTO `clt_region` VALUES ('2155','256','昌图县','3');
INSERT INTO `clt_region` VALUES ('2156','257','站前区','3');
INSERT INTO `clt_region` VALUES ('2157','257','西市区','3');
INSERT INTO `clt_region` VALUES ('2158','257','鲅鱼圈区','3');
INSERT INTO `clt_region` VALUES ('2159','257','老边区','3');
INSERT INTO `clt_region` VALUES ('2160','257','盖州市','3');
INSERT INTO `clt_region` VALUES ('2161','257','大石桥市','3');
INSERT INTO `clt_region` VALUES ('2162','258','回民区','3');
INSERT INTO `clt_region` VALUES ('2163','258','玉泉区','3');
INSERT INTO `clt_region` VALUES ('2164','258','新城区','3');
INSERT INTO `clt_region` VALUES ('2165','258','赛罕区','3');
INSERT INTO `clt_region` VALUES ('2166','258','清水河县','3');
INSERT INTO `clt_region` VALUES ('2167','258','土默特左旗','3');
INSERT INTO `clt_region` VALUES ('2168','258','托克托县','3');
INSERT INTO `clt_region` VALUES ('2169','258','和林格尔县','3');
INSERT INTO `clt_region` VALUES ('2170','258','武川县','3');
INSERT INTO `clt_region` VALUES ('2171','259','阿拉善左旗','3');
INSERT INTO `clt_region` VALUES ('2172','259','阿拉善右旗','3');
INSERT INTO `clt_region` VALUES ('2173','259','额济纳旗','3');
INSERT INTO `clt_region` VALUES ('2174','260','临河区','3');
INSERT INTO `clt_region` VALUES ('2175','260','五原县','3');
INSERT INTO `clt_region` VALUES ('2176','260','磴口县','3');
INSERT INTO `clt_region` VALUES ('2177','260','乌拉特前旗','3');
INSERT INTO `clt_region` VALUES ('2178','260','乌拉特中旗','3');
INSERT INTO `clt_region` VALUES ('2179','260','乌拉特后旗','3');
INSERT INTO `clt_region` VALUES ('2180','260','杭锦后旗','3');
INSERT INTO `clt_region` VALUES ('2181','261','昆都仑区','3');
INSERT INTO `clt_region` VALUES ('2182','261','青山区','3');
INSERT INTO `clt_region` VALUES ('2183','261','东河区','3');
INSERT INTO `clt_region` VALUES ('2184','261','九原区','3');
INSERT INTO `clt_region` VALUES ('2185','261','石拐区','3');
INSERT INTO `clt_region` VALUES ('2186','261','白云矿区','3');
INSERT INTO `clt_region` VALUES ('2187','261','土默特右旗','3');
INSERT INTO `clt_region` VALUES ('2188','261','固阳县','3');
INSERT INTO `clt_region` VALUES ('2189','261','达尔罕茂明安联合旗','3');
INSERT INTO `clt_region` VALUES ('2190','262','红山区','3');
INSERT INTO `clt_region` VALUES ('2191','262','元宝山区','3');
INSERT INTO `clt_region` VALUES ('2192','262','松山区','3');
INSERT INTO `clt_region` VALUES ('2193','262','阿鲁科尔沁旗','3');
INSERT INTO `clt_region` VALUES ('2194','262','巴林左旗','3');
INSERT INTO `clt_region` VALUES ('2195','262','巴林右旗','3');
INSERT INTO `clt_region` VALUES ('2196','262','林西县','3');
INSERT INTO `clt_region` VALUES ('2197','262','克什克腾旗','3');
INSERT INTO `clt_region` VALUES ('2198','262','翁牛特旗','3');
INSERT INTO `clt_region` VALUES ('2199','262','喀喇沁旗','3');
INSERT INTO `clt_region` VALUES ('2200','262','宁城县','3');
INSERT INTO `clt_region` VALUES ('2201','262','敖汉旗','3');
INSERT INTO `clt_region` VALUES ('2202','263','东胜区','3');
INSERT INTO `clt_region` VALUES ('2203','263','达拉特旗','3');
INSERT INTO `clt_region` VALUES ('2204','263','准格尔旗','3');
INSERT INTO `clt_region` VALUES ('2205','263','鄂托克前旗','3');
INSERT INTO `clt_region` VALUES ('2206','263','鄂托克旗','3');
INSERT INTO `clt_region` VALUES ('2207','263','杭锦旗','3');
INSERT INTO `clt_region` VALUES ('2208','263','乌审旗','3');
INSERT INTO `clt_region` VALUES ('2209','263','伊金霍洛旗','3');
INSERT INTO `clt_region` VALUES ('2210','264','海拉尔区','3');
INSERT INTO `clt_region` VALUES ('2211','264','莫力达瓦','3');
INSERT INTO `clt_region` VALUES ('2212','264','满洲里市','3');
INSERT INTO `clt_region` VALUES ('2213','264','牙克石市','3');
INSERT INTO `clt_region` VALUES ('2214','264','扎兰屯市','3');
INSERT INTO `clt_region` VALUES ('2215','264','额尔古纳市','3');
INSERT INTO `clt_region` VALUES ('2216','264','根河市','3');
INSERT INTO `clt_region` VALUES ('2217','264','阿荣旗','3');
INSERT INTO `clt_region` VALUES ('2218','264','鄂伦春自治旗','3');
INSERT INTO `clt_region` VALUES ('2219','264','鄂温克族自治旗','3');
INSERT INTO `clt_region` VALUES ('2220','264','陈巴尔虎旗','3');
INSERT INTO `clt_region` VALUES ('2221','264','新巴尔虎左旗','3');
INSERT INTO `clt_region` VALUES ('2222','264','新巴尔虎右旗','3');
INSERT INTO `clt_region` VALUES ('2223','265','科尔沁区','3');
INSERT INTO `clt_region` VALUES ('2224','265','霍林郭勒市','3');
INSERT INTO `clt_region` VALUES ('2225','265','科尔沁左翼中旗','3');
INSERT INTO `clt_region` VALUES ('2226','265','科尔沁左翼后旗','3');
INSERT INTO `clt_region` VALUES ('2227','265','开鲁县','3');
INSERT INTO `clt_region` VALUES ('2228','265','库伦旗','3');
INSERT INTO `clt_region` VALUES ('2229','265','奈曼旗','3');
INSERT INTO `clt_region` VALUES ('2230','265','扎鲁特旗','3');
INSERT INTO `clt_region` VALUES ('2231','266','海勃湾区','3');
INSERT INTO `clt_region` VALUES ('2232','266','乌达区','3');
INSERT INTO `clt_region` VALUES ('2233','266','海南区','3');
INSERT INTO `clt_region` VALUES ('2234','267','化德县','3');
INSERT INTO `clt_region` VALUES ('2235','267','集宁区','3');
INSERT INTO `clt_region` VALUES ('2236','267','丰镇市','3');
INSERT INTO `clt_region` VALUES ('2237','267','卓资县','3');
INSERT INTO `clt_region` VALUES ('2238','267','商都县','3');
INSERT INTO `clt_region` VALUES ('2239','267','兴和县','3');
INSERT INTO `clt_region` VALUES ('2240','267','凉城县','3');
INSERT INTO `clt_region` VALUES ('2241','267','察哈尔右翼前旗','3');
INSERT INTO `clt_region` VALUES ('2242','267','察哈尔右翼中旗','3');
INSERT INTO `clt_region` VALUES ('2243','267','察哈尔右翼后旗','3');
INSERT INTO `clt_region` VALUES ('2244','267','四子王旗','3');
INSERT INTO `clt_region` VALUES ('2245','268','二连浩特市','3');
INSERT INTO `clt_region` VALUES ('2246','268','锡林浩特市','3');
INSERT INTO `clt_region` VALUES ('2247','268','阿巴嘎旗','3');
INSERT INTO `clt_region` VALUES ('2248','268','苏尼特左旗','3');
INSERT INTO `clt_region` VALUES ('2249','268','苏尼特右旗','3');
INSERT INTO `clt_region` VALUES ('2250','268','东乌珠穆沁旗','3');
INSERT INTO `clt_region` VALUES ('2251','268','西乌珠穆沁旗','3');
INSERT INTO `clt_region` VALUES ('2252','268','太仆寺旗','3');
INSERT INTO `clt_region` VALUES ('2253','268','镶黄旗','3');
INSERT INTO `clt_region` VALUES ('2254','268','正镶白旗','3');
INSERT INTO `clt_region` VALUES ('2255','268','正蓝旗','3');
INSERT INTO `clt_region` VALUES ('2256','268','多伦县','3');
INSERT INTO `clt_region` VALUES ('2257','269','乌兰浩特市','3');
INSERT INTO `clt_region` VALUES ('2258','269','阿尔山市','3');
INSERT INTO `clt_region` VALUES ('2259','269','科尔沁右翼前旗','3');
INSERT INTO `clt_region` VALUES ('2260','269','科尔沁右翼中旗','3');
INSERT INTO `clt_region` VALUES ('2261','269','扎赉特旗','3');
INSERT INTO `clt_region` VALUES ('2262','269','突泉县','3');
INSERT INTO `clt_region` VALUES ('2263','270','西夏区','3');
INSERT INTO `clt_region` VALUES ('2264','270','金凤区','3');
INSERT INTO `clt_region` VALUES ('2265','270','兴庆区','3');
INSERT INTO `clt_region` VALUES ('2266','270','灵武市','3');
INSERT INTO `clt_region` VALUES ('2267','270','永宁县','3');
INSERT INTO `clt_region` VALUES ('2268','270','贺兰县','3');
INSERT INTO `clt_region` VALUES ('2269','271','原州区','3');
INSERT INTO `clt_region` VALUES ('2270','271','海原县','3');
INSERT INTO `clt_region` VALUES ('2271','271','西吉县','3');
INSERT INTO `clt_region` VALUES ('2272','271','隆德县','3');
INSERT INTO `clt_region` VALUES ('2273','271','泾源县','3');
INSERT INTO `clt_region` VALUES ('2274','271','彭阳县','3');
INSERT INTO `clt_region` VALUES ('2275','272','惠农县','3');
INSERT INTO `clt_region` VALUES ('2276','272','大武口区','3');
INSERT INTO `clt_region` VALUES ('2277','272','惠农区','3');
INSERT INTO `clt_region` VALUES ('2278','272','陶乐县','3');
INSERT INTO `clt_region` VALUES ('2279','272','平罗县','3');
INSERT INTO `clt_region` VALUES ('2280','273','利通区','3');
INSERT INTO `clt_region` VALUES ('2281','273','中卫县','3');
INSERT INTO `clt_region` VALUES ('2282','273','青铜峡市','3');
INSERT INTO `clt_region` VALUES ('2283','273','中宁县','3');
INSERT INTO `clt_region` VALUES ('2284','273','盐池县','3');
INSERT INTO `clt_region` VALUES ('2285','273','同心县','3');
INSERT INTO `clt_region` VALUES ('2286','274','沙坡头区','3');
INSERT INTO `clt_region` VALUES ('2287','274','海原县','3');
INSERT INTO `clt_region` VALUES ('2288','274','中宁县','3');
INSERT INTO `clt_region` VALUES ('2289','275','城中区','3');
INSERT INTO `clt_region` VALUES ('2290','275','城东区','3');
INSERT INTO `clt_region` VALUES ('2291','275','城西区','3');
INSERT INTO `clt_region` VALUES ('2292','275','城北区','3');
INSERT INTO `clt_region` VALUES ('2293','275','湟中县','3');
INSERT INTO `clt_region` VALUES ('2294','275','湟源县','3');
INSERT INTO `clt_region` VALUES ('2295','275','大通','3');
INSERT INTO `clt_region` VALUES ('2296','276','玛沁县','3');
INSERT INTO `clt_region` VALUES ('2297','276','班玛县','3');
INSERT INTO `clt_region` VALUES ('2298','276','甘德县','3');
INSERT INTO `clt_region` VALUES ('2299','276','达日县','3');
INSERT INTO `clt_region` VALUES ('2300','276','久治县','3');
INSERT INTO `clt_region` VALUES ('2301','276','玛多县','3');
INSERT INTO `clt_region` VALUES ('2302','277','海晏县','3');
INSERT INTO `clt_region` VALUES ('2303','277','祁连县','3');
INSERT INTO `clt_region` VALUES ('2304','277','刚察县','3');
INSERT INTO `clt_region` VALUES ('2305','277','门源','3');
INSERT INTO `clt_region` VALUES ('2306','278','平安县','3');
INSERT INTO `clt_region` VALUES ('2307','278','乐都县','3');
INSERT INTO `clt_region` VALUES ('2308','278','民和','3');
INSERT INTO `clt_region` VALUES ('2309','278','互助','3');
INSERT INTO `clt_region` VALUES ('2310','278','化隆','3');
INSERT INTO `clt_region` VALUES ('2311','278','循化','3');
INSERT INTO `clt_region` VALUES ('2312','279','共和县','3');
INSERT INTO `clt_region` VALUES ('2313','279','同德县','3');
INSERT INTO `clt_region` VALUES ('2314','279','贵德县','3');
INSERT INTO `clt_region` VALUES ('2315','279','兴海县','3');
INSERT INTO `clt_region` VALUES ('2316','279','贵南县','3');
INSERT INTO `clt_region` VALUES ('2317','280','德令哈市','3');
INSERT INTO `clt_region` VALUES ('2318','280','格尔木市','3');
INSERT INTO `clt_region` VALUES ('2319','280','乌兰县','3');
INSERT INTO `clt_region` VALUES ('2320','280','都兰县','3');
INSERT INTO `clt_region` VALUES ('2321','280','天峻县','3');
INSERT INTO `clt_region` VALUES ('2322','281','同仁县','3');
INSERT INTO `clt_region` VALUES ('2323','281','尖扎县','3');
INSERT INTO `clt_region` VALUES ('2324','281','泽库县','3');
INSERT INTO `clt_region` VALUES ('2325','281','河南蒙古族自治县','3');
INSERT INTO `clt_region` VALUES ('2326','282','玉树县','3');
INSERT INTO `clt_region` VALUES ('2327','282','杂多县','3');
INSERT INTO `clt_region` VALUES ('2328','282','称多县','3');
INSERT INTO `clt_region` VALUES ('2329','282','治多县','3');
INSERT INTO `clt_region` VALUES ('2330','282','囊谦县','3');
INSERT INTO `clt_region` VALUES ('2331','282','曲麻莱县','3');
INSERT INTO `clt_region` VALUES ('2332','283','市中区','3');
INSERT INTO `clt_region` VALUES ('2333','283','历下区','3');
INSERT INTO `clt_region` VALUES ('2334','283','天桥区','3');
INSERT INTO `clt_region` VALUES ('2335','283','槐荫区','3');
INSERT INTO `clt_region` VALUES ('2336','283','历城区','3');
INSERT INTO `clt_region` VALUES ('2337','283','长清区','3');
INSERT INTO `clt_region` VALUES ('2338','283','章丘市','3');
INSERT INTO `clt_region` VALUES ('2339','283','平阴县','3');
INSERT INTO `clt_region` VALUES ('2340','283','济阳县','3');
INSERT INTO `clt_region` VALUES ('2341','283','商河县','3');
INSERT INTO `clt_region` VALUES ('2342','284','市南区','3');
INSERT INTO `clt_region` VALUES ('2343','284','市北区','3');
INSERT INTO `clt_region` VALUES ('2344','284','城阳区','3');
INSERT INTO `clt_region` VALUES ('2345','284','四方区','3');
INSERT INTO `clt_region` VALUES ('2346','284','李沧区','3');
INSERT INTO `clt_region` VALUES ('2347','284','黄岛区','3');
INSERT INTO `clt_region` VALUES ('2348','284','崂山区','3');
INSERT INTO `clt_region` VALUES ('2349','284','胶州市','3');
INSERT INTO `clt_region` VALUES ('2350','284','即墨市','3');
INSERT INTO `clt_region` VALUES ('2351','284','平度市','3');
INSERT INTO `clt_region` VALUES ('2352','284','胶南市','3');
INSERT INTO `clt_region` VALUES ('2353','284','莱西市','3');
INSERT INTO `clt_region` VALUES ('2354','285','滨城区','3');
INSERT INTO `clt_region` VALUES ('2355','285','惠民县','3');
INSERT INTO `clt_region` VALUES ('2356','285','阳信县','3');
INSERT INTO `clt_region` VALUES ('2357','285','无棣县','3');
INSERT INTO `clt_region` VALUES ('2358','285','沾化县','3');
INSERT INTO `clt_region` VALUES ('2359','285','博兴县','3');
INSERT INTO `clt_region` VALUES ('2360','285','邹平县','3');
INSERT INTO `clt_region` VALUES ('2361','286','德城区','3');
INSERT INTO `clt_region` VALUES ('2362','286','陵县','3');
INSERT INTO `clt_region` VALUES ('2363','286','乐陵市','3');
INSERT INTO `clt_region` VALUES ('2364','286','禹城市','3');
INSERT INTO `clt_region` VALUES ('2365','286','宁津县','3');
INSERT INTO `clt_region` VALUES ('2366','286','庆云县','3');
INSERT INTO `clt_region` VALUES ('2367','286','临邑县','3');
INSERT INTO `clt_region` VALUES ('2368','286','齐河县','3');
INSERT INTO `clt_region` VALUES ('2369','286','平原县','3');
INSERT INTO `clt_region` VALUES ('2370','286','夏津县','3');
INSERT INTO `clt_region` VALUES ('2371','286','武城县','3');
INSERT INTO `clt_region` VALUES ('2372','287','东营区','3');
INSERT INTO `clt_region` VALUES ('2373','287','河口区','3');
INSERT INTO `clt_region` VALUES ('2374','287','垦利县','3');
INSERT INTO `clt_region` VALUES ('2375','287','利津县','3');
INSERT INTO `clt_region` VALUES ('2376','287','广饶县','3');
INSERT INTO `clt_region` VALUES ('2377','288','牡丹区','3');
INSERT INTO `clt_region` VALUES ('2378','288','曹县','3');
INSERT INTO `clt_region` VALUES ('2379','288','单县','3');
INSERT INTO `clt_region` VALUES ('2380','288','成武县','3');
INSERT INTO `clt_region` VALUES ('2381','288','巨野县','3');
INSERT INTO `clt_region` VALUES ('2382','288','郓城县','3');
INSERT INTO `clt_region` VALUES ('2383','288','鄄城县','3');
INSERT INTO `clt_region` VALUES ('2384','288','定陶县','3');
INSERT INTO `clt_region` VALUES ('2385','288','东明县','3');
INSERT INTO `clt_region` VALUES ('2386','289','市中区','3');
INSERT INTO `clt_region` VALUES ('2387','289','任城区','3');
INSERT INTO `clt_region` VALUES ('2388','289','曲阜市','3');
INSERT INTO `clt_region` VALUES ('2389','289','兖州市','3');
INSERT INTO `clt_region` VALUES ('2390','289','邹城市','3');
INSERT INTO `clt_region` VALUES ('2391','289','微山县','3');
INSERT INTO `clt_region` VALUES ('2392','289','鱼台县','3');
INSERT INTO `clt_region` VALUES ('2393','289','金乡县','3');
INSERT INTO `clt_region` VALUES ('2394','289','嘉祥县','3');
INSERT INTO `clt_region` VALUES ('2395','289','汶上县','3');
INSERT INTO `clt_region` VALUES ('2396','289','泗水县','3');
INSERT INTO `clt_region` VALUES ('2397','289','梁山县','3');
INSERT INTO `clt_region` VALUES ('2398','290','莱城区','3');
INSERT INTO `clt_region` VALUES ('2399','290','钢城区','3');
INSERT INTO `clt_region` VALUES ('2400','291','东昌府区','3');
INSERT INTO `clt_region` VALUES ('2401','291','临清市','3');
INSERT INTO `clt_region` VALUES ('2402','291','阳谷县','3');
INSERT INTO `clt_region` VALUES ('2403','291','莘县','3');
INSERT INTO `clt_region` VALUES ('2404','291','茌平县','3');
INSERT INTO `clt_region` VALUES ('2405','291','东阿县','3');
INSERT INTO `clt_region` VALUES ('2406','291','冠县','3');
INSERT INTO `clt_region` VALUES ('2407','291','高唐县','3');
INSERT INTO `clt_region` VALUES ('2408','292','兰山区','3');
INSERT INTO `clt_region` VALUES ('2409','292','罗庄区','3');
INSERT INTO `clt_region` VALUES ('2410','292','河东区','3');
INSERT INTO `clt_region` VALUES ('2411','292','沂南县','3');
INSERT INTO `clt_region` VALUES ('2412','292','郯城县','3');
INSERT INTO `clt_region` VALUES ('2413','292','沂水县','3');
INSERT INTO `clt_region` VALUES ('2414','292','苍山县','3');
INSERT INTO `clt_region` VALUES ('2415','292','费县','3');
INSERT INTO `clt_region` VALUES ('2416','292','平邑县','3');
INSERT INTO `clt_region` VALUES ('2417','292','莒南县','3');
INSERT INTO `clt_region` VALUES ('2418','292','蒙阴县','3');
INSERT INTO `clt_region` VALUES ('2419','292','临沭县','3');
INSERT INTO `clt_region` VALUES ('2420','293','东港区','3');
INSERT INTO `clt_region` VALUES ('2421','293','岚山区','3');
INSERT INTO `clt_region` VALUES ('2422','293','五莲县','3');
INSERT INTO `clt_region` VALUES ('2423','293','莒县','3');
INSERT INTO `clt_region` VALUES ('2424','294','泰山区','3');
INSERT INTO `clt_region` VALUES ('2425','294','岱岳区','3');
INSERT INTO `clt_region` VALUES ('2426','294','新泰市','3');
INSERT INTO `clt_region` VALUES ('2427','294','肥城市','3');
INSERT INTO `clt_region` VALUES ('2428','294','宁阳县','3');
INSERT INTO `clt_region` VALUES ('2429','294','东平县','3');
INSERT INTO `clt_region` VALUES ('2430','295','荣成市','3');
INSERT INTO `clt_region` VALUES ('2431','295','乳山市','3');
INSERT INTO `clt_region` VALUES ('2432','295','环翠区','3');
INSERT INTO `clt_region` VALUES ('2433','295','文登市','3');
INSERT INTO `clt_region` VALUES ('2434','296','潍城区','3');
INSERT INTO `clt_region` VALUES ('2435','296','寒亭区','3');
INSERT INTO `clt_region` VALUES ('2436','296','坊子区','3');
INSERT INTO `clt_region` VALUES ('2437','296','奎文区','3');
INSERT INTO `clt_region` VALUES ('2438','296','青州市','3');
INSERT INTO `clt_region` VALUES ('2439','296','诸城市','3');
INSERT INTO `clt_region` VALUES ('2440','296','寿光市','3');
INSERT INTO `clt_region` VALUES ('2441','296','安丘市','3');
INSERT INTO `clt_region` VALUES ('2442','296','高密市','3');
INSERT INTO `clt_region` VALUES ('2443','296','昌邑市','3');
INSERT INTO `clt_region` VALUES ('2444','296','临朐县','3');
INSERT INTO `clt_region` VALUES ('2445','296','昌乐县','3');
INSERT INTO `clt_region` VALUES ('2446','297','芝罘区','3');
INSERT INTO `clt_region` VALUES ('2447','297','福山区','3');
INSERT INTO `clt_region` VALUES ('2448','297','牟平区','3');
INSERT INTO `clt_region` VALUES ('2449','297','莱山区','3');
INSERT INTO `clt_region` VALUES ('2450','297','开发区','3');
INSERT INTO `clt_region` VALUES ('2451','297','龙口市','3');
INSERT INTO `clt_region` VALUES ('2452','297','莱阳市','3');
INSERT INTO `clt_region` VALUES ('2453','297','莱州市','3');
INSERT INTO `clt_region` VALUES ('2454','297','蓬莱市','3');
INSERT INTO `clt_region` VALUES ('2455','297','招远市','3');
INSERT INTO `clt_region` VALUES ('2456','297','栖霞市','3');
INSERT INTO `clt_region` VALUES ('2457','297','海阳市','3');
INSERT INTO `clt_region` VALUES ('2458','297','长岛县','3');
INSERT INTO `clt_region` VALUES ('2459','298','市中区','3');
INSERT INTO `clt_region` VALUES ('2460','298','山亭区','3');
INSERT INTO `clt_region` VALUES ('2461','298','峄城区','3');
INSERT INTO `clt_region` VALUES ('2462','298','台儿庄区','3');
INSERT INTO `clt_region` VALUES ('2463','298','薛城区','3');
INSERT INTO `clt_region` VALUES ('2464','298','滕州市','3');
INSERT INTO `clt_region` VALUES ('2465','299','张店区','3');
INSERT INTO `clt_region` VALUES ('2466','299','临淄区','3');
INSERT INTO `clt_region` VALUES ('2467','299','淄川区','3');
INSERT INTO `clt_region` VALUES ('2468','299','博山区','3');
INSERT INTO `clt_region` VALUES ('2469','299','周村区','3');
INSERT INTO `clt_region` VALUES ('2470','299','桓台县','3');
INSERT INTO `clt_region` VALUES ('2471','299','高青县','3');
INSERT INTO `clt_region` VALUES ('2472','299','沂源县','3');
INSERT INTO `clt_region` VALUES ('2473','300','杏花岭区','3');
INSERT INTO `clt_region` VALUES ('2474','300','小店区','3');
INSERT INTO `clt_region` VALUES ('2475','300','迎泽区','3');
INSERT INTO `clt_region` VALUES ('2476','300','尖草坪区','3');
INSERT INTO `clt_region` VALUES ('2477','300','万柏林区','3');
INSERT INTO `clt_region` VALUES ('2478','300','晋源区','3');
INSERT INTO `clt_region` VALUES ('2479','300','高新开发区','3');
INSERT INTO `clt_region` VALUES ('2480','300','民营经济开发区','3');
INSERT INTO `clt_region` VALUES ('2481','300','经济技术开发区','3');
INSERT INTO `clt_region` VALUES ('2482','300','清徐县','3');
INSERT INTO `clt_region` VALUES ('2483','300','阳曲县','3');
INSERT INTO `clt_region` VALUES ('2484','300','娄烦县','3');
INSERT INTO `clt_region` VALUES ('2485','300','古交市','3');
INSERT INTO `clt_region` VALUES ('2486','301','城区','3');
INSERT INTO `clt_region` VALUES ('2487','301','郊区','3');
INSERT INTO `clt_region` VALUES ('2488','301','沁县','3');
INSERT INTO `clt_region` VALUES ('2489','301','潞城市','3');
INSERT INTO `clt_region` VALUES ('2490','301','长治县','3');
INSERT INTO `clt_region` VALUES ('2491','301','襄垣县','3');
INSERT INTO `clt_region` VALUES ('2492','301','屯留县','3');
INSERT INTO `clt_region` VALUES ('2493','301','平顺县','3');
INSERT INTO `clt_region` VALUES ('2494','301','黎城县','3');
INSERT INTO `clt_region` VALUES ('2495','301','壶关县','3');
INSERT INTO `clt_region` VALUES ('2496','301','长子县','3');
INSERT INTO `clt_region` VALUES ('2497','301','武乡县','3');
INSERT INTO `clt_region` VALUES ('2498','301','沁源县','3');
INSERT INTO `clt_region` VALUES ('2499','302','城区','3');
INSERT INTO `clt_region` VALUES ('2500','302','矿区','3');
INSERT INTO `clt_region` VALUES ('2501','302','南郊区','3');
INSERT INTO `clt_region` VALUES ('2502','302','新荣区','3');
INSERT INTO `clt_region` VALUES ('2503','302','阳高县','3');
INSERT INTO `clt_region` VALUES ('2504','302','天镇县','3');
INSERT INTO `clt_region` VALUES ('2505','302','广灵县','3');
INSERT INTO `clt_region` VALUES ('2506','302','灵丘县','3');
INSERT INTO `clt_region` VALUES ('2507','302','浑源县','3');
INSERT INTO `clt_region` VALUES ('2508','302','左云县','3');
INSERT INTO `clt_region` VALUES ('2509','302','大同县','3');
INSERT INTO `clt_region` VALUES ('2510','303','城区','3');
INSERT INTO `clt_region` VALUES ('2511','303','高平市','3');
INSERT INTO `clt_region` VALUES ('2512','303','沁水县','3');
INSERT INTO `clt_region` VALUES ('2513','303','阳城县','3');
INSERT INTO `clt_region` VALUES ('2514','303','陵川县','3');
INSERT INTO `clt_region` VALUES ('2515','303','泽州县','3');
INSERT INTO `clt_region` VALUES ('2516','304','榆次区','3');
INSERT INTO `clt_region` VALUES ('2517','304','介休市','3');
INSERT INTO `clt_region` VALUES ('2518','304','榆社县','3');
INSERT INTO `clt_region` VALUES ('2519','304','左权县','3');
INSERT INTO `clt_region` VALUES ('2520','304','和顺县','3');
INSERT INTO `clt_region` VALUES ('2521','304','昔阳县','3');
INSERT INTO `clt_region` VALUES ('2522','304','寿阳县','3');
INSERT INTO `clt_region` VALUES ('2523','304','太谷县','3');
INSERT INTO `clt_region` VALUES ('2524','304','祁县','3');
INSERT INTO `clt_region` VALUES ('2525','304','平遥县','3');
INSERT INTO `clt_region` VALUES ('2526','304','灵石县','3');
INSERT INTO `clt_region` VALUES ('2527','305','尧都区','3');
INSERT INTO `clt_region` VALUES ('2528','305','侯马市','3');
INSERT INTO `clt_region` VALUES ('2529','305','霍州市','3');
INSERT INTO `clt_region` VALUES ('2530','305','曲沃县','3');
INSERT INTO `clt_region` VALUES ('2531','305','翼城县','3');
INSERT INTO `clt_region` VALUES ('2532','305','襄汾县','3');
INSERT INTO `clt_region` VALUES ('2533','305','洪洞县','3');
INSERT INTO `clt_region` VALUES ('2534','305','吉县','3');
INSERT INTO `clt_region` VALUES ('2535','305','安泽县','3');
INSERT INTO `clt_region` VALUES ('2536','305','浮山县','3');
INSERT INTO `clt_region` VALUES ('2537','305','古县','3');
INSERT INTO `clt_region` VALUES ('2538','305','乡宁县','3');
INSERT INTO `clt_region` VALUES ('2539','305','大宁县','3');
INSERT INTO `clt_region` VALUES ('2540','305','隰县','3');
INSERT INTO `clt_region` VALUES ('2541','305','永和县','3');
INSERT INTO `clt_region` VALUES ('2542','305','蒲县','3');
INSERT INTO `clt_region` VALUES ('2543','305','汾西县','3');
INSERT INTO `clt_region` VALUES ('2544','306','离石市','3');
INSERT INTO `clt_region` VALUES ('2545','306','离石区','3');
INSERT INTO `clt_region` VALUES ('2546','306','孝义市','3');
INSERT INTO `clt_region` VALUES ('2547','306','汾阳市','3');
INSERT INTO `clt_region` VALUES ('2548','306','文水县','3');
INSERT INTO `clt_region` VALUES ('2549','306','交城县','3');
INSERT INTO `clt_region` VALUES ('2550','306','兴县','3');
INSERT INTO `clt_region` VALUES ('2551','306','临县','3');
INSERT INTO `clt_region` VALUES ('2552','306','柳林县','3');
INSERT INTO `clt_region` VALUES ('2553','306','石楼县','3');
INSERT INTO `clt_region` VALUES ('2554','306','岚县','3');
INSERT INTO `clt_region` VALUES ('2555','306','方山县','3');
INSERT INTO `clt_region` VALUES ('2556','306','中阳县','3');
INSERT INTO `clt_region` VALUES ('2557','306','交口县','3');
INSERT INTO `clt_region` VALUES ('2558','307','朔城区','3');
INSERT INTO `clt_region` VALUES ('2559','307','平鲁区','3');
INSERT INTO `clt_region` VALUES ('2560','307','山阴县','3');
INSERT INTO `clt_region` VALUES ('2561','307','应县','3');
INSERT INTO `clt_region` VALUES ('2562','307','右玉县','3');
INSERT INTO `clt_region` VALUES ('2563','307','怀仁县','3');
INSERT INTO `clt_region` VALUES ('2564','308','忻府区','3');
INSERT INTO `clt_region` VALUES ('2565','308','原平市','3');
INSERT INTO `clt_region` VALUES ('2566','308','定襄县','3');
INSERT INTO `clt_region` VALUES ('2567','308','五台县','3');
INSERT INTO `clt_region` VALUES ('2568','308','代县','3');
INSERT INTO `clt_region` VALUES ('2569','308','繁峙县','3');
INSERT INTO `clt_region` VALUES ('2570','308','宁武县','3');
INSERT INTO `clt_region` VALUES ('2571','308','静乐县','3');
INSERT INTO `clt_region` VALUES ('2572','308','神池县','3');
INSERT INTO `clt_region` VALUES ('2573','308','五寨县','3');
INSERT INTO `clt_region` VALUES ('2574','308','岢岚县','3');
INSERT INTO `clt_region` VALUES ('2575','308','河曲县','3');
INSERT INTO `clt_region` VALUES ('2576','308','保德县','3');
INSERT INTO `clt_region` VALUES ('2577','308','偏关县','3');
INSERT INTO `clt_region` VALUES ('2578','309','城区','3');
INSERT INTO `clt_region` VALUES ('2579','309','矿区','3');
INSERT INTO `clt_region` VALUES ('2580','309','郊区','3');
INSERT INTO `clt_region` VALUES ('2581','309','平定县','3');
INSERT INTO `clt_region` VALUES ('2582','309','盂县','3');
INSERT INTO `clt_region` VALUES ('2583','310','盐湖区','3');
INSERT INTO `clt_region` VALUES ('2584','310','永济市','3');
INSERT INTO `clt_region` VALUES ('2585','310','河津市','3');
INSERT INTO `clt_region` VALUES ('2586','310','临猗县','3');
INSERT INTO `clt_region` VALUES ('2587','310','万荣县','3');
INSERT INTO `clt_region` VALUES ('2588','310','闻喜县','3');
INSERT INTO `clt_region` VALUES ('2589','310','稷山县','3');
INSERT INTO `clt_region` VALUES ('2590','310','新绛县','3');
INSERT INTO `clt_region` VALUES ('2591','310','绛县','3');
INSERT INTO `clt_region` VALUES ('2592','310','垣曲县','3');
INSERT INTO `clt_region` VALUES ('2593','310','夏县','3');
INSERT INTO `clt_region` VALUES ('2594','310','平陆县','3');
INSERT INTO `clt_region` VALUES ('2595','310','芮城县','3');
INSERT INTO `clt_region` VALUES ('2596','311','莲湖区','3');
INSERT INTO `clt_region` VALUES ('2597','311','新城区','3');
INSERT INTO `clt_region` VALUES ('2598','311','碑林区','3');
INSERT INTO `clt_region` VALUES ('2599','311','雁塔区','3');
INSERT INTO `clt_region` VALUES ('2600','311','灞桥区','3');
INSERT INTO `clt_region` VALUES ('2601','311','未央区','3');
INSERT INTO `clt_region` VALUES ('2602','311','阎良区','3');
INSERT INTO `clt_region` VALUES ('2603','311','临潼区','3');
INSERT INTO `clt_region` VALUES ('2604','311','长安区','3');
INSERT INTO `clt_region` VALUES ('2605','311','蓝田县','3');
INSERT INTO `clt_region` VALUES ('2606','311','周至县','3');
INSERT INTO `clt_region` VALUES ('2607','311','户县','3');
INSERT INTO `clt_region` VALUES ('2608','311','高陵县','3');
INSERT INTO `clt_region` VALUES ('2609','312','汉滨区','3');
INSERT INTO `clt_region` VALUES ('2610','312','汉阴县','3');
INSERT INTO `clt_region` VALUES ('2611','312','石泉县','3');
INSERT INTO `clt_region` VALUES ('2612','312','宁陕县','3');
INSERT INTO `clt_region` VALUES ('2613','312','紫阳县','3');
INSERT INTO `clt_region` VALUES ('2614','312','岚皋县','3');
INSERT INTO `clt_region` VALUES ('2615','312','平利县','3');
INSERT INTO `clt_region` VALUES ('2616','312','镇坪县','3');
INSERT INTO `clt_region` VALUES ('2617','312','旬阳县','3');
INSERT INTO `clt_region` VALUES ('2618','312','白河县','3');
INSERT INTO `clt_region` VALUES ('2619','313','陈仓区','3');
INSERT INTO `clt_region` VALUES ('2620','313','渭滨区','3');
INSERT INTO `clt_region` VALUES ('2621','313','金台区','3');
INSERT INTO `clt_region` VALUES ('2622','313','凤翔县','3');
INSERT INTO `clt_region` VALUES ('2623','313','岐山县','3');
INSERT INTO `clt_region` VALUES ('2624','313','扶风县','3');
INSERT INTO `clt_region` VALUES ('2625','313','眉县','3');
INSERT INTO `clt_region` VALUES ('2626','313','陇县','3');
INSERT INTO `clt_region` VALUES ('2627','313','千阳县','3');
INSERT INTO `clt_region` VALUES ('2628','313','麟游县','3');
INSERT INTO `clt_region` VALUES ('2629','313','凤县','3');
INSERT INTO `clt_region` VALUES ('2630','313','太白县','3');
INSERT INTO `clt_region` VALUES ('2631','314','汉台区','3');
INSERT INTO `clt_region` VALUES ('2632','314','南郑县','3');
INSERT INTO `clt_region` VALUES ('2633','314','城固县','3');
INSERT INTO `clt_region` VALUES ('2634','314','洋县','3');
INSERT INTO `clt_region` VALUES ('2635','314','西乡县','3');
INSERT INTO `clt_region` VALUES ('2636','314','勉县','3');
INSERT INTO `clt_region` VALUES ('2637','314','宁强县','3');
INSERT INTO `clt_region` VALUES ('2638','314','略阳县','3');
INSERT INTO `clt_region` VALUES ('2639','314','镇巴县','3');
INSERT INTO `clt_region` VALUES ('2640','314','留坝县','3');
INSERT INTO `clt_region` VALUES ('2641','314','佛坪县','3');
INSERT INTO `clt_region` VALUES ('2642','315','商州区','3');
INSERT INTO `clt_region` VALUES ('2643','315','洛南县','3');
INSERT INTO `clt_region` VALUES ('2644','315','丹凤县','3');
INSERT INTO `clt_region` VALUES ('2645','315','商南县','3');
INSERT INTO `clt_region` VALUES ('2646','315','山阳县','3');
INSERT INTO `clt_region` VALUES ('2647','315','镇安县','3');
INSERT INTO `clt_region` VALUES ('2648','315','柞水县','3');
INSERT INTO `clt_region` VALUES ('2649','316','耀州区','3');
INSERT INTO `clt_region` VALUES ('2650','316','王益区','3');
INSERT INTO `clt_region` VALUES ('2651','316','印台区','3');
INSERT INTO `clt_region` VALUES ('2652','316','宜君县','3');
INSERT INTO `clt_region` VALUES ('2653','317','临渭区','3');
INSERT INTO `clt_region` VALUES ('2654','317','韩城市','3');
INSERT INTO `clt_region` VALUES ('2655','317','华阴市','3');
INSERT INTO `clt_region` VALUES ('2656','317','华县','3');
INSERT INTO `clt_region` VALUES ('2657','317','潼关县','3');
INSERT INTO `clt_region` VALUES ('2658','317','大荔县','3');
INSERT INTO `clt_region` VALUES ('2659','317','合阳县','3');
INSERT INTO `clt_region` VALUES ('2660','317','澄城县','3');
INSERT INTO `clt_region` VALUES ('2661','317','蒲城县','3');
INSERT INTO `clt_region` VALUES ('2662','317','白水县','3');
INSERT INTO `clt_region` VALUES ('2663','317','富平县','3');
INSERT INTO `clt_region` VALUES ('2664','318','秦都区','3');
INSERT INTO `clt_region` VALUES ('2665','318','渭城区','3');
INSERT INTO `clt_region` VALUES ('2666','318','杨陵区','3');
INSERT INTO `clt_region` VALUES ('2667','318','兴平市','3');
INSERT INTO `clt_region` VALUES ('2668','318','三原县','3');
INSERT INTO `clt_region` VALUES ('2669','318','泾阳县','3');
INSERT INTO `clt_region` VALUES ('2670','318','乾县','3');
INSERT INTO `clt_region` VALUES ('2671','318','礼泉县','3');
INSERT INTO `clt_region` VALUES ('2672','318','永寿县','3');
INSERT INTO `clt_region` VALUES ('2673','318','彬县','3');
INSERT INTO `clt_region` VALUES ('2674','318','长武县','3');
INSERT INTO `clt_region` VALUES ('2675','318','旬邑县','3');
INSERT INTO `clt_region` VALUES ('2676','318','淳化县','3');
INSERT INTO `clt_region` VALUES ('2677','318','武功县','3');
INSERT INTO `clt_region` VALUES ('2678','319','吴起县','3');
INSERT INTO `clt_region` VALUES ('2679','319','宝塔区','3');
INSERT INTO `clt_region` VALUES ('2680','319','延长县','3');
INSERT INTO `clt_region` VALUES ('2681','319','延川县','3');
INSERT INTO `clt_region` VALUES ('2682','319','子长县','3');
INSERT INTO `clt_region` VALUES ('2683','319','安塞县','3');
INSERT INTO `clt_region` VALUES ('2684','319','志丹县','3');
INSERT INTO `clt_region` VALUES ('2685','319','甘泉县','3');
INSERT INTO `clt_region` VALUES ('2686','319','富县','3');
INSERT INTO `clt_region` VALUES ('2687','319','洛川县','3');
INSERT INTO `clt_region` VALUES ('2688','319','宜川县','3');
INSERT INTO `clt_region` VALUES ('2689','319','黄龙县','3');
INSERT INTO `clt_region` VALUES ('2690','319','黄陵县','3');
INSERT INTO `clt_region` VALUES ('2691','320','榆阳区','3');
INSERT INTO `clt_region` VALUES ('2692','320','神木县','3');
INSERT INTO `clt_region` VALUES ('2693','320','府谷县','3');
INSERT INTO `clt_region` VALUES ('2694','320','横山县','3');
INSERT INTO `clt_region` VALUES ('2695','320','靖边县','3');
INSERT INTO `clt_region` VALUES ('2696','320','定边县','3');
INSERT INTO `clt_region` VALUES ('2697','320','绥德县','3');
INSERT INTO `clt_region` VALUES ('2698','320','米脂县','3');
INSERT INTO `clt_region` VALUES ('2699','320','佳县','3');
INSERT INTO `clt_region` VALUES ('2700','320','吴堡县','3');
INSERT INTO `clt_region` VALUES ('2701','320','清涧县','3');
INSERT INTO `clt_region` VALUES ('2702','320','子洲县','3');
INSERT INTO `clt_region` VALUES ('2703','321','长宁区','3');
INSERT INTO `clt_region` VALUES ('2704','321','闸北区','3');
INSERT INTO `clt_region` VALUES ('2705','321','闵行区','3');
INSERT INTO `clt_region` VALUES ('2706','321','徐汇区','3');
INSERT INTO `clt_region` VALUES ('2707','321','浦东新区','3');
INSERT INTO `clt_region` VALUES ('2708','321','杨浦区','3');
INSERT INTO `clt_region` VALUES ('2709','321','普陀区','3');
INSERT INTO `clt_region` VALUES ('2710','321','静安区','3');
INSERT INTO `clt_region` VALUES ('2711','321','卢湾区','3');
INSERT INTO `clt_region` VALUES ('2712','321','虹口区','3');
INSERT INTO `clt_region` VALUES ('2713','321','黄浦区','3');
INSERT INTO `clt_region` VALUES ('2714','321','南汇区','3');
INSERT INTO `clt_region` VALUES ('2715','321','松江区','3');
INSERT INTO `clt_region` VALUES ('2716','321','嘉定区','3');
INSERT INTO `clt_region` VALUES ('2717','321','宝山区','3');
INSERT INTO `clt_region` VALUES ('2718','321','青浦区','3');
INSERT INTO `clt_region` VALUES ('2719','321','金山区','3');
INSERT INTO `clt_region` VALUES ('2720','321','奉贤区','3');
INSERT INTO `clt_region` VALUES ('2721','321','崇明县','3');
INSERT INTO `clt_region` VALUES ('2722','322','青羊区','3');
INSERT INTO `clt_region` VALUES ('2723','322','锦江区','3');
INSERT INTO `clt_region` VALUES ('2724','322','金牛区','3');
INSERT INTO `clt_region` VALUES ('2725','322','武侯区','3');
INSERT INTO `clt_region` VALUES ('2726','322','成华区','3');
INSERT INTO `clt_region` VALUES ('2727','322','龙泉驿区','3');
INSERT INTO `clt_region` VALUES ('2728','322','青白江区','3');
INSERT INTO `clt_region` VALUES ('2729','322','新都区','3');
INSERT INTO `clt_region` VALUES ('2730','322','温江区','3');
INSERT INTO `clt_region` VALUES ('2731','322','高新区','3');
INSERT INTO `clt_region` VALUES ('2732','322','高新西区','3');
INSERT INTO `clt_region` VALUES ('2733','322','都江堰市','3');
INSERT INTO `clt_region` VALUES ('2734','322','彭州市','3');
INSERT INTO `clt_region` VALUES ('2735','322','邛崃市','3');
INSERT INTO `clt_region` VALUES ('2736','322','崇州市','3');
INSERT INTO `clt_region` VALUES ('2737','322','金堂县','3');
INSERT INTO `clt_region` VALUES ('2738','322','双流县','3');
INSERT INTO `clt_region` VALUES ('2739','322','郫县','3');
INSERT INTO `clt_region` VALUES ('2740','322','大邑县','3');
INSERT INTO `clt_region` VALUES ('2741','322','蒲江县','3');
INSERT INTO `clt_region` VALUES ('2742','322','新津县','3');
INSERT INTO `clt_region` VALUES ('2743','322','都江堰市','3');
INSERT INTO `clt_region` VALUES ('2744','322','彭州市','3');
INSERT INTO `clt_region` VALUES ('2745','322','邛崃市','3');
INSERT INTO `clt_region` VALUES ('2746','322','崇州市','3');
INSERT INTO `clt_region` VALUES ('2747','322','金堂县','3');
INSERT INTO `clt_region` VALUES ('2748','322','双流县','3');
INSERT INTO `clt_region` VALUES ('2749','322','郫县','3');
INSERT INTO `clt_region` VALUES ('2750','322','大邑县','3');
INSERT INTO `clt_region` VALUES ('2751','322','蒲江县','3');
INSERT INTO `clt_region` VALUES ('2752','322','新津县','3');
INSERT INTO `clt_region` VALUES ('2753','323','涪城区','3');
INSERT INTO `clt_region` VALUES ('2754','323','游仙区','3');
INSERT INTO `clt_region` VALUES ('2755','323','江油市','3');
INSERT INTO `clt_region` VALUES ('2756','323','盐亭县','3');
INSERT INTO `clt_region` VALUES ('2757','323','三台县','3');
INSERT INTO `clt_region` VALUES ('2758','323','平武县','3');
INSERT INTO `clt_region` VALUES ('2759','323','安县','3');
INSERT INTO `clt_region` VALUES ('2760','323','梓潼县','3');
INSERT INTO `clt_region` VALUES ('2761','323','北川县','3');
INSERT INTO `clt_region` VALUES ('2762','324','马尔康县','3');
INSERT INTO `clt_region` VALUES ('2763','324','汶川县','3');
INSERT INTO `clt_region` VALUES ('2764','324','理县','3');
INSERT INTO `clt_region` VALUES ('2765','324','茂县','3');
INSERT INTO `clt_region` VALUES ('2766','324','松潘县','3');
INSERT INTO `clt_region` VALUES ('2767','324','九寨沟县','3');
INSERT INTO `clt_region` VALUES ('2768','324','金川县','3');
INSERT INTO `clt_region` VALUES ('2769','324','小金县','3');
INSERT INTO `clt_region` VALUES ('2770','324','黑水县','3');
INSERT INTO `clt_region` VALUES ('2771','324','壤塘县','3');
INSERT INTO `clt_region` VALUES ('2772','324','阿坝县','3');
INSERT INTO `clt_region` VALUES ('2773','324','若尔盖县','3');
INSERT INTO `clt_region` VALUES ('2774','324','红原县','3');
INSERT INTO `clt_region` VALUES ('2775','325','巴州区','3');
INSERT INTO `clt_region` VALUES ('2776','325','通江县','3');
INSERT INTO `clt_region` VALUES ('2777','325','南江县','3');
INSERT INTO `clt_region` VALUES ('2778','325','平昌县','3');
INSERT INTO `clt_region` VALUES ('2779','326','通川区','3');
INSERT INTO `clt_region` VALUES ('2780','326','万源市','3');
INSERT INTO `clt_region` VALUES ('2781','326','达县','3');
INSERT INTO `clt_region` VALUES ('2782','326','宣汉县','3');
INSERT INTO `clt_region` VALUES ('2783','326','开江县','3');
INSERT INTO `clt_region` VALUES ('2784','326','大竹县','3');
INSERT INTO `clt_region` VALUES ('2785','326','渠县','3');
INSERT INTO `clt_region` VALUES ('2786','327','旌阳区','3');
INSERT INTO `clt_region` VALUES ('2787','327','广汉市','3');
INSERT INTO `clt_region` VALUES ('2788','327','什邡市','3');
INSERT INTO `clt_region` VALUES ('2789','327','绵竹市','3');
INSERT INTO `clt_region` VALUES ('2790','327','罗江县','3');
INSERT INTO `clt_region` VALUES ('2791','327','中江县','3');
INSERT INTO `clt_region` VALUES ('2792','328','康定县','3');
INSERT INTO `clt_region` VALUES ('2793','328','丹巴县','3');
INSERT INTO `clt_region` VALUES ('2794','328','泸定县','3');
INSERT INTO `clt_region` VALUES ('2795','328','炉霍县','3');
INSERT INTO `clt_region` VALUES ('2796','328','九龙县','3');
INSERT INTO `clt_region` VALUES ('2797','328','甘孜县','3');
INSERT INTO `clt_region` VALUES ('2798','328','雅江县','3');
INSERT INTO `clt_region` VALUES ('2799','328','新龙县','3');
INSERT INTO `clt_region` VALUES ('2800','328','道孚县','3');
INSERT INTO `clt_region` VALUES ('2801','328','白玉县','3');
INSERT INTO `clt_region` VALUES ('2802','328','理塘县','3');
INSERT INTO `clt_region` VALUES ('2803','328','德格县','3');
INSERT INTO `clt_region` VALUES ('2804','328','乡城县','3');
INSERT INTO `clt_region` VALUES ('2805','328','石渠县','3');
INSERT INTO `clt_region` VALUES ('2806','328','稻城县','3');
INSERT INTO `clt_region` VALUES ('2807','328','色达县','3');
INSERT INTO `clt_region` VALUES ('2808','328','巴塘县','3');
INSERT INTO `clt_region` VALUES ('2809','328','得荣县','3');
INSERT INTO `clt_region` VALUES ('2810','329','广安区','3');
INSERT INTO `clt_region` VALUES ('2811','329','华蓥市','3');
INSERT INTO `clt_region` VALUES ('2812','329','岳池县','3');
INSERT INTO `clt_region` VALUES ('2813','329','武胜县','3');
INSERT INTO `clt_region` VALUES ('2814','329','邻水县','3');
INSERT INTO `clt_region` VALUES ('2815','330','利州区','3');
INSERT INTO `clt_region` VALUES ('2816','330','元坝区','3');
INSERT INTO `clt_region` VALUES ('2817','330','朝天区','3');
INSERT INTO `clt_region` VALUES ('2818','330','旺苍县','3');
INSERT INTO `clt_region` VALUES ('2819','330','青川县','3');
INSERT INTO `clt_region` VALUES ('2820','330','剑阁县','3');
INSERT INTO `clt_region` VALUES ('2821','330','苍溪县','3');
INSERT INTO `clt_region` VALUES ('2822','331','峨眉山市','3');
INSERT INTO `clt_region` VALUES ('2823','331','乐山市','3');
INSERT INTO `clt_region` VALUES ('2824','331','犍为县','3');
INSERT INTO `clt_region` VALUES ('2825','331','井研县','3');
INSERT INTO `clt_region` VALUES ('2826','331','夹江县','3');
INSERT INTO `clt_region` VALUES ('2827','331','沐川县','3');
INSERT INTO `clt_region` VALUES ('2828','331','峨边','3');
INSERT INTO `clt_region` VALUES ('2829','331','马边','3');
INSERT INTO `clt_region` VALUES ('2830','332','西昌市','3');
INSERT INTO `clt_region` VALUES ('2831','332','盐源县','3');
INSERT INTO `clt_region` VALUES ('2832','332','德昌县','3');
INSERT INTO `clt_region` VALUES ('2833','332','会理县','3');
INSERT INTO `clt_region` VALUES ('2834','332','会东县','3');
INSERT INTO `clt_region` VALUES ('2835','332','宁南县','3');
INSERT INTO `clt_region` VALUES ('2836','332','普格县','3');
INSERT INTO `clt_region` VALUES ('2837','332','布拖县','3');
INSERT INTO `clt_region` VALUES ('2838','332','金阳县','3');
INSERT INTO `clt_region` VALUES ('2839','332','昭觉县','3');
INSERT INTO `clt_region` VALUES ('2840','332','喜德县','3');
INSERT INTO `clt_region` VALUES ('2841','332','冕宁县','3');
INSERT INTO `clt_region` VALUES ('2842','332','越西县','3');
INSERT INTO `clt_region` VALUES ('2843','332','甘洛县','3');
INSERT INTO `clt_region` VALUES ('2844','332','美姑县','3');
INSERT INTO `clt_region` VALUES ('2845','332','雷波县','3');
INSERT INTO `clt_region` VALUES ('2846','332','木里','3');
INSERT INTO `clt_region` VALUES ('2847','333','东坡区','3');
INSERT INTO `clt_region` VALUES ('2848','333','仁寿县','3');
INSERT INTO `clt_region` VALUES ('2849','333','彭山县','3');
INSERT INTO `clt_region` VALUES ('2850','333','洪雅县','3');
INSERT INTO `clt_region` VALUES ('2851','333','丹棱县','3');
INSERT INTO `clt_region` VALUES ('2852','333','青神县','3');
INSERT INTO `clt_region` VALUES ('2853','334','阆中市','3');
INSERT INTO `clt_region` VALUES ('2854','334','南部县','3');
INSERT INTO `clt_region` VALUES ('2855','334','营山县','3');
INSERT INTO `clt_region` VALUES ('2856','334','蓬安县','3');
INSERT INTO `clt_region` VALUES ('2857','334','仪陇县','3');
INSERT INTO `clt_region` VALUES ('2858','334','顺庆区','3');
INSERT INTO `clt_region` VALUES ('2859','334','高坪区','3');
INSERT INTO `clt_region` VALUES ('2860','334','嘉陵区','3');
INSERT INTO `clt_region` VALUES ('2861','334','西充县','3');
INSERT INTO `clt_region` VALUES ('2862','335','市中区','3');
INSERT INTO `clt_region` VALUES ('2863','335','东兴区','3');
INSERT INTO `clt_region` VALUES ('2864','335','威远县','3');
INSERT INTO `clt_region` VALUES ('2865','335','资中县','3');
INSERT INTO `clt_region` VALUES ('2866','335','隆昌县','3');
INSERT INTO `clt_region` VALUES ('2867','336','东  区','3');
INSERT INTO `clt_region` VALUES ('2868','336','西  区','3');
INSERT INTO `clt_region` VALUES ('2869','336','仁和区','3');
INSERT INTO `clt_region` VALUES ('2870','336','米易县','3');
INSERT INTO `clt_region` VALUES ('2871','336','盐边县','3');
INSERT INTO `clt_region` VALUES ('2872','337','船山区','3');
INSERT INTO `clt_region` VALUES ('2873','337','安居区','3');
INSERT INTO `clt_region` VALUES ('2874','337','蓬溪县','3');
INSERT INTO `clt_region` VALUES ('2875','337','射洪县','3');
INSERT INTO `clt_region` VALUES ('2876','337','大英县','3');
INSERT INTO `clt_region` VALUES ('2877','338','雨城区','3');
INSERT INTO `clt_region` VALUES ('2878','338','名山县','3');
INSERT INTO `clt_region` VALUES ('2879','338','荥经县','3');
INSERT INTO `clt_region` VALUES ('2880','338','汉源县','3');
INSERT INTO `clt_region` VALUES ('2881','338','石棉县','3');
INSERT INTO `clt_region` VALUES ('2882','338','天全县','3');
INSERT INTO `clt_region` VALUES ('2883','338','芦山县','3');
INSERT INTO `clt_region` VALUES ('2884','338','宝兴县','3');
INSERT INTO `clt_region` VALUES ('2885','339','翠屏区','3');
INSERT INTO `clt_region` VALUES ('2886','339','宜宾县','3');
INSERT INTO `clt_region` VALUES ('2887','339','南溪县','3');
INSERT INTO `clt_region` VALUES ('2888','339','江安县','3');
INSERT INTO `clt_region` VALUES ('2889','339','长宁县','3');
INSERT INTO `clt_region` VALUES ('2890','339','高县','3');
INSERT INTO `clt_region` VALUES ('2891','339','珙县','3');
INSERT INTO `clt_region` VALUES ('2892','339','筠连县','3');
INSERT INTO `clt_region` VALUES ('2893','339','兴文县','3');
INSERT INTO `clt_region` VALUES ('2894','339','屏山县','3');
INSERT INTO `clt_region` VALUES ('2895','340','雁江区','3');
INSERT INTO `clt_region` VALUES ('2896','340','简阳市','3');
INSERT INTO `clt_region` VALUES ('2897','340','安岳县','3');
INSERT INTO `clt_region` VALUES ('2898','340','乐至县','3');
INSERT INTO `clt_region` VALUES ('2899','341','大安区','3');
INSERT INTO `clt_region` VALUES ('2900','341','自流井区','3');
INSERT INTO `clt_region` VALUES ('2901','341','贡井区','3');
INSERT INTO `clt_region` VALUES ('2902','341','沿滩区','3');
INSERT INTO `clt_region` VALUES ('2903','341','荣县','3');
INSERT INTO `clt_region` VALUES ('2904','341','富顺县','3');
INSERT INTO `clt_region` VALUES ('2905','342','江阳区','3');
INSERT INTO `clt_region` VALUES ('2906','342','纳溪区','3');
INSERT INTO `clt_region` VALUES ('2907','342','龙马潭区','3');
INSERT INTO `clt_region` VALUES ('2908','342','泸县','3');
INSERT INTO `clt_region` VALUES ('2909','342','合江县','3');
INSERT INTO `clt_region` VALUES ('2910','342','叙永县','3');
INSERT INTO `clt_region` VALUES ('2911','342','古蔺县','3');
INSERT INTO `clt_region` VALUES ('2912','343','和平区','3');
INSERT INTO `clt_region` VALUES ('2913','343','河西区','3');
INSERT INTO `clt_region` VALUES ('2914','343','南开区','3');
INSERT INTO `clt_region` VALUES ('2915','343','河北区','3');
INSERT INTO `clt_region` VALUES ('2916','343','河东区','3');
INSERT INTO `clt_region` VALUES ('2917','343','红桥区','3');
INSERT INTO `clt_region` VALUES ('2918','343','东丽区','3');
INSERT INTO `clt_region` VALUES ('2919','343','津南区','3');
INSERT INTO `clt_region` VALUES ('2920','343','西青区','3');
INSERT INTO `clt_region` VALUES ('2921','343','北辰区','3');
INSERT INTO `clt_region` VALUES ('2922','343','塘沽区','3');
INSERT INTO `clt_region` VALUES ('2923','343','汉沽区','3');
INSERT INTO `clt_region` VALUES ('2924','343','大港区','3');
INSERT INTO `clt_region` VALUES ('2925','343','武清区','3');
INSERT INTO `clt_region` VALUES ('2926','343','宝坻区','3');
INSERT INTO `clt_region` VALUES ('2927','343','经济开发区','3');
INSERT INTO `clt_region` VALUES ('2928','343','宁河县','3');
INSERT INTO `clt_region` VALUES ('2929','343','静海县','3');
INSERT INTO `clt_region` VALUES ('2930','343','蓟县','3');
INSERT INTO `clt_region` VALUES ('2931','344','城关区','3');
INSERT INTO `clt_region` VALUES ('2932','344','林周县','3');
INSERT INTO `clt_region` VALUES ('2933','344','当雄县','3');
INSERT INTO `clt_region` VALUES ('2934','344','尼木县','3');
INSERT INTO `clt_region` VALUES ('2935','344','曲水县','3');
INSERT INTO `clt_region` VALUES ('2936','344','堆龙德庆县','3');
INSERT INTO `clt_region` VALUES ('2937','344','达孜县','3');
INSERT INTO `clt_region` VALUES ('2938','344','墨竹工卡县','3');
INSERT INTO `clt_region` VALUES ('2939','345','噶尔县','3');
INSERT INTO `clt_region` VALUES ('2940','345','普兰县','3');
INSERT INTO `clt_region` VALUES ('2941','345','札达县','3');
INSERT INTO `clt_region` VALUES ('2942','345','日土县','3');
INSERT INTO `clt_region` VALUES ('2943','345','革吉县','3');
INSERT INTO `clt_region` VALUES ('2944','345','改则县','3');
INSERT INTO `clt_region` VALUES ('2945','345','措勤县','3');
INSERT INTO `clt_region` VALUES ('2946','346','昌都县','3');
INSERT INTO `clt_region` VALUES ('2947','346','江达县','3');
INSERT INTO `clt_region` VALUES ('2948','346','贡觉县','3');
INSERT INTO `clt_region` VALUES ('2949','346','类乌齐县','3');
INSERT INTO `clt_region` VALUES ('2950','346','丁青县','3');
INSERT INTO `clt_region` VALUES ('2951','346','察雅县','3');
INSERT INTO `clt_region` VALUES ('2952','346','八宿县','3');
INSERT INTO `clt_region` VALUES ('2953','346','左贡县','3');
INSERT INTO `clt_region` VALUES ('2954','346','芒康县','3');
INSERT INTO `clt_region` VALUES ('2955','346','洛隆县','3');
INSERT INTO `clt_region` VALUES ('2956','346','边坝县','3');
INSERT INTO `clt_region` VALUES ('2957','347','林芝县','3');
INSERT INTO `clt_region` VALUES ('2958','347','工布江达县','3');
INSERT INTO `clt_region` VALUES ('2959','347','米林县','3');
INSERT INTO `clt_region` VALUES ('2960','347','墨脱县','3');
INSERT INTO `clt_region` VALUES ('2961','347','波密县','3');
INSERT INTO `clt_region` VALUES ('2962','347','察隅县','3');
INSERT INTO `clt_region` VALUES ('2963','347','朗县','3');
INSERT INTO `clt_region` VALUES ('2964','348','那曲县','3');
INSERT INTO `clt_region` VALUES ('2965','348','嘉黎县','3');
INSERT INTO `clt_region` VALUES ('2966','348','比如县','3');
INSERT INTO `clt_region` VALUES ('2967','348','聂荣县','3');
INSERT INTO `clt_region` VALUES ('2968','348','安多县','3');
INSERT INTO `clt_region` VALUES ('2969','348','申扎县','3');
INSERT INTO `clt_region` VALUES ('2970','348','索县','3');
INSERT INTO `clt_region` VALUES ('2971','348','班戈县','3');
INSERT INTO `clt_region` VALUES ('2972','348','巴青县','3');
INSERT INTO `clt_region` VALUES ('2973','348','尼玛县','3');
INSERT INTO `clt_region` VALUES ('2974','349','日喀则市','3');
INSERT INTO `clt_region` VALUES ('2975','349','南木林县','3');
INSERT INTO `clt_region` VALUES ('2976','349','江孜县','3');
INSERT INTO `clt_region` VALUES ('2977','349','定日县','3');
INSERT INTO `clt_region` VALUES ('2978','349','萨迦县','3');
INSERT INTO `clt_region` VALUES ('2979','349','拉孜县','3');
INSERT INTO `clt_region` VALUES ('2980','349','昂仁县','3');
INSERT INTO `clt_region` VALUES ('2981','349','谢通门县','3');
INSERT INTO `clt_region` VALUES ('2982','349','白朗县','3');
INSERT INTO `clt_region` VALUES ('2983','349','仁布县','3');
INSERT INTO `clt_region` VALUES ('2984','349','康马县','3');
INSERT INTO `clt_region` VALUES ('2985','349','定结县','3');
INSERT INTO `clt_region` VALUES ('2986','349','仲巴县','3');
INSERT INTO `clt_region` VALUES ('2987','349','亚东县','3');
INSERT INTO `clt_region` VALUES ('2988','349','吉隆县','3');
INSERT INTO `clt_region` VALUES ('2989','349','聂拉木县','3');
INSERT INTO `clt_region` VALUES ('2990','349','萨嘎县','3');
INSERT INTO `clt_region` VALUES ('2991','349','岗巴县','3');
INSERT INTO `clt_region` VALUES ('2992','350','乃东县','3');
INSERT INTO `clt_region` VALUES ('2993','350','扎囊县','3');
INSERT INTO `clt_region` VALUES ('2994','350','贡嘎县','3');
INSERT INTO `clt_region` VALUES ('2995','350','桑日县','3');
INSERT INTO `clt_region` VALUES ('2996','350','琼结县','3');
INSERT INTO `clt_region` VALUES ('2997','350','曲松县','3');
INSERT INTO `clt_region` VALUES ('2998','350','措美县','3');
INSERT INTO `clt_region` VALUES ('2999','350','洛扎县','3');
INSERT INTO `clt_region` VALUES ('3000','350','加查县','3');
INSERT INTO `clt_region` VALUES ('3001','350','隆子县','3');
INSERT INTO `clt_region` VALUES ('3002','350','错那县','3');
INSERT INTO `clt_region` VALUES ('3003','350','浪卡子县','3');
INSERT INTO `clt_region` VALUES ('3004','351','天山区','3');
INSERT INTO `clt_region` VALUES ('3005','351','沙依巴克区','3');
INSERT INTO `clt_region` VALUES ('3006','351','新市区','3');
INSERT INTO `clt_region` VALUES ('3007','351','水磨沟区','3');
INSERT INTO `clt_region` VALUES ('3008','351','头屯河区','3');
INSERT INTO `clt_region` VALUES ('3009','351','达坂城区','3');
INSERT INTO `clt_region` VALUES ('3010','351','米东区','3');
INSERT INTO `clt_region` VALUES ('3011','351','乌鲁木齐县','3');
INSERT INTO `clt_region` VALUES ('3012','352','阿克苏市','3');
INSERT INTO `clt_region` VALUES ('3013','352','温宿县','3');
INSERT INTO `clt_region` VALUES ('3014','352','库车县','3');
INSERT INTO `clt_region` VALUES ('3015','352','沙雅县','3');
INSERT INTO `clt_region` VALUES ('3016','352','新和县','3');
INSERT INTO `clt_region` VALUES ('3017','352','拜城县','3');
INSERT INTO `clt_region` VALUES ('3018','352','乌什县','3');
INSERT INTO `clt_region` VALUES ('3019','352','阿瓦提县','3');
INSERT INTO `clt_region` VALUES ('3020','352','柯坪县','3');
INSERT INTO `clt_region` VALUES ('3021','353','阿拉尔市','3');
INSERT INTO `clt_region` VALUES ('3022','354','库尔勒市','3');
INSERT INTO `clt_region` VALUES ('3023','354','轮台县','3');
INSERT INTO `clt_region` VALUES ('3024','354','尉犁县','3');
INSERT INTO `clt_region` VALUES ('3025','354','若羌县','3');
INSERT INTO `clt_region` VALUES ('3026','354','且末县','3');
INSERT INTO `clt_region` VALUES ('3027','354','焉耆','3');
INSERT INTO `clt_region` VALUES ('3028','354','和静县','3');
INSERT INTO `clt_region` VALUES ('3029','354','和硕县','3');
INSERT INTO `clt_region` VALUES ('3030','354','博湖县','3');
INSERT INTO `clt_region` VALUES ('3031','355','博乐市','3');
INSERT INTO `clt_region` VALUES ('3032','355','精河县','3');
INSERT INTO `clt_region` VALUES ('3033','355','温泉县','3');
INSERT INTO `clt_region` VALUES ('3034','356','呼图壁县','3');
INSERT INTO `clt_region` VALUES ('3035','356','米泉市','3');
INSERT INTO `clt_region` VALUES ('3036','356','昌吉市','3');
INSERT INTO `clt_region` VALUES ('3037','356','阜康市','3');
INSERT INTO `clt_region` VALUES ('3038','356','玛纳斯县','3');
INSERT INTO `clt_region` VALUES ('3039','356','奇台县','3');
INSERT INTO `clt_region` VALUES ('3040','356','吉木萨尔县','3');
INSERT INTO `clt_region` VALUES ('3041','356','木垒','3');
INSERT INTO `clt_region` VALUES ('3042','357','哈密市','3');
INSERT INTO `clt_region` VALUES ('3043','357','伊吾县','3');
INSERT INTO `clt_region` VALUES ('3044','357','巴里坤','3');
INSERT INTO `clt_region` VALUES ('3045','358','和田市','3');
INSERT INTO `clt_region` VALUES ('3046','358','和田县','3');
INSERT INTO `clt_region` VALUES ('3047','358','墨玉县','3');
INSERT INTO `clt_region` VALUES ('3048','358','皮山县','3');
INSERT INTO `clt_region` VALUES ('3049','358','洛浦县','3');
INSERT INTO `clt_region` VALUES ('3050','358','策勒县','3');
INSERT INTO `clt_region` VALUES ('3051','358','于田县','3');
INSERT INTO `clt_region` VALUES ('3052','358','民丰县','3');
INSERT INTO `clt_region` VALUES ('3053','359','喀什市','3');
INSERT INTO `clt_region` VALUES ('3054','359','疏附县','3');
INSERT INTO `clt_region` VALUES ('3055','359','疏勒县','3');
INSERT INTO `clt_region` VALUES ('3056','359','英吉沙县','3');
INSERT INTO `clt_region` VALUES ('3057','359','泽普县','3');
INSERT INTO `clt_region` VALUES ('3058','359','莎车县','3');
INSERT INTO `clt_region` VALUES ('3059','359','叶城县','3');
INSERT INTO `clt_region` VALUES ('3060','359','麦盖提县','3');
INSERT INTO `clt_region` VALUES ('3061','359','岳普湖县','3');
INSERT INTO `clt_region` VALUES ('3062','359','伽师县','3');
INSERT INTO `clt_region` VALUES ('3063','359','巴楚县','3');
INSERT INTO `clt_region` VALUES ('3064','359','塔什库尔干','3');
INSERT INTO `clt_region` VALUES ('3065','360','克拉玛依市','3');
INSERT INTO `clt_region` VALUES ('3066','361','阿图什市','3');
INSERT INTO `clt_region` VALUES ('3067','361','阿克陶县','3');
INSERT INTO `clt_region` VALUES ('3068','361','阿合奇县','3');
INSERT INTO `clt_region` VALUES ('3069','361','乌恰县','3');
INSERT INTO `clt_region` VALUES ('3070','362','石河子市','3');
INSERT INTO `clt_region` VALUES ('3071','363','图木舒克市','3');
INSERT INTO `clt_region` VALUES ('3072','364','吐鲁番市','3');
INSERT INTO `clt_region` VALUES ('3073','364','鄯善县','3');
INSERT INTO `clt_region` VALUES ('3074','364','托克逊县','3');
INSERT INTO `clt_region` VALUES ('3075','365','五家渠市','3');
INSERT INTO `clt_region` VALUES ('3076','366','阿勒泰市','3');
INSERT INTO `clt_region` VALUES ('3077','366','布克赛尔','3');
INSERT INTO `clt_region` VALUES ('3078','366','伊宁市','3');
INSERT INTO `clt_region` VALUES ('3079','366','布尔津县','3');
INSERT INTO `clt_region` VALUES ('3080','366','奎屯市','3');
INSERT INTO `clt_region` VALUES ('3081','366','乌苏市','3');
INSERT INTO `clt_region` VALUES ('3082','366','额敏县','3');
INSERT INTO `clt_region` VALUES ('3083','366','富蕴县','3');
INSERT INTO `clt_region` VALUES ('3084','366','伊宁县','3');
INSERT INTO `clt_region` VALUES ('3085','366','福海县','3');
INSERT INTO `clt_region` VALUES ('3086','366','霍城县','3');
INSERT INTO `clt_region` VALUES ('3087','366','沙湾县','3');
INSERT INTO `clt_region` VALUES ('3088','366','巩留县','3');
INSERT INTO `clt_region` VALUES ('3089','366','哈巴河县','3');
INSERT INTO `clt_region` VALUES ('3090','366','托里县','3');
INSERT INTO `clt_region` VALUES ('3091','366','青河县','3');
INSERT INTO `clt_region` VALUES ('3092','366','新源县','3');
INSERT INTO `clt_region` VALUES ('3093','366','裕民县','3');
INSERT INTO `clt_region` VALUES ('3094','366','和布克赛尔','3');
INSERT INTO `clt_region` VALUES ('3095','366','吉木乃县','3');
INSERT INTO `clt_region` VALUES ('3096','366','昭苏县','3');
INSERT INTO `clt_region` VALUES ('3097','366','特克斯县','3');
INSERT INTO `clt_region` VALUES ('3098','366','尼勒克县','3');
INSERT INTO `clt_region` VALUES ('3099','366','察布查尔','3');
INSERT INTO `clt_region` VALUES ('3100','367','盘龙区','3');
INSERT INTO `clt_region` VALUES ('3101','367','五华区','3');
INSERT INTO `clt_region` VALUES ('3102','367','官渡区','3');
INSERT INTO `clt_region` VALUES ('3103','367','西山区','3');
INSERT INTO `clt_region` VALUES ('3104','367','东川区','3');
INSERT INTO `clt_region` VALUES ('3105','367','安宁市','3');
INSERT INTO `clt_region` VALUES ('3106','367','呈贡县','3');
INSERT INTO `clt_region` VALUES ('3107','367','晋宁县','3');
INSERT INTO `clt_region` VALUES ('3108','367','富民县','3');
INSERT INTO `clt_region` VALUES ('3109','367','宜良县','3');
INSERT INTO `clt_region` VALUES ('3110','367','嵩明县','3');
INSERT INTO `clt_region` VALUES ('3111','367','石林县','3');
INSERT INTO `clt_region` VALUES ('3112','367','禄劝','3');
INSERT INTO `clt_region` VALUES ('3113','367','寻甸','3');
INSERT INTO `clt_region` VALUES ('3114','368','兰坪','3');
INSERT INTO `clt_region` VALUES ('3115','368','泸水县','3');
INSERT INTO `clt_region` VALUES ('3116','368','福贡县','3');
INSERT INTO `clt_region` VALUES ('3117','368','贡山','3');
INSERT INTO `clt_region` VALUES ('3118','369','宁洱','3');
INSERT INTO `clt_region` VALUES ('3119','369','思茅区','3');
INSERT INTO `clt_region` VALUES ('3120','369','墨江','3');
INSERT INTO `clt_region` VALUES ('3121','369','景东','3');
INSERT INTO `clt_region` VALUES ('3122','369','景谷','3');
INSERT INTO `clt_region` VALUES ('3123','369','镇沅','3');
INSERT INTO `clt_region` VALUES ('3124','369','江城','3');
INSERT INTO `clt_region` VALUES ('3125','369','孟连','3');
INSERT INTO `clt_region` VALUES ('3126','369','澜沧','3');
INSERT INTO `clt_region` VALUES ('3127','369','西盟','3');
INSERT INTO `clt_region` VALUES ('3128','370','古城区','3');
INSERT INTO `clt_region` VALUES ('3129','370','宁蒗','3');
INSERT INTO `clt_region` VALUES ('3130','370','玉龙','3');
INSERT INTO `clt_region` VALUES ('3131','370','永胜县','3');
INSERT INTO `clt_region` VALUES ('3132','370','华坪县','3');
INSERT INTO `clt_region` VALUES ('3133','371','隆阳区','3');
INSERT INTO `clt_region` VALUES ('3134','371','施甸县','3');
INSERT INTO `clt_region` VALUES ('3135','371','腾冲县','3');
INSERT INTO `clt_region` VALUES ('3136','371','龙陵县','3');
INSERT INTO `clt_region` VALUES ('3137','371','昌宁县','3');
INSERT INTO `clt_region` VALUES ('3138','372','楚雄市','3');
INSERT INTO `clt_region` VALUES ('3139','372','双柏县','3');
INSERT INTO `clt_region` VALUES ('3140','372','牟定县','3');
INSERT INTO `clt_region` VALUES ('3141','372','南华县','3');
INSERT INTO `clt_region` VALUES ('3142','372','姚安县','3');
INSERT INTO `clt_region` VALUES ('3143','372','大姚县','3');
INSERT INTO `clt_region` VALUES ('3144','372','永仁县','3');
INSERT INTO `clt_region` VALUES ('3145','372','元谋县','3');
INSERT INTO `clt_region` VALUES ('3146','372','武定县','3');
INSERT INTO `clt_region` VALUES ('3147','372','禄丰县','3');
INSERT INTO `clt_region` VALUES ('3148','373','大理市','3');
INSERT INTO `clt_region` VALUES ('3149','373','祥云县','3');
INSERT INTO `clt_region` VALUES ('3150','373','宾川县','3');
INSERT INTO `clt_region` VALUES ('3151','373','弥渡县','3');
INSERT INTO `clt_region` VALUES ('3152','373','永平县','3');
INSERT INTO `clt_region` VALUES ('3153','373','云龙县','3');
INSERT INTO `clt_region` VALUES ('3154','373','洱源县','3');
INSERT INTO `clt_region` VALUES ('3155','373','剑川县','3');
INSERT INTO `clt_region` VALUES ('3156','373','鹤庆县','3');
INSERT INTO `clt_region` VALUES ('3157','373','漾濞','3');
INSERT INTO `clt_region` VALUES ('3158','373','南涧','3');
INSERT INTO `clt_region` VALUES ('3159','373','巍山','3');
INSERT INTO `clt_region` VALUES ('3160','374','潞西市','3');
INSERT INTO `clt_region` VALUES ('3161','374','瑞丽市','3');
INSERT INTO `clt_region` VALUES ('3162','374','梁河县','3');
INSERT INTO `clt_region` VALUES ('3163','374','盈江县','3');
INSERT INTO `clt_region` VALUES ('3164','374','陇川县','3');
INSERT INTO `clt_region` VALUES ('3165','375','香格里拉县','3');
INSERT INTO `clt_region` VALUES ('3166','375','德钦县','3');
INSERT INTO `clt_region` VALUES ('3167','375','维西','3');
INSERT INTO `clt_region` VALUES ('3168','376','泸西县','3');
INSERT INTO `clt_region` VALUES ('3169','376','蒙自县','3');
INSERT INTO `clt_region` VALUES ('3170','376','个旧市','3');
INSERT INTO `clt_region` VALUES ('3171','376','开远市','3');
INSERT INTO `clt_region` VALUES ('3172','376','绿春县','3');
INSERT INTO `clt_region` VALUES ('3173','376','建水县','3');
INSERT INTO `clt_region` VALUES ('3174','376','石屏县','3');
INSERT INTO `clt_region` VALUES ('3175','376','弥勒县','3');
INSERT INTO `clt_region` VALUES ('3176','376','元阳县','3');
INSERT INTO `clt_region` VALUES ('3177','376','红河县','3');
INSERT INTO `clt_region` VALUES ('3178','376','金平','3');
INSERT INTO `clt_region` VALUES ('3179','376','河口','3');
INSERT INTO `clt_region` VALUES ('3180','376','屏边','3');
INSERT INTO `clt_region` VALUES ('3181','377','临翔区','3');
INSERT INTO `clt_region` VALUES ('3182','377','凤庆县','3');
INSERT INTO `clt_region` VALUES ('3183','377','云县','3');
INSERT INTO `clt_region` VALUES ('3184','377','永德县','3');
INSERT INTO `clt_region` VALUES ('3185','377','镇康县','3');
INSERT INTO `clt_region` VALUES ('3186','377','双江','3');
INSERT INTO `clt_region` VALUES ('3187','377','耿马','3');
INSERT INTO `clt_region` VALUES ('3188','377','沧源','3');
INSERT INTO `clt_region` VALUES ('3189','378','麒麟区','3');
INSERT INTO `clt_region` VALUES ('3190','378','宣威市','3');
INSERT INTO `clt_region` VALUES ('3191','378','马龙县','3');
INSERT INTO `clt_region` VALUES ('3192','378','陆良县','3');
INSERT INTO `clt_region` VALUES ('3193','378','师宗县','3');
INSERT INTO `clt_region` VALUES ('3194','378','罗平县','3');
INSERT INTO `clt_region` VALUES ('3195','378','富源县','3');
INSERT INTO `clt_region` VALUES ('3196','378','会泽县','3');
INSERT INTO `clt_region` VALUES ('3197','378','沾益县','3');
INSERT INTO `clt_region` VALUES ('3198','379','文山县','3');
INSERT INTO `clt_region` VALUES ('3199','379','砚山县','3');
INSERT INTO `clt_region` VALUES ('3200','379','西畴县','3');
INSERT INTO `clt_region` VALUES ('3201','379','麻栗坡县','3');
INSERT INTO `clt_region` VALUES ('3202','379','马关县','3');
INSERT INTO `clt_region` VALUES ('3203','379','丘北县','3');
INSERT INTO `clt_region` VALUES ('3204','379','广南县','3');
INSERT INTO `clt_region` VALUES ('3205','379','富宁县','3');
INSERT INTO `clt_region` VALUES ('3206','380','景洪市','3');
INSERT INTO `clt_region` VALUES ('3207','380','勐海县','3');
INSERT INTO `clt_region` VALUES ('3208','380','勐腊县','3');
INSERT INTO `clt_region` VALUES ('3209','381','红塔区','3');
INSERT INTO `clt_region` VALUES ('3210','381','江川县','3');
INSERT INTO `clt_region` VALUES ('3211','381','澄江县','3');
INSERT INTO `clt_region` VALUES ('3212','381','通海县','3');
INSERT INTO `clt_region` VALUES ('3213','381','华宁县','3');
INSERT INTO `clt_region` VALUES ('3214','381','易门县','3');
INSERT INTO `clt_region` VALUES ('3215','381','峨山','3');
INSERT INTO `clt_region` VALUES ('3216','381','新平','3');
INSERT INTO `clt_region` VALUES ('3217','381','元江','3');
INSERT INTO `clt_region` VALUES ('3218','382','昭阳区','3');
INSERT INTO `clt_region` VALUES ('3219','382','鲁甸县','3');
INSERT INTO `clt_region` VALUES ('3220','382','巧家县','3');
INSERT INTO `clt_region` VALUES ('3221','382','盐津县','3');
INSERT INTO `clt_region` VALUES ('3222','382','大关县','3');
INSERT INTO `clt_region` VALUES ('3223','382','永善县','3');
INSERT INTO `clt_region` VALUES ('3224','382','绥江县','3');
INSERT INTO `clt_region` VALUES ('3225','382','镇雄县','3');
INSERT INTO `clt_region` VALUES ('3226','382','彝良县','3');
INSERT INTO `clt_region` VALUES ('3227','382','威信县','3');
INSERT INTO `clt_region` VALUES ('3228','382','水富县','3');
INSERT INTO `clt_region` VALUES ('3229','383','西湖区','3');
INSERT INTO `clt_region` VALUES ('3230','383','上城区','3');
INSERT INTO `clt_region` VALUES ('3231','383','下城区','3');
INSERT INTO `clt_region` VALUES ('3232','383','拱墅区','3');
INSERT INTO `clt_region` VALUES ('3233','383','滨江区','3');
INSERT INTO `clt_region` VALUES ('3234','383','江干区','3');
INSERT INTO `clt_region` VALUES ('3235','383','萧山区','3');
INSERT INTO `clt_region` VALUES ('3236','383','余杭区','3');
INSERT INTO `clt_region` VALUES ('3237','383','市郊','3');
INSERT INTO `clt_region` VALUES ('3238','383','建德市','3');
INSERT INTO `clt_region` VALUES ('3239','383','富阳市','3');
INSERT INTO `clt_region` VALUES ('3240','383','临安市','3');
INSERT INTO `clt_region` VALUES ('3241','383','桐庐县','3');
INSERT INTO `clt_region` VALUES ('3242','383','淳安县','3');
INSERT INTO `clt_region` VALUES ('3243','384','吴兴区','3');
INSERT INTO `clt_region` VALUES ('3244','384','南浔区','3');
INSERT INTO `clt_region` VALUES ('3245','384','德清县','3');
INSERT INTO `clt_region` VALUES ('3246','384','长兴县','3');
INSERT INTO `clt_region` VALUES ('3247','384','安吉县','3');
INSERT INTO `clt_region` VALUES ('3248','385','南湖区','3');
INSERT INTO `clt_region` VALUES ('3249','385','秀洲区','3');
INSERT INTO `clt_region` VALUES ('3250','385','海宁市','3');
INSERT INTO `clt_region` VALUES ('3251','385','嘉善县','3');
INSERT INTO `clt_region` VALUES ('3252','385','平湖市','3');
INSERT INTO `clt_region` VALUES ('3253','385','桐乡市','3');
INSERT INTO `clt_region` VALUES ('3254','385','海盐县','3');
INSERT INTO `clt_region` VALUES ('3255','386','婺城区','3');
INSERT INTO `clt_region` VALUES ('3256','386','金东区','3');
INSERT INTO `clt_region` VALUES ('3257','386','兰溪市','3');
INSERT INTO `clt_region` VALUES ('3258','386','市区','3');
INSERT INTO `clt_region` VALUES ('3259','386','佛堂镇','3');
INSERT INTO `clt_region` VALUES ('3260','386','上溪镇','3');
INSERT INTO `clt_region` VALUES ('3261','386','义亭镇','3');
INSERT INTO `clt_region` VALUES ('3262','386','大陈镇','3');
INSERT INTO `clt_region` VALUES ('3263','386','苏溪镇','3');
INSERT INTO `clt_region` VALUES ('3264','386','赤岸镇','3');
INSERT INTO `clt_region` VALUES ('3265','386','东阳市','3');
INSERT INTO `clt_region` VALUES ('3266','386','永康市','3');
INSERT INTO `clt_region` VALUES ('3267','386','武义县','3');
INSERT INTO `clt_region` VALUES ('3268','386','浦江县','3');
INSERT INTO `clt_region` VALUES ('3269','386','磐安县','3');
INSERT INTO `clt_region` VALUES ('3270','387','莲都区','3');
INSERT INTO `clt_region` VALUES ('3271','387','龙泉市','3');
INSERT INTO `clt_region` VALUES ('3272','387','青田县','3');
INSERT INTO `clt_region` VALUES ('3273','387','缙云县','3');
INSERT INTO `clt_region` VALUES ('3274','387','遂昌县','3');
INSERT INTO `clt_region` VALUES ('3275','387','松阳县','3');
INSERT INTO `clt_region` VALUES ('3276','387','云和县','3');
INSERT INTO `clt_region` VALUES ('3277','387','庆元县','3');
INSERT INTO `clt_region` VALUES ('3278','387','景宁','3');
INSERT INTO `clt_region` VALUES ('3279','388','海曙区','3');
INSERT INTO `clt_region` VALUES ('3280','388','江东区','3');
INSERT INTO `clt_region` VALUES ('3281','388','江北区','3');
INSERT INTO `clt_region` VALUES ('3282','388','镇海区','3');
INSERT INTO `clt_region` VALUES ('3283','388','北仑区','3');
INSERT INTO `clt_region` VALUES ('3284','388','鄞州区','3');
INSERT INTO `clt_region` VALUES ('3285','388','余姚市','3');
INSERT INTO `clt_region` VALUES ('3286','388','慈溪市','3');
INSERT INTO `clt_region` VALUES ('3287','388','奉化市','3');
INSERT INTO `clt_region` VALUES ('3288','388','象山县','3');
INSERT INTO `clt_region` VALUES ('3289','388','宁海县','3');
INSERT INTO `clt_region` VALUES ('3290','389','越城区','3');
INSERT INTO `clt_region` VALUES ('3291','389','上虞市','3');
INSERT INTO `clt_region` VALUES ('3292','389','嵊州市','3');
INSERT INTO `clt_region` VALUES ('3293','389','绍兴县','3');
INSERT INTO `clt_region` VALUES ('3294','389','新昌县','3');
INSERT INTO `clt_region` VALUES ('3295','389','诸暨市','3');
INSERT INTO `clt_region` VALUES ('3296','390','椒江区','3');
INSERT INTO `clt_region` VALUES ('3297','390','黄岩区','3');
INSERT INTO `clt_region` VALUES ('3298','390','路桥区','3');
INSERT INTO `clt_region` VALUES ('3299','390','温岭市','3');
INSERT INTO `clt_region` VALUES ('3300','390','临海市','3');
INSERT INTO `clt_region` VALUES ('3301','390','玉环县','3');
INSERT INTO `clt_region` VALUES ('3302','390','三门县','3');
INSERT INTO `clt_region` VALUES ('3303','390','天台县','3');
INSERT INTO `clt_region` VALUES ('3304','390','仙居县','3');
INSERT INTO `clt_region` VALUES ('3305','391','鹿城区','3');
INSERT INTO `clt_region` VALUES ('3306','391','龙湾区','3');
INSERT INTO `clt_region` VALUES ('3307','391','瓯海区','3');
INSERT INTO `clt_region` VALUES ('3308','391','瑞安市','3');
INSERT INTO `clt_region` VALUES ('3309','391','乐清市','3');
INSERT INTO `clt_region` VALUES ('3310','391','洞头县','3');
INSERT INTO `clt_region` VALUES ('3311','391','永嘉县','3');
INSERT INTO `clt_region` VALUES ('3312','391','平阳县','3');
INSERT INTO `clt_region` VALUES ('3313','391','苍南县','3');
INSERT INTO `clt_region` VALUES ('3314','391','文成县','3');
INSERT INTO `clt_region` VALUES ('3315','391','泰顺县','3');
INSERT INTO `clt_region` VALUES ('3316','392','定海区','3');
INSERT INTO `clt_region` VALUES ('3317','392','普陀区','3');
INSERT INTO `clt_region` VALUES ('3318','392','岱山县','3');
INSERT INTO `clt_region` VALUES ('3319','392','嵊泗县','3');
INSERT INTO `clt_region` VALUES ('3320','393','衢州市','3');
INSERT INTO `clt_region` VALUES ('3321','393','江山市','3');
INSERT INTO `clt_region` VALUES ('3322','393','常山县','3');
INSERT INTO `clt_region` VALUES ('3323','393','开化县','3');
INSERT INTO `clt_region` VALUES ('3324','393','龙游县','3');
INSERT INTO `clt_region` VALUES ('3325','394','合川区','3');
INSERT INTO `clt_region` VALUES ('3326','394','江津区','3');
INSERT INTO `clt_region` VALUES ('3327','394','南川区','3');
INSERT INTO `clt_region` VALUES ('3328','394','永川区','3');
INSERT INTO `clt_region` VALUES ('3329','394','南岸区','3');
INSERT INTO `clt_region` VALUES ('3330','394','渝北区','3');
INSERT INTO `clt_region` VALUES ('3331','394','万盛区','3');
INSERT INTO `clt_region` VALUES ('3332','394','大渡口区','3');
INSERT INTO `clt_region` VALUES ('3333','394','万州区','3');
INSERT INTO `clt_region` VALUES ('3334','394','北碚区','3');
INSERT INTO `clt_region` VALUES ('3335','394','沙坪坝区','3');
INSERT INTO `clt_region` VALUES ('3336','394','巴南区','3');
INSERT INTO `clt_region` VALUES ('3337','394','涪陵区','3');
INSERT INTO `clt_region` VALUES ('3338','394','江北区','3');
INSERT INTO `clt_region` VALUES ('3339','394','九龙坡区','3');
INSERT INTO `clt_region` VALUES ('3340','394','渝中区','3');
INSERT INTO `clt_region` VALUES ('3341','394','黔江开发区','3');
INSERT INTO `clt_region` VALUES ('3342','394','长寿区','3');
INSERT INTO `clt_region` VALUES ('3343','394','双桥区','3');
INSERT INTO `clt_region` VALUES ('3344','394','綦江县','3');
INSERT INTO `clt_region` VALUES ('3345','394','潼南县','3');
INSERT INTO `clt_region` VALUES ('3346','394','铜梁县','3');
INSERT INTO `clt_region` VALUES ('3347','394','大足县','3');
INSERT INTO `clt_region` VALUES ('3348','394','荣昌县','3');
INSERT INTO `clt_region` VALUES ('3349','394','璧山县','3');
INSERT INTO `clt_region` VALUES ('3350','394','垫江县','3');
INSERT INTO `clt_region` VALUES ('3351','394','武隆县','3');
INSERT INTO `clt_region` VALUES ('3352','394','丰都县','3');
INSERT INTO `clt_region` VALUES ('3353','394','城口县','3');
INSERT INTO `clt_region` VALUES ('3354','394','梁平县','3');
INSERT INTO `clt_region` VALUES ('3355','394','开县','3');
INSERT INTO `clt_region` VALUES ('3356','394','巫溪县','3');
INSERT INTO `clt_region` VALUES ('3357','394','巫山县','3');
INSERT INTO `clt_region` VALUES ('3358','394','奉节县','3');
INSERT INTO `clt_region` VALUES ('3359','394','云阳县','3');
INSERT INTO `clt_region` VALUES ('3360','394','忠县','3');
INSERT INTO `clt_region` VALUES ('3361','394','石柱','3');
INSERT INTO `clt_region` VALUES ('3362','394','彭水','3');
INSERT INTO `clt_region` VALUES ('3363','394','酉阳','3');
INSERT INTO `clt_region` VALUES ('3364','394','秀山','3');
INSERT INTO `clt_region` VALUES ('3365','395','沙田区','3');
INSERT INTO `clt_region` VALUES ('3366','395','东区','3');
INSERT INTO `clt_region` VALUES ('3367','395','观塘区','3');
INSERT INTO `clt_region` VALUES ('3368','395','黄大仙区','3');
INSERT INTO `clt_region` VALUES ('3369','395','九龙城区','3');
INSERT INTO `clt_region` VALUES ('3370','395','屯门区','3');
INSERT INTO `clt_region` VALUES ('3371','395','葵青区','3');
INSERT INTO `clt_region` VALUES ('3372','395','元朗区','3');
INSERT INTO `clt_region` VALUES ('3373','395','深水埗区','3');
INSERT INTO `clt_region` VALUES ('3374','395','西贡区','3');
INSERT INTO `clt_region` VALUES ('3375','395','大埔区','3');
INSERT INTO `clt_region` VALUES ('3376','395','湾仔区','3');
INSERT INTO `clt_region` VALUES ('3377','395','油尖旺区','3');
INSERT INTO `clt_region` VALUES ('3378','395','北区','3');
INSERT INTO `clt_region` VALUES ('3379','395','南区','3');
INSERT INTO `clt_region` VALUES ('3380','395','荃湾区','3');
INSERT INTO `clt_region` VALUES ('3381','395','中西区','3');
INSERT INTO `clt_region` VALUES ('3382','395','离岛区','3');
INSERT INTO `clt_region` VALUES ('3383','396','澳门','3');
INSERT INTO `clt_region` VALUES ('3384','397','台北','3');
INSERT INTO `clt_region` VALUES ('3385','397','高雄','3');
INSERT INTO `clt_region` VALUES ('3386','397','基隆','3');
INSERT INTO `clt_region` VALUES ('3387','397','台中','3');
INSERT INTO `clt_region` VALUES ('3388','397','台南','3');
INSERT INTO `clt_region` VALUES ('3389','397','新竹','3');
INSERT INTO `clt_region` VALUES ('3390','397','嘉义','3');
INSERT INTO `clt_region` VALUES ('3391','397','宜兰县','3');
INSERT INTO `clt_region` VALUES ('3392','397','桃园县','3');
INSERT INTO `clt_region` VALUES ('3393','397','苗栗县','3');
INSERT INTO `clt_region` VALUES ('3394','397','彰化县','3');
INSERT INTO `clt_region` VALUES ('3395','397','南投县','3');
INSERT INTO `clt_region` VALUES ('3396','397','云林县','3');
INSERT INTO `clt_region` VALUES ('3397','397','屏东县','3');
INSERT INTO `clt_region` VALUES ('3398','397','台东县','3');
INSERT INTO `clt_region` VALUES ('3399','397','花莲县','3');
INSERT INTO `clt_region` VALUES ('3400','397','澎湖县','3');
INSERT INTO `clt_region` VALUES ('3401','3','合肥','2');
INSERT INTO `clt_region` VALUES ('3402','3401','庐阳区','3');
INSERT INTO `clt_region` VALUES ('3403','3401','瑶海区','3');
INSERT INTO `clt_region` VALUES ('3404','3401','蜀山区','3');
INSERT INTO `clt_region` VALUES ('3405','3401','包河区','3');
INSERT INTO `clt_region` VALUES ('3406','3401','长丰县','3');
INSERT INTO `clt_region` VALUES ('3407','3401','肥东县','3');
INSERT INTO `clt_region` VALUES ('3408','3401','肥西县','3');
INSERT INTO `clt_region` VALUES ('3409','0','国外','0');
--
-- 表的结构 `clt_role`
-- 
DROP TABLE IF EXISTS `clt_role`;
CREATE TABLE `clt_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) ,
  KEY `status` (`status`) 
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_role`表中的数据 `clt_role`
--
INSERT INTO `clt_role` VALUES ('1','超级管理员','1','超级管理','0','0');
INSERT INTO `clt_role` VALUES ('2','普通管理员','1','普通管理员','0','0');
INSERT INTO `clt_role` VALUES ('3','注册用户','1','注册用户','0','0');
INSERT INTO `clt_role` VALUES ('4','游客','1','游客','0','0');
--
-- 表的结构 `clt_role_user`
-- 
DROP TABLE IF EXISTS `clt_role_user`;
CREATE TABLE `clt_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` char(32) DEFAULT '0',
  KEY `group_id` (`role_id`) ,
  KEY `user_id` (`user_id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_sys`
-- 
DROP TABLE IF EXISTS `clt_sys`;
CREATE TABLE `clt_sys` (
  `sys_id` int(36) unsigned NOT NULL,
  `sys_name` char(36) NOT NULL DEFAULT '',
  `sys_url` varchar(36) NOT NULL DEFAULT '',
  `sys_title` varchar(200) NOT NULL,
  `sys_key` varchar(200) NOT NULL,
  `sys_des` varchar(200) NOT NULL,
  `email_open` tinyint(2) NOT NULL COMMENT '邮箱发送是否开启',
  `email_name` varchar(50) NOT NULL COMMENT '发送邮箱账号',
  `email_pwd` varchar(50) NOT NULL COMMENT '发送邮箱密码',
  `email_smtpname` varchar(50) NOT NULL COMMENT 'smtp服务器账号',
  `email_emname` varchar(30) NOT NULL COMMENT '邮件名',
  `email_rename` varchar(30) NOT NULL COMMENT '发件人姓名',
  `wesys_name` varchar(30) NOT NULL COMMENT '微信名称',
  `wesys_number` varchar(30) NOT NULL COMMENT '微信号',
  `wesys_id` varchar(20) NOT NULL COMMENT '微信原始ID',
  `wesys_type` tinyint(2) NOT NULL COMMENT '1=订阅号 2=服务号',
  `wesys_appid` varchar(30) NOT NULL COMMENT '微信appid',
  `wesys_appsecret` varchar(50) NOT NULL COMMENT '微信AppSecret',
  `wesys_token` varchar(50) NOT NULL COMMENT '微信token',
  `bah` varchar(50) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(30) DEFAULT NULL COMMENT 'copyright',
  `ads` varchar(120) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(15) DEFAULT NULL COMMENT '公司电话',
  `email` varchar(50) DEFAULT NULL COMMENT '公司邮箱',
  PRIMARY KEY (`sys_id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_sys`表中的数据 `clt_sys`
--
INSERT INTO `clt_sys` VALUES ('1','CLTLAYUI','http://www.cltphp.com/','CLTPHP后台管理系统','CLTPHP,CLTPHP后台管理系统，thinkphp,thinkphp后台管理系统','CLTPHP后台管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。','1','876902658@qq.com','maggie198586','smtp.qq.com','876902658','网站管理员','chichu','chichu12345','12231231231231111','1','12312312312','123123123123123','weixin','陕ICP备15008093号','2015-2020','南京市白下区虎踞南路40-8号1-4楼','025-86530015','1109305987@qq.com');
--
-- 表的结构 `clt_system`
-- 
DROP TABLE IF EXISTS `clt_system`;
CREATE TABLE `clt_system` (
  `id` int(36) unsigned NOT NULL,
  `name` char(36) NOT NULL DEFAULT '',
  `url` varchar(36) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL,
  `key` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `bah` varchar(50) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(30) DEFAULT NULL COMMENT 'copyright',
  `ads` varchar(120) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(15) DEFAULT NULL COMMENT '公司电话',
  `email` varchar(50) DEFAULT NULL COMMENT '公司邮箱',
  `logo` varchar(120) DEFAULT NULL COMMENT 'logo',
  `wxpic` varchar(255) DEFAULT NULL COMMENT '官方微信',
  `qq` varchar(25) DEFAULT NULL,
  `wechat` varchar(25) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `contact_say` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_system`表中的数据 `clt_system`
--
INSERT INTO `clt_system` VALUES ('1','戴维弗林-DavidFlynn','http://www.zasj.com/','戴维弗林-DavidFlynn','源自意大利,舒适睡眠,颈椎健康,脊骨椎,枕头,记忆枕,乳胶垫,乳胶床垫,3D植物凝胶','享誉百年、意大利皇室至爱奢侈品牌——戴维•弗林\n美第奇家族是意大利最兴旺和最受尊敬的皇室家族之一，然而鲜少有人知道美第奇家族的财富、势力和影响源于最初经商、从事羊毛加工和在毛纺同业公会中的活动，更不会知道他们背后有一个长久服务的家纺品牌——戴维•弗林。\n19世纪60年代，意大利的统一运动蓬勃开展，戴维•弗林凭借皇室高端水准的纺织技术而发展迅速；二战后，意大利成立了欧洲经济共同体，经济以三倍速度飞涨','青ICP备15008023号-6','2017-2018','青岛市xx区xx路xx大厦202','15965585803','22','/uploads/20180327/7282555d4d1993ca7fcb2644a91545aa.png','/uploads/20180116/ac9e81f21fa1c08e9a9cd09e8b8ebfe9.png','22222','ddd','11','77','得到的点点滴滴');
--
-- 表的结构 `clt_user_level`
-- 
DROP TABLE IF EXISTS `clt_user_level`;
CREATE TABLE `clt_user_level` (
  `level_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `level_name` varchar(30) DEFAULT NULL COMMENT '头衔名称',
  `sort` int(3) DEFAULT '0' COMMENT '排序',
  `bomlimit` int(5) DEFAULT '0' COMMENT '积分下限',
  `toplimit` int(5) DEFAULT '0' COMMENT '积分上限',
  PRIMARY KEY (`level_id`) 
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_user_level`表中的数据 `clt_user_level`
--
INSERT INTO `clt_user_level` VALUES ('1','注册会员','1','0','500');
INSERT INTO `clt_user_level` VALUES ('2','铜牌会员','2','501','1000');
INSERT INTO `clt_user_level` VALUES ('3','白银会员','3','1001','2000');
INSERT INTO `clt_user_level` VALUES ('4','黄金会员','4','2001','3500');
INSERT INTO `clt_user_level` VALUES ('5','钻石会员','5','3501','5500');
INSERT INTO `clt_user_level` VALUES ('6','超级VIP','6','5500','99999');
--
-- 表的结构 `clt_users`
-- 
DROP TABLE IF EXISTS `clt_users`;
CREATE TABLE `clt_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `paypwd` varchar(32) DEFAULT NULL COMMENT '支付密码',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 男 0 女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `mobile_validated` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证手机',
  `oauth` varchar(10) DEFAULT '' COMMENT '第三方来源 wx weibo alipay',
  `openid` varchar(100) DEFAULT NULL COMMENT '第三方唯一标示',
  `unionid` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `province` int(6) DEFAULT '0' COMMENT '省份',
  `city` int(6) DEFAULT '0' COMMENT '市区',
  `district` int(6) DEFAULT '0' COMMENT '县',
  `email_validated` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证电子邮箱',
  `username` varchar(50) DEFAULT NULL COMMENT '第三方返回昵称',
  `level` tinyint(1) DEFAULT '1' COMMENT '会员等级',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT '是否被锁定冻结',
  `token` varchar(64) DEFAULT '' COMMENT '用于app 授权类似于session_id',
  `sign` varchar(255) DEFAULT '' COMMENT '签名',
  `status` varchar(20) DEFAULT 'hide' COMMENT '登录状态',
  PRIMARY KEY (`id`) ,
  KEY `email` (`email`) 
) ENGINE=MyISAM AUTO_INCREMENT=2601 DEFAULT CHARSET=utf8;
--
-- 表的结构 `clt_wx_auth`
-- 
DROP TABLE IF EXISTS `clt_wx_auth`;
CREATE TABLE `clt_wx_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `authorizer_appid` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的appid  授权之后不用刷新',
  `authorizer_refresh_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺授权之后的刷新token，每月刷新',
  `authorizer_access_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的公众号token，只有2小时',
  `func_info` varchar(1000) NOT NULL DEFAULT '' COMMENT '授权项目',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号昵称',
  `head_img` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号头像url',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号原始账号',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号原始名称',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号二维码url',
  `auth_time` int(11) DEFAULT '0' COMMENT '授权时间',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺(实例)微信公众账号授权';
--
-- 表的结构 `clt_wx_config`
-- 
DROP TABLE IF EXISTS `clt_wx_config`;
CREATE TABLE `clt_wx_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '1' COMMENT '实例ID',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项WCHAT,QQ,WPAY,ALIPAY...',
  `value` varchar(1000) NOT NULL DEFAULT '' COMMENT '配置值json',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `is_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启用 1启用 0不启用',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='第三方配置表';

-- 
-- 导出`clt_wx_config`表中的数据 `clt_wx_config`
--
INSERT INTO `clt_wx_config` VALUES ('1','0','WCHAT','{\"APP_KEY\":\"\",\"APP_SECRET\":\"\",\"AUTHORIZE\":\"http:\\/\\/b2c1.01.niushop.com.cn\",\"CALLBACK\":\"http:\\/\\/b2c1.01.niushop.com.cn\\/wap\\/Login\\/callback\"}','微信','0','1488350947','1497105440');
INSERT INTO `clt_wx_config` VALUES ('2','0','SHOPWCHAT','{\"appid\":\"dfdsfdsf90bc7b7a\",\"appsecret\":\"e5147ce07128asdfds222f628b5c3fe1af2ea5797\",\"token\":\"dffdf\"}','','1','1497088090','1514860637');
--
-- 表的结构 `clt_wx_default_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_default_replay`;
CREATE TABLE `clt_wx_default_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='关注时回复';

-- 
-- 导出`clt_wx_default_replay`表中的数据 `clt_wx_default_replay`
--
INSERT INTO `clt_wx_default_replay` VALUES ('2','0','3','0','1512528613','0');
--
-- 表的结构 `clt_wx_fans`
-- 
DROP TABLE IF EXISTS `clt_wx_fans`;
CREATE TABLE `clt_wx_fans` (
  `fans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '粉丝ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员编号ID',
  `source_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推广人uid',
  `instance_id` int(11) NOT NULL COMMENT '店铺ID',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `nickname_decode` varchar(255) DEFAULT '',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` smallint(6) NOT NULL DEFAULT '1' COMMENT '性别',
  `language` varchar(20) NOT NULL DEFAULT '' COMMENT '用户语言',
  `country` varchar(60) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `district` varchar(255) NOT NULL DEFAULT '' COMMENT '行政区/县',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户的标识，对当前公众号唯一     用户的唯一身份ID',
  `unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝unionid',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝所在组id',
  `is_subscribe` bigint(1) NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `memo` varchar(255) NOT NULL COMMENT '备注',
  `subscribe_date` int(11) DEFAULT '0' COMMENT '订阅时间',
  `unsubscribe_date` int(11) DEFAULT '0' COMMENT '解订阅时间',
  `update_date` int(11) DEFAULT '0' COMMENT '粉丝信息最后更新时间',
  PRIMARY KEY (`fans_id`) ,
  KEY `IDX_sys_weixin_fans_openid` (`openid`) ,
  KEY `IDX_sys_weixin_fans_unionid` (`unionid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信公众号获取粉丝列表';
--
-- 表的结构 `clt_wx_follow_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_follow_replay`;
CREATE TABLE `clt_wx_follow_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关注时回复';

-- 
-- 导出`clt_wx_follow_replay`表中的数据 `clt_wx_follow_replay`
--
INSERT INTO `clt_wx_follow_replay` VALUES ('1','0','1','0','1512445072','0');
--
-- 表的结构 `clt_wx_key_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_key_replay`;
CREATE TABLE `clt_wx_key_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `key` varchar(255) NOT NULL COMMENT '关键词',
  `match_type` tinyint(4) NOT NULL COMMENT '匹配类型1模糊匹配2全部匹配',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关键词回复';

-- 
-- 导出`clt_wx_key_replay`表中的数据 `clt_wx_key_replay`
--
INSERT INTO `clt_wx_key_replay` VALUES ('1','0','你好','1','2','0','1512464471','0');
--
-- 表的结构 `clt_wx_media`
-- 
DROP TABLE IF EXISTS `clt_wx_media`;
CREATE TABLE `clt_wx_media` (
  `media_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id店铺id',
  `type` varchar(255) NOT NULL DEFAULT '1' COMMENT '类型1文本(项表无内容) 2单图文 3多图文',
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`media_id`) ,
  UNIQUE KEY `id` (`media_id`) 
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_wx_media`表中的数据 `clt_wx_media`
--
INSERT INTO `clt_wx_media` VALUES ('1','欢迎您来到CLTPHP官方公众号大世界！','0','1','0','1512551413','0');
INSERT INTO `clt_wx_media` VALUES ('2','你好，欢迎来到CLTPHP的世界！','0','1','0','1512550726','0');
INSERT INTO `clt_wx_media` VALUES ('3','CLTPHP内容管理系统','0','2','0','1512550547','0');
INSERT INTO `clt_wx_media` VALUES ('4','CLTPHP内容管理系统5.2.2发布','0','3','0','1512551330','0');
INSERT INTO `clt_wx_media` VALUES ('5','CLTPHP操作开发手册已完全更新','0','2','0','1513577265','0');
--
-- 表的结构 `clt_wx_media_item`
-- 
DROP TABLE IF EXISTS `clt_wx_media_item`;
CREATE TABLE `clt_wx_media_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `media_id` int(11) NOT NULL COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) NOT NULL COMMENT '作者',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `show_cover_pic` tinyint(4) NOT NULL DEFAULT '1' COMMENT '封面图片显示在正文中',
  `summary` text,
  `content` text NOT NULL COMMENT '正文',
  `content_source_url` varchar(200) NOT NULL DEFAULT '' COMMENT '图文消息的原文地址，即点击“阅读原文”后的URL',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  PRIMARY KEY (`id`) ,
  KEY `id` (`media_id`) 
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- 
-- 导出`clt_wx_media_item`表中的数据 `clt_wx_media_item`
--
INSERT INTO `clt_wx_media_item` VALUES ('28','3','CLTPHP内容管理系统','cltphp','/uploads/20171206/6dfec00133ee42c5c33cea8ab0cfad8f.png','1','CLTPHP内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。','<p style=\"text-indent: 2em;\"><span style=\"text-indent: 2em;\">虽然世界上有成千上万的建站系统，但CLTPHP会告诉你，真正高效的建站系统是什么样的。</span><br/></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">CLTPHP采用了优美的layui框架，一面极简，一面丰盈。加上angular Js，让数据交互变得更为简洁直白。用最基础的代码，实现最强大的效果，让你欲罢不能！</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">CLTPHP采用的ThinkPHP5为基础框架，从而使得CLTPHP的拓展性变的极为强大。从模型构造到栏目建立，再到前台展示，一气呵成，网站后台一条龙式操作，让小白用户能快速掌握CLTPHP管理系统的核心操作，让小白开发者能更好的理解CLTPHP的核心构建价值。</p><p><br/></p>','http://www.cltphp.com/','0','6');
INSERT INTO `clt_wx_media_item` VALUES ('29','2','你好，欢迎来到CLTPHP的世界！','','','0','','','','0','0');
INSERT INTO `clt_wx_media_item` VALUES ('39','4','CLTPHP内容管理系统5.2.2发布','chichu','/uploads/20171206/91febfbe3eaaa412ba6b54ca4164402d.jpg','1','这是一篇多图文','<h4 style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 22px; line-height: inherit; font-family: \">CLTPHP5.2.2发布</h4><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: baseline; margin: 0px; padding: 0px;\">修改bug若干</span></p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\">下载地址：</span><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\"><a href=\"http://qiniu.cltphp.com/cltphp5.2.2.zip\" target=\"_self\" title=\"CLTPHP5.2.2\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(0, 176, 80); outline: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px; text-decoration: none;\">CLTPHP5.2.2</span></a></span></span></p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\">补丁地址：</span><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(0, 176, 80); outline: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px; text-decoration: none;\"><a href=\"http://qiniu.cltphp.com/CLTPHP5.2.1%E5%88%B05.2.2%E8%A1%A5%E4%B8%81.zip\" target=\"_self\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(0, 176, 80); outline: 0px;\">CLTPHP5.2.1到5.2.2升级</a></span></span></span></p>','http://www.cltphp.com/newsInfo-44-5.html','0','2');
INSERT INTO `clt_wx_media_item` VALUES ('40','4','给我们一点点时间 我们给你一个新突破','chichu','/uploads/20171206/18fd882e982e07e7b35dac5b962ab393.jpg','0','给我们一点点时间 我们给你一个新突破','<p><span style=\"color: rgb(102, 102, 102); font-family: \">说实话，最近这段时间我们太忙了</span><img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><span style=\"color: rgb(102, 102, 102); font-family: \">，cltphp的开发，甚至可以说是搁浅了一段时间。不过，各位请耐心等待一下啊，给我们一点点时间，或许不止一点点，我们给你一个新突破。</span></p>','http://www.cltphp.com/newsInfo-45-5.html','0','4');
INSERT INTO `clt_wx_media_item` VALUES ('41','4','CLTPHP操作开发手册已完全更新','chichu','/uploads/20171206/db19ac0c46a3ffd4ebf94028024d3036.jpg','1','CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。','<p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">喜欢的朋友可以购买参考</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">同时希望CLTPHP的爱好者，可以给我提出更多CLTPHP的不足之处，让CLTPHP更健康的成长。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">手册地址：<a href=\"https://www.kancloud.cn/chichu/cltphp/\" target=\"_self\">https://www.kancloud.cn/chichu/cltphp/</a></p><p><br/></p>','http://www.cltphp.com/newsInfo-16-5.html','0','4');
INSERT INTO `clt_wx_media_item` VALUES ('42','1','欢迎您来到CLTPHP官方公众号大世界！','','','0','','','','0','0');
INSERT INTO `clt_wx_media_item` VALUES ('45','5','CLTPHP操作开发手册已完全更新','chichu','/uploads/20171206/463cc15ed856b237e4241c1cc40b768c.png','0','CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。','<p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; text-indent: 2em;\">CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">喜欢的朋友可以购买参考</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; text-indent: 2em;\">同时希望CLTPHP的爱好者，可以给我提出更多CLTPHP的不足之处，让CLTPHP更健康的成长。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; text-indent: 2em;\">手册地址：https://www.kancloud.cn/chichu/cltphp/</p><p><br/></p>','https://www.kancloud.cn/chichu/cltphp','0','0');
--
-- 表的结构 `clt_wx_menu`
-- 
DROP TABLE IF EXISTS `clt_wx_menu`;
CREATE TABLE `clt_wx_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `menu_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ico` varchar(32) NOT NULL DEFAULT '' COMMENT '菜图标单',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `menu_event_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通url 2 图文素材 3 功能',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '图文消息ID',
  `menu_event_url` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单url',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发数',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`menu_id`) ,
  KEY `IDX_biz_shop_menu_orders` (`sort`) ,
  KEY `IDX_biz_shop_menu_shopId` (`instance_id`) 
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='微设置->微店菜单';

-- 
-- 导出`clt_wx_menu`表中的数据 `clt_wx_menu`
--
INSERT INTO `clt_wx_menu` VALUES ('1','0','官网','','0','2','3','http://www.cltphp.com/','0','1','1512442512','0');
INSERT INTO `clt_wx_menu` VALUES ('2','0','手册','','0','2','5','http://www.cltphp.com/','0','2','1512442543','0');
INSERT INTO `clt_wx_menu` VALUES ('3','0','动态','','0','2','4','http://www.cltphp.com/','0','3','1512547727','0');
--
-- 表的结构 `clt_wx_user`
-- 
DROP TABLE IF EXISTS `clt_wx_user`;
CREATE TABLE `clt_wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `aeskey` varchar(256) NOT NULL DEFAULT '' COMMENT 'aeskey',
  `encode` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'encode',
  `appid` varchar(50) NOT NULL DEFAULT '' COMMENT 'appid',
  `appsecret` varchar(50) NOT NULL DEFAULT '' COMMENT 'appsecret',
  `wxid` varchar(64) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(64) NOT NULL COMMENT '微信号',
  `token` char(255) NOT NULL COMMENT 'token',
  `w_token` varchar(150) NOT NULL DEFAULT '' COMMENT '微信对接token',
  `create_time` int(11) NOT NULL COMMENT 'create_time',
  `updatetime` int(11) NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `share_ticket` varchar(150) NOT NULL COMMENT '分享ticket',
  `share_dated` char(15) NOT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) NOT NULL COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) NOT NULL COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) NOT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `web_access_token` varchar(200) NOT NULL COMMENT '网页授权token',
  `web_refresh_token` varchar(200) NOT NULL COMMENT 'web_refresh_token',
  `web_expires` int(11) NOT NULL COMMENT '过期时间',
  `menu_config` text COMMENT '菜单',
  `wait_access` tinyint(1) DEFAULT '0' COMMENT '微信接入状态,0待接入1已接入',
  `concern` varchar(225) DEFAULT '' COMMENT '关注回复',
  `default` varchar(225) DEFAULT '' COMMENT '默认回复',
  PRIMARY KEY (`id`) ,
  KEY `uid` (`uid`) ,
  KEY `uid_2` (`uid`) 
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信公共帐号';

-- 
-- 导出`clt_wx_user`表中的数据 `clt_wx_user`
--
INSERT INTO `clt_wx_user` VALUES ('1','0','CLTPHP','','0','wx08c8be078e00b88b','2e6f2d97d60582f21111be7862d14ddc','gh_8aacbef4e497','chichu12345','sdfdsfdsfdsf','cltphp','0','0','','','','','','','1','eY9W4LLdISpE3UtTfuodgz1HJdBYCMbzZWkiLEhF0Nzvzv2q2DtGIV5h7CPrc0Nd4_kJgKN_FdM3kNaCxfFC1wmu6JLnNoOrmMuy3FK2AhMDLCbAGAXFW','','1504242136','0','0','欢迎来到CLTPHP！CLTPHP采用ThinkPHP5作为基础框架，同时采用Layui作为后台界面，使得CLTPHP适用与大型企业网站、个人博客论坛、企业网站、手机网站的定制开发。更高效、更快捷的进行定制开发一直是CLTPHP追求的价值。','亲！您可以输入关键词来获取您想要知道的内容。（例：手册）');
--
-- 表的结构 `clt_wx_user_msg`
-- 
DROP TABLE IF EXISTS `clt_wx_user_msg`;
CREATE TABLE `clt_wx_user_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `msg_type` varchar(255) NOT NULL,
  `content` text,
  `is_replay` int(11) NOT NULL DEFAULT '0' COMMENT '是否回复',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息表';
--
-- 表的结构 `clt_wx_user_msg_replay`
-- 
DROP TABLE IF EXISTS `clt_wx_user_msg_replay`;
CREATE TABLE `clt_wx_user_msg_replay` (
  `replay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `replay_uid` int(11) NOT NULL COMMENT '当前客服uid',
  `replay_type` varchar(255) NOT NULL,
  `content` text,
  `replay_time` int(11) DEFAULT '0',
  PRIMARY KEY (`replay_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息回复表';