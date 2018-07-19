/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : php15shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-05 11:38:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sh_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sh_attribute`;
CREATE TABLE `sh_attribute` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(4) DEFAULT NULL,
  `attr_name` varchar(30) DEFAULT '',
  `attr_type` tinyint(4) DEFAULT '0' COMMENT '0-唯一属性，1-单选属性',
  `attr_input_type` tinyint(4) DEFAULT '0' COMMENT '0-手工输入，1-列表选择',
  `attr_values` varchar(255) DEFAULT '',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_attribute
-- ----------------------------
INSERT INTO `sh_attribute` VALUES ('1', '1', '屏幕', '0', '0', '', '1528975984', '1528975984');
INSERT INTO `sh_attribute` VALUES ('2', '1', '存储', '1', '1', '4+32G|4+64G|6+64G|6+128G', '1528976156', '1528979716');
INSERT INTO `sh_attribute` VALUES ('4', '1', '网络制式', '0', '1', '3G|4G|4G+', '1528979294', '1528979294');
INSERT INTO `sh_attribute` VALUES ('5', '1', '颜色', '1', '1', '烈焰红|曜石黑|汝窑白|香槟金', '1528980154', '1528980154');
INSERT INTO `sh_attribute` VALUES ('6', '1', '套餐', '1', '0', '', '1528980421', '1528980421');
INSERT INTO `sh_attribute` VALUES ('7', '1', '相机', '0', '0', '', '1528995987', '1528995987');
INSERT INTO `sh_attribute` VALUES ('8', '1', '续航时间', '0', '0', '', '1528996034', '1528996034');

-- ----------------------------
-- Table structure for sh_auth
-- ----------------------------
DROP TABLE IF EXISTS `sh_auth`;
CREATE TABLE `sh_auth` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(40) DEFAULT '',
  `auth_c` varchar(40) DEFAULT '',
  `auth_a` varchar(40) DEFAULT '',
  `pid` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  `is_show` tinyint(1) unsigned DEFAULT '1' COMMENT '是否显示,1 显示,0不显示',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_auth
-- ----------------------------
INSERT INTO `sh_auth` VALUES ('1', '用户管理', '', '', '0', '1528789413', '1528789413', '1');
INSERT INTO `sh_auth` VALUES ('2', '用户添加', 'User', 'add', '1', '1528789842', '1528789842', '1');
INSERT INTO `sh_auth` VALUES ('4', '权限管理', '', '', '0', '1528789977', '1528789977', '1');
INSERT INTO `sh_auth` VALUES ('5', '权限列表', 'Auth', 'index', '4', '1528790015', '1528790015', '1');
INSERT INTO `sh_auth` VALUES ('9', '权限添加', 'Auth', 'add', '4', '1528819323', '1528819323', '1');
INSERT INTO `sh_auth` VALUES ('11', '用户列表', 'User', 'index', '1', '1528905441', '1528905441', '1');
INSERT INTO `sh_auth` VALUES ('13', '角色管理', '', '', '0', '1528905607', '1528905607', '1');
INSERT INTO `sh_auth` VALUES ('14', '角色列表', 'Role', 'index', '13', '1528905631', '1528905631', '1');
INSERT INTO `sh_auth` VALUES ('15', '角色添加', 'Role', 'add', '13', '1528905652', '1528905652', '1');
INSERT INTO `sh_auth` VALUES ('18', '用户修改', 'User', 'upd', '11', '1528906628', '1528906628', '0');
INSERT INTO `sh_auth` VALUES ('19', '用户禁用', 'User', 'ajaxChangeActive', '11', '1528906791', '1528906791', '0');
INSERT INTO `sh_auth` VALUES ('20', '权限编辑', 'Auth', 'upd', '5', '1528906852', '1528906852', '0');
INSERT INTO `sh_auth` VALUES ('21', '权限删除', 'Auth', 'ajaxDel', '5', '1528906887', '1528906887', '0');
INSERT INTO `sh_auth` VALUES ('22', '角色编辑', 'Role', 'upd', '14', '1528906936', '1528906936', '0');
INSERT INTO `sh_auth` VALUES ('23', '角色删除', 'Role', 'ajaxDel', '14', '1528906981', '1528906981', '0');
INSERT INTO `sh_auth` VALUES ('24', '控制账户可用', 'User', 'ajaxChangeActive', '11', '1528907362', '1528907362', '0');
INSERT INTO `sh_auth` VALUES ('25', '商品类型管理', '', '', '0', '1528910343', '1528910343', '1');
INSERT INTO `sh_auth` VALUES ('26', '添加商品类型', 'type', 'add', '25', '1528910372', '1528995208', '1');
INSERT INTO `sh_auth` VALUES ('27', '商品类型列表', 'type', 'index', '25', '1528936839', '1528936839', '1');
INSERT INTO `sh_auth` VALUES ('28', '商品类型编辑', 'type', 'upd', '27', '1528936872', '1528936872', '0');
INSERT INTO `sh_auth` VALUES ('29', '商品类型删除', 'type', 'ajaxDel', '27', '1528936902', '1528936902', '0');
INSERT INTO `sh_auth` VALUES ('30', '属性管理', '', '', '0', '1528972399', '1528972399', '1');
INSERT INTO `sh_auth` VALUES ('31', '属性添加', 'attribute', 'add', '30', '1528972521', '1528972521', '1');
INSERT INTO `sh_auth` VALUES ('32', '属性列表', 'attribute', 'index', '30', '1528976997', '1528976997', '1');
INSERT INTO `sh_auth` VALUES ('33', '商品分类管理', '', '', '0', '1528981568', '1528981568', '1');
INSERT INTO `sh_auth` VALUES ('34', '商品分类添加', 'category', 'add', '33', '1528981593', '1528981593', '1');
INSERT INTO `sh_auth` VALUES ('35', '属性编辑', 'auth', 'upd', '32', '1528981997', '1528981997', '0');
INSERT INTO `sh_auth` VALUES ('36', '属性删除', 'auth', 'ajaxDel', '32', '1528982026', '1528982026', '0');
INSERT INTO `sh_auth` VALUES ('37', '商品分类列表', 'category', 'index', '33', '1528982087', '1528982087', '1');
INSERT INTO `sh_auth` VALUES ('38', '商品分类编辑', 'category', 'upd', '37', '1528982106', '1528982347', '0');
INSERT INTO `sh_auth` VALUES ('39', '商品分类删除', 'category', 'ajaxDel', '37', '1528982128', '1528982128', '0');
INSERT INTO `sh_auth` VALUES ('40', '商品管理', '', '', '0', '1529025890', '1529025890', '1');
INSERT INTO `sh_auth` VALUES ('41', '添加商品', 'Goods', 'add', '40', '1529028167', '1529028167', '1');
INSERT INTO `sh_auth` VALUES ('42', '商品列表', 'Goods', 'index', '40', '1529063794', '1529063794', '1');
INSERT INTO `sh_auth` VALUES ('43', '商品图片上传', 'Goods', 'uploadImg', '41', '1529063916', '1529063916', '0');
INSERT INTO `sh_auth` VALUES ('44', '商品图片缩略图', 'Goods', 'thumbImg', '41', '1529063972', '1529063972', '0');
INSERT INTO `sh_auth` VALUES ('45', '获取商品类型属性', 'Goods', 'ajaxGetattr', '41', '1529064012', '1529064012', '0');
INSERT INTO `sh_auth` VALUES ('46', '订单管理', '', '', '0', '1529758399', '1529758399', '1');
INSERT INTO `sh_auth` VALUES ('47', '订单列表', 'order', 'index', '46', '1529758424', '1529758424', '1');

-- ----------------------------
-- Table structure for sh_cart
-- ----------------------------
DROP TABLE IF EXISTS `sh_cart`;
CREATE TABLE `sh_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT '0',
  `goods_attr_ids` varchar(80) DEFAULT '',
  `goods_number` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT '0',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_cart
-- ----------------------------
INSERT INTO `sh_cart` VALUES ('1', '10', '31,33,34', '1', '3');

-- ----------------------------
-- Table structure for sh_category
-- ----------------------------
DROP TABLE IF EXISTS `sh_category`;
CREATE TABLE `sh_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(40) DEFAULT '',
  `pid` smallint(6) DEFAULT '0',
  `is_show` tinyint(4) DEFAULT '1' COMMENT '1-显示 0-不显示',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_category
-- ----------------------------
INSERT INTO `sh_category` VALUES ('1', '魅族', '7', '1', '1528983983', '1529145222');
INSERT INTO `sh_category` VALUES ('2', '华为', '7', '1', '1528985042', '1529145230');
INSERT INTO `sh_category` VALUES ('3', '小米', '7', '1', '1528985051', '1529145237');
INSERT INTO `sh_category` VALUES ('4', 'OPPO', '7', '1', '1528996358', '1529145243');
INSERT INTO `sh_category` VALUES ('6', 'VIVO', '7', '1', '1528996407', '1529145249');
INSERT INTO `sh_category` VALUES ('7', '手机', '0', '1', '1529145214', '1529145214');
INSERT INTO `sh_category` VALUES ('8', '电脑', '0', '1', '1529145264', '1529145264');
INSERT INTO `sh_category` VALUES ('9', '惠普', '15', '1', '1529145277', '1529145377');
INSERT INTO `sh_category` VALUES ('10', '神舟', '15', '1', '1529145287', '1529145493');
INSERT INTO `sh_category` VALUES ('11', '华硕', '15', '1', '1529145301', '1529145301');
INSERT INTO `sh_category` VALUES ('12', '机械师', '15', '1', '1529145314', '1529145383');
INSERT INTO `sh_category` VALUES ('13', '机械革命', '15', '1', '1529145324', '1529145324');
INSERT INTO `sh_category` VALUES ('14', '华为电脑', '15', '1', '1529145349', '1529145389');
INSERT INTO `sh_category` VALUES ('15', '笔记本', '8', '1', '1529145367', '1529145396');
INSERT INTO `sh_category` VALUES ('16', '一体机', '8', '1', '1529145517', '1529145517');
INSERT INTO `sh_category` VALUES ('17', '苹果一体机', '16', '1', '1529145539', '1529145539');
INSERT INTO `sh_category` VALUES ('18', '台式机', '8', '1', '1529145555', '1529145555');
INSERT INTO `sh_category` VALUES ('19', '宏碁', '18', '1', '1529145578', '1529145578');
INSERT INTO `sh_category` VALUES ('20', '小米MIX2', '3', '1', '1529149775', '1529149775');
INSERT INTO `sh_category` VALUES ('21', '小米MIX2S', '3', '1', '1529149785', '1529149785');
INSERT INTO `sh_category` VALUES ('22', '魅族PRO5', '1', '1', '1529149809', '1529149809');
INSERT INTO `sh_category` VALUES ('23', '华为P20', '2', '1', '1529149825', '1529149825');
INSERT INTO `sh_category` VALUES ('24', 'VIVO NEX', '6', '1', '1529149839', '1529149839');
INSERT INTO `sh_category` VALUES ('25', 'OPPO Find', '4', '1', '1529149850', '1529149850');

-- ----------------------------
-- Table structure for sh_goods
-- ----------------------------
DROP TABLE IF EXISTS `sh_goods`;
CREATE TABLE `sh_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(40) DEFAULT '',
  `goods_sn` varchar(150) DEFAULT '',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT 'decimal(10,2)',
  `goods_number` int(11) DEFAULT '0',
  `type_id` smallint(6) DEFAULT '0',
  `cat_id` smallint(6) DEFAULT '0',
  `goods_img` text,
  `goods_middle` text COMMENT '存储商品图片中图',
  `goods_thumb` text,
  `add_time` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否在回站 0-不在回收站 1-在回收站',
  `is_sale` tinyint(4) DEFAULT '1' COMMENT '默认为1： 0-未上架 1-已上架',
  `is_new` tinyint(4) DEFAULT '1' COMMENT '默认为1： 0-不是新品 1-是新品',
  `is_best` tinyint(4) DEFAULT '1' COMMENT '默认为1： 0-不是推荐 1-是推荐',
  `is_hot` tinyint(4) DEFAULT '1' COMMENT '默认为1： 0-不是热卖 1-是热卖商品',
  `goods_desc` text,
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sh_goods
-- ----------------------------
INSERT INTO `sh_goods` VALUES ('9', '小米mix2S', 'SP5b25032475562', '3599.00', '3233', '1', '21', '[\"20180616\\\\f4bec18d53f48248e2a602d4516f42d7.jpg\"]', '[\"20180616\\/middle_f4bec18d53f48248e2a602d4516f42d7.jpg\"]', '[\"20180616\\/min_f4bec18d53f48248e2a602d4516f42d7.jpg\"]', '1529152292', '0', '1', '1', '1', '1', '<p>mix2s</p>', '1529152292', '1529152292');
INSERT INTO `sh_goods` VALUES ('10', 'VIVO NEX', 'SP5b2503742fe49', '4999.00', '324323', '1', '24', '[\"20180616\\\\e6ca8b6320d94820e6fbf44b1e3de6e0.jpg\"]', '[\"20180616\\/middle_e6ca8b6320d94820e6fbf44b1e3de6e0.jpg\"]', '[\"20180616\\/min_e6ca8b6320d94820e6fbf44b1e3de6e0.jpg\"]', '1529152372', '0', '1', '1', '1', '1', '<p>VIVO NEX</p>', '1529152372', '1529152372');
INSERT INTO `sh_goods` VALUES ('11', '小米mix2', 'SP5b2503be2534f', '2899.00', '1111107', '1', '20', '[\"20180616\\\\843f8acfcd08b3c5577f8dbf5ea3a544.jpg\"]', '[\"20180616\\/middle_843f8acfcd08b3c5577f8dbf5ea3a544.jpg\"]', '[\"20180616\\/min_843f8acfcd08b3c5577f8dbf5ea3a544.jpg\"]', '1529152446', '0', '1', '1', '1', '1', '<p>mix2</p>', '1529152446', '1529152446');
INSERT INTO `sh_goods` VALUES ('12', '魅族PRO7', 'SP5b25079ec9b41', '1799.00', '324315', '1', '22', '[\"20180616\\\\b0211f6ffd23d9a920f060bcd2ab455d.jpg\"]', '[\"20180616\\/middle_b0211f6ffd23d9a920f060bcd2ab455d.jpg\"]', '[\"20180616\\/min_b0211f6ffd23d9a920f060bcd2ab455d.jpg\"]', '1529153438', '0', '1', '1', '1', '1', '<p>魅族</p>', '1529153438', '1529153438');
INSERT INTO `sh_goods` VALUES ('13', '华为PR20', 'SP5b2507fce4687', '4299.00', '325', '1', '23', '[\"20180616\\\\53500f423f45eb0d23800b70ea3e26f1.jpg\"]', '[\"20180616\\/middle_53500f423f45eb0d23800b70ea3e26f1.jpg\"]', '[\"20180616\\/min_53500f423f45eb0d23800b70ea3e26f1.jpg\"]', '1529153532', '0', '1', '1', '1', '1', '<p>华为P20</p>', '1529153532', '1529153532');
INSERT INTO `sh_goods` VALUES ('14', 'OPPO Find X', 'SP5b2a3296c47c1', '5299.00', '32776', '1', '25', '[\"20180620\\/b9cb5135a7f71f89ae80d8ce8ffe6a6d.jpg\",\"20180620\\/b1b025b11796eb9df621af01b0c2c69a.jpg\"]', '[\"20180620\\/middle_b9cb5135a7f71f89ae80d8ce8ffe6a6d.jpg\",\"20180620\\/middle_b1b025b11796eb9df621af01b0c2c69a.jpg\"]', '[\"20180620\\/min_b9cb5135a7f71f89ae80d8ce8ffe6a6d.jpg\",\"20180620\\/min_b1b025b11796eb9df621af01b0c2c69a.jpg\"]', '1529492118', '0', '1', '1', '1', '1', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">PPO官方首先援引权威市调机构IDC的数据称，2017年OPPO在全球智能手机市场上的份额位居第四，在中国市场位居第二，业务覆盖30多个国家和地区，用户超过2亿。尽管数据利好，但是很多人对OPPO的市场印象仍停留在时尚拍照手机、明星代言的营销驱动、创新不足，OPPO太需要一部有科技内涵和创新的高端旗舰机来打破固有的形象壁垒了。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">目前来看，OPPO Find X没有让人失望（对，超炫酷der）。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">根据官方介绍这款手机预计在欧洲地区首发销售，而不是在国内，首先从法国、意大利等地区上市。产品使用了以往的奇数数字命名，这次使用X代表什么意义还不得而知，不知道是与苹果iPhone X一样代表10（罗马数字X），还是其他什么原因。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180620/bce4890bbb1c4a2fb26e5749b7621072.jpg\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">首先屏幕采用“曲景全面屏”、“双曲面柔性屏”设计，没有刘海，下巴和左右边框极窄，并有着圆润的曲面边缘，每一条边框都做到了尽可能的窄，配合COP柔性屏封装工艺，视觉屏占比达到93.8％。<img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180620/5f9d2af1d6704570bc698cc9cc5665ad.jpg\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">（如果我小学数学没学错，那比较下来，这应该是目前市场上视觉屏占比最高的了，接受反驳~）</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180620/abeef308216442eb9b42f1ec97bc2e6a.jpg\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">配置方面，这款手机采用了骁龙845处理器，内置3730mAh容量电池，不过可惜的是依然没有使用OPPO两年前展出的超级闪充技术，而是普通的VOOC充电。内含8GB RAM和356GB ROM存储。后置2000万+1600万像素AI摄像头，支持OIS光学防抖，前置摄像头像素为2500万，同样有AI智慧美颜。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">配置的确比较高，但下面才是这款手机比较特别的地方，<span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">采用</span><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">“全隐藏式3D摄像头”</span><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">，不过并不是像vivo那样只有一小部分升降，而是后置摄像头、LED闪光灯、前置摄像头和传感器等等都隐藏起来。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180620/d0b58769cd3d4f13854f35af535d7be8.jpg\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180620/bed27426270e4cd081bd46cbf5f68f21.jpg\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">这有点类似于自动滑盖手机的设计风格，平常整个顶部前后摄像头系统隐藏在机身内部，需要时自动升起，并经过严格测试，在手机跌落或者有外部冲击时会自动收回。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">没有指纹识别，而是以号称“<span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">安全级别比指纹识别高20倍，误识率仅百万分之一，还支持支付宝刷脸</span>”的面部识别来实现，每次开机的时候摄像头也都会升降。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">或许就是对摄像头升降寿命的考虑，vivo NEX手机同样是用升降摄像头，但只有前置摄像头可以升降，而且取消了面部识别功能，目的是降低点击工作频次，提高寿命和可靠度。而OPPO的升降区域面积很大，而且覆盖了前置摄像头和后置摄像头等多个部件，日常使用当中会有很高的使用频次，长时间使用是否容易损耗、是否容易进灰对产品造成影响？现在还存在疑问。</p><p><br/></p>', '1529492118', '1529492118');

-- ----------------------------
-- Table structure for sh_goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `sh_goods_attr`;
CREATE TABLE `sh_goods_attr` (
  `goods_attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL,
  `attr_id` smallint(5) unsigned NOT NULL,
  `attr_value` varchar(255) DEFAULT '',
  `attr_price` decimal(10,2) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_goods_attr
-- ----------------------------
INSERT INTO `sh_goods_attr` VALUES ('23', '9', '1', '5.99寸2k全面屏', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('24', '9', '2', '6+64G', '1000.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('25', '9', '4', '4G+', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('26', '9', '5', '曜石黑', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('27', '9', '6', '官方标配', '0.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('28', '9', '7', '2000万+1200万', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('29', '9', '8', '18H', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('30', '10', '1', '6.3寸2k全面屏', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('31', '10', '2', '6+128G', '1000.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('32', '10', '4', '4G+', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('33', '10', '5', '烈焰红', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('34', '10', '6', '官方标配', '0.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('35', '10', '7', '2200万+1200万', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('36', '10', '8', '18H', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('37', '11', '1', '5.99寸2k全面屏', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('38', '11', '2', '4+64G', '400.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('39', '11', '4', '3G', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('40', '11', '5', '汝窑白', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('41', '11', '6', '官方标配', '0.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('42', '11', '7', '2000万+1200万', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('43', '11', '8', '18H', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('44', '12', '1', 'AMOLED', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('45', '12', '2', '4+64G', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('46', '12', '4', '4G', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('47', '12', '5', '烈焰红', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('48', '12', '6', '官方标配', '0.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('49', '12', '7', '2000万+1200万', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('50', '12', '8', '18H', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('51', '13', '1', '2k全面屏', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('52', '13', '2', '6+64G', '400.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('53', '13', '4', '4G+', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('54', '13', '5', '曜石黑', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('55', '13', '6', '官方标配', '0.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('56', '13', '7', '2200万+1200万', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('57', '13', '8', '18H', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('58', '14', '1', '6.3寸2k全面屏', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('59', '14', '2', '6+64G', '400.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('60', '14', '2', '6+128G', '1000.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('61', '14', '4', '4G+', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('62', '14', '5', '烈焰红', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('63', '14', '5', '曜石黑', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('64', '14', '5', '汝窑白', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('65', '14', '6', '官方标配', '0.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('66', '14', '6', '套餐1', '200.00', '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('67', '14', '7', '2200万+1200万', null, '0', '0');
INSERT INTO `sh_goods_attr` VALUES ('68', '14', '8', '26H', null, '0', '0');

-- ----------------------------
-- Table structure for sh_member
-- ----------------------------
DROP TABLE IF EXISTS `sh_member`;
CREATE TABLE `sh_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT '',
  `password` char(32) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `openid` varchar(50) DEFAULT '',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_member
-- ----------------------------
INSERT INTO `sh_member` VALUES ('3', 'test', 'a54862abdfe679f203f17addd935f6bd', '92890@qq.com', '15555477752', '', '1529314506', '1529747164');

-- ----------------------------
-- Table structure for sh_order
-- ----------------------------
DROP TABLE IF EXISTS `sh_order`;
CREATE TABLE `sh_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(80) DEFAULT NULL,
  `receiver` varchar(30) DEFAULT NULL,
  `address` varchar(80) DEFAULT '',
  `tel` char(15) DEFAULT NULL,
  `zcode` varchar(6) DEFAULT NULL COMMENT '邮编',
  `total_price` decimal(10,2) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `pay_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-未付款 ,1-已付款',
  `send_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT ' 0-未发货 ， 1-已发货 ，2-已收货 ,3-退货中 4-退货成功',
  `ali_order_id` varchar(255) NOT NULL DEFAULT '' COMMENT '支付成功支付宝返回的订单号',
  `company` varchar(255) DEFAULT '',
  `number` varchar(100) DEFAULT '' COMMENT '物流公司',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_order
-- ----------------------------
INSERT INTO `sh_order` VALUES ('7', '18062215296773905b2d064eaf3e6', 'feng', '上海市', '40082088', '123456', '23596.00', '3', '0', '0', '', '', '', '1529677390', '1529677390');
INSERT INTO `sh_order` VALUES ('8', '18062215296775545b2d06f21b9f8', 'feng', '上海市', '40082088', '123456', '5899.00', '3', '1', '0', '', '', '', '1529677554', '1529677554');
INSERT INTO `sh_order` VALUES ('12', '18062215296799035b2d101f9a2e9', 'feng', '广州市', '40082088', '123456', '5899.00', '3', '0', '0', '', '', '', '1529679903', '1529679903');
INSERT INTO `sh_order` VALUES ('13', '18062215296800195b2d1093a0edd', 'feng', '上海市', '40082088', '123456', '5899.00', '3', '1', '0', '2018062221001004400200275515', '', '', '1529680019', '1529680019');
INSERT INTO `sh_order` VALUES ('14', '18062315297260325b2dc4501a4d4', 'feng', '上海市', '40082088', '123456', '8898.00', '3', '1', '1', '2018062321001004400200275524', 'zhongtong', '468403003189', '1529726032', '1529764336');
INSERT INTO `sh_order` VALUES ('15', '18062315297528395b2e2d07b19bd', 'feng', '上海市', '40082088', '123456', '6699.00', '3', '1', '1', '2018062321001004400200278084', 'yunda', '3900321280110', '1529752839', '1529764161');

-- ----------------------------
-- Table structure for sh_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `sh_order_goods`;
CREATE TABLE `sh_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_attr_ids` varchar(30) DEFAULT NULL,
  `goods_number` int(5) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_order_goods
-- ----------------------------
INSERT INTO `sh_order_goods` VALUES ('24', '18062215296773905b2d064eaf3e6', '14', '59,62,65', '4', '23596.00');
INSERT INTO `sh_order_goods` VALUES ('25', '18062215296775545b2d06f21b9f8', '14', '59,62,65', '1', '5899.00');
INSERT INTO `sh_order_goods` VALUES ('31', '18062215296799035b2d101f9a2e9', '14', '59,62,65', '1', '5899.00');
INSERT INTO `sh_order_goods` VALUES ('32', '18062215296800195b2d1093a0edd', '14', '59,62,65', '1', '5899.00');
INSERT INTO `sh_order_goods` VALUES ('33', '18062315297260325b2dc4501a4d4', '12', '45,47,48', '1', '2199.00');
INSERT INTO `sh_order_goods` VALUES ('34', '18062315297260325b2dc4501a4d4', '14', '60,63,66', '1', '6699.00');
INSERT INTO `sh_order_goods` VALUES ('35', '18062315297528395b2e2d07b19bd', '14', '60,63,66', '1', '6699.00');

-- ----------------------------
-- Table structure for sh_role
-- ----------------------------
DROP TABLE IF EXISTS `sh_role`;
CREATE TABLE `sh_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(40) DEFAULT '',
  `auth_id_list` varchar(100) DEFAULT '',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_role
-- ----------------------------
INSERT INTO `sh_role` VALUES ('1', '超级管理员', '*', '0', '0');
INSERT INTO `sh_role` VALUES ('2', '普通用户', '1,2,11,18', '1528813170', '1528938617');
INSERT INTO `sh_role` VALUES ('4', '运维', '1,2,11,18,19,24,4,5,20,21,9', '1528820769', '1528938439');
INSERT INTO `sh_role` VALUES ('5', '仓管员', '25,26,27,28,29', '1528995406', '1528995406');

-- ----------------------------
-- Table structure for sh_type
-- ----------------------------
DROP TABLE IF EXISTS `sh_type`;
CREATE TABLE `sh_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(40) DEFAULT '',
  `mark` text,
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_type
-- ----------------------------
INSERT INTO `sh_type` VALUES ('1', '手机类', '', '1528911563', '1528938876');
INSERT INTO `sh_type` VALUES ('4', '电脑类', '所有电脑商品', '1528972372', '1528972372');

-- ----------------------------
-- Table structure for sh_user
-- ----------------------------
DROP TABLE IF EXISTS `sh_user`;
CREATE TABLE `sh_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT '',
  `password` char(32) DEFAULT '',
  `is_active` tinyint(4) DEFAULT '1' COMMENT '0-账号禁用(封号），1-账号可用',
  `role_id` tinyint(4) DEFAULT '0',
  `create_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_user
-- ----------------------------
INSERT INTO `sh_user` VALUES ('32', 'test', '7a5bc89ea0a23dda092c2fc0ca512162', '1', '2', '1528732790', '1529025606');
INSERT INTO `sh_user` VALUES ('33', 'admin', 'a54862abdfe679f203f17addd935f6bd', '1', '1', '1528732840', '1529025614');
INSERT INTO `sh_user` VALUES ('34', 'test1', '8aba97659733fb9b1b832d9db1142025', '1', '4', '1528733537', '1528905504');
INSERT INTO `sh_user` VALUES ('35', 'test3', '7a5bc89ea0a23dda092c2fc0ca512162', '1', '5', '1528887546', '1529025610');
INSERT INTO `sh_user` VALUES ('39', 'test2', '7a5bc89ea0a23dda092c2fc0ca512162', '0', '1', '1528995037', '1528995162');
