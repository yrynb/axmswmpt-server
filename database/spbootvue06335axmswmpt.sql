/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : spbootvue06335axmswmpt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-03-23 17:28:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '帐号',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin', '2021-03-11 23:23:40');

-- ----------------------------
-- Table structure for `dingdanpeisong`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanpeisong`;
CREATE TABLE `dingdanpeisong` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanxinxiid` int(10) unsigned NOT NULL COMMENT '订单信息id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18,2) NOT NULL COMMENT '订单金额',
  `guketiwen` decimal(18,2) NOT NULL COMMENT '顾客体温',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `shoucanren` varchar(50) NOT NULL COMMENT '收餐人',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `shoucandizhi` varchar(255) NOT NULL COMMENT '收餐地址',
  `cuncanweizhi` varchar(255) NOT NULL COMMENT '存餐位置',
  `anpaipeisong` int(10) unsigned NOT NULL COMMENT '安排配送ID',
  `gonghao` varchar(50) NOT NULL COMMENT '工号',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `peisongyuantiwen` decimal(18,2) NOT NULL COMMENT '配送员体温',
  `waimaitupian` varchar(255) NOT NULL COMMENT '外卖图片',
  `peisongzhaopian` varchar(255) NOT NULL COMMENT '配送照片',
  `caozuoren` varchar(50) NOT NULL COMMENT '操作人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanpeisong_dingdanxinxiid_index` (`dingdanxinxiid`),
  KEY `dingdanpeisong_anpaipeisong_index` (`anpaipeisong`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单配送';

-- ----------------------------
-- Records of dingdanpeisong
-- ----------------------------
INSERT INTO `dingdanpeisong` VALUES ('1', '1', '032316404721', '', '183.00', '36.50', '001', '张三', '13666666666', 'XXX路XXX号', '门口取餐柜A05', '1', '100', '小明', '36.30', 'upload/20210323/62d8dcc0-ed39-43bd-8314-89b3d8024446.png', 'upload/20210323/39c7f8aa-8f62-4b5c-a636-f3ece7241e3e.png', 'admin', '2021-03-23 16:48:54');
INSERT INTO `dingdanpeisong` VALUES ('2', '4', '032317214647', '', '153.00', '36.20', '002', '张三', '13666666666', 'XXX路XXX号', '门口A柜501', '3', '300', '小红', '36.50', 'upload/20210323/f921e745-62b0-41ce-be7c-55570aea1361.png', 'upload/20210323/332ddc28-11ce-4609-b23e-4ddd6be8fef0.png', 'admin', '2021-03-23 17:24:00');

-- ----------------------------
-- Table structure for `dingdanpeisong_dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanpeisong_dingdanxinxi`;
CREATE TABLE `dingdanpeisong_dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanpeisongid` int(10) unsigned NOT NULL COMMENT '关联表【dingdanpeisong】中字段id',
  `shangpinxinxiid` int(10) unsigned NOT NULL COMMENT '关联表【shangpinxinxi】中字段id',
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanpeisong_dingdanxinxi_fenlei_index` (`fenlei`),
  KEY `dingdanpeisong_dingdanxinxi_dingdanpeisongid_index` (`dingdanpeisongid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='订单配送_订单信息';

-- ----------------------------
-- Records of dingdanpeisong_dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanpeisong_dingdanxinxi` VALUES ('1', '1', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 16:48:54');
INSERT INTO `dingdanpeisong_dingdanxinxi` VALUES ('2', '1', '16', '031516153733', '5', '香煎菜饺', 'upload/20210315/8775935c-33c1-484b-8fda-47cbef67ae1a.png', '25.00', '3', '75.00', '2021-03-23 16:48:54');
INSERT INTO `dingdanpeisong_dingdanxinxi` VALUES ('4', '2', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 17:24:00');
INSERT INTO `dingdanpeisong_dingdanxinxi` VALUES ('5', '2', '6', '031516079838', '6', '珍珠肉丸', 'upload/20210315/cbe2b84b-d10d-4e29-946d-6752309cc9d4.png', '15.00', '3', '45.00', '2021-03-23 17:24:00');

-- ----------------------------
-- Table structure for `dingdanqianshou`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanqianshou`;
CREATE TABLE `dingdanqianshou` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanxinxiid` int(10) unsigned NOT NULL COMMENT '订单信息id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18,2) NOT NULL COMMENT '订单金额',
  `peisongpingji` varchar(255) NOT NULL COMMENT '配送评级',
  `pingjia` text NOT NULL COMMENT '评价',
  `pingjiaren` varchar(50) NOT NULL COMMENT '评价人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanqianshou_dingdanxinxiid_index` (`dingdanxinxiid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单签收';

-- ----------------------------
-- Records of dingdanqianshou
-- ----------------------------
INSERT INTO `dingdanqianshou` VALUES ('1', '1', '032316404721', '', '183.00', '好评', '6', '001', '2021-03-23 17:00:57');
INSERT INTO `dingdanqianshou` VALUES ('2', '4', '032317214647', '', '153.00', '好评', '66666', '002', '2021-03-23 17:24:38');

-- ----------------------------
-- Table structure for `dingdanqianshou_dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanqianshou_dingdanxinxi`;
CREATE TABLE `dingdanqianshou_dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanqianshouid` int(10) unsigned NOT NULL COMMENT '关联表【dingdanqianshou】中字段id',
  `shangpinxinxiid` int(10) unsigned NOT NULL COMMENT '关联表【shangpinxinxi】中字段id',
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanqianshou_dingdanxinxi_fenlei_index` (`fenlei`),
  KEY `dingdanqianshou_dingdanxinxi_dingdanqianshouid_index` (`dingdanqianshouid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='订单签收_订单信息';

-- ----------------------------
-- Records of dingdanqianshou_dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanqianshou_dingdanxinxi` VALUES ('1', '1', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 17:00:57');
INSERT INTO `dingdanqianshou_dingdanxinxi` VALUES ('2', '1', '16', '031516153733', '5', '香煎菜饺', 'upload/20210315/8775935c-33c1-484b-8fda-47cbef67ae1a.png', '25.00', '3', '75.00', '2021-03-23 17:00:57');
INSERT INTO `dingdanqianshou_dingdanxinxi` VALUES ('4', '2', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 17:24:38');
INSERT INTO `dingdanqianshou_dingdanxinxi` VALUES ('5', '2', '6', '031516079838', '6', '珍珠肉丸', 'upload/20210315/cbe2b84b-d10d-4e29-946d-6752309cc9d4.png', '15.00', '3', '45.00', '2021-03-23 17:24:38');

-- ----------------------------
-- Table structure for `dingdanqueren`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanqueren`;
CREATE TABLE `dingdanqueren` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanxinxiid` int(10) unsigned NOT NULL COMMENT '订单信息id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18,2) NOT NULL COMMENT '订单金额',
  `guketiwen` decimal(18,2) NOT NULL COMMENT '顾客体温',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `jiedanbeizhu` text NOT NULL COMMENT '接单备注',
  `caozuoren` varchar(50) NOT NULL COMMENT '操作人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanqueren_dingdanxinxiid_index` (`dingdanxinxiid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单确认';

-- ----------------------------
-- Records of dingdanqueren
-- ----------------------------
INSERT INTO `dingdanqueren` VALUES ('1', '1', '032316404721', '', '183.00', '36.50', '001', '测试', 'admin', '2021-03-23 16:47:16');
INSERT INTO `dingdanqueren` VALUES ('2', '4', '032317214647', '', '153.00', '36.20', '002', 'cs', 'admin', '2021-03-23 17:22:46');

-- ----------------------------
-- Table structure for `dingdanqueren_dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanqueren_dingdanxinxi`;
CREATE TABLE `dingdanqueren_dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanquerenid` int(10) unsigned NOT NULL COMMENT '关联表【dingdanqueren】中字段id',
  `shangpinxinxiid` int(10) unsigned NOT NULL COMMENT '关联表【shangpinxinxi】中字段id',
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanqueren_dingdanxinxi_fenlei_index` (`fenlei`),
  KEY `dingdanqueren_dingdanxinxi_dingdanquerenid_index` (`dingdanquerenid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='订单确认_订单信息';

-- ----------------------------
-- Records of dingdanqueren_dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanqueren_dingdanxinxi` VALUES ('1', '1', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 16:47:16');
INSERT INTO `dingdanqueren_dingdanxinxi` VALUES ('2', '1', '16', '031516153733', '5', '香煎菜饺', 'upload/20210315/8775935c-33c1-484b-8fda-47cbef67ae1a.png', '25.00', '3', '75.00', '2021-03-23 16:47:16');
INSERT INTO `dingdanqueren_dingdanxinxi` VALUES ('4', '2', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 17:22:46');
INSERT INTO `dingdanqueren_dingdanxinxi` VALUES ('5', '2', '6', '031516079838', '6', '珍珠肉丸', 'upload/20210315/cbe2b84b-d10d-4e29-946d-6752309cc9d4.png', '15.00', '3', '45.00', '2021-03-23 17:22:46');

-- ----------------------------
-- Table structure for `dingdanquxiao`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanquxiao`;
CREATE TABLE `dingdanquxiao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanpeisongid` int(10) unsigned NOT NULL COMMENT '订单配送id',
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18,2) NOT NULL COMMENT '订单金额',
  `anpaipeisong` int(10) unsigned NOT NULL COMMENT '安排配送ID',
  `gonghao` varchar(50) NOT NULL COMMENT '工号',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `peisongyuantiwen` decimal(18,2) NOT NULL COMMENT '配送员体温',
  `waimaitupian` varchar(255) NOT NULL COMMENT '外卖图片',
  `peisongzhaopian` varchar(255) NOT NULL COMMENT '配送照片',
  `quxiaoyuanyin` text NOT NULL COMMENT '取消原因',
  `quxiaoren` varchar(50) NOT NULL COMMENT '取消人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanquxiao_dingdanpeisongid_index` (`dingdanpeisongid`),
  KEY `dingdanquxiao_anpaipeisong_index` (`anpaipeisong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单取消';

-- ----------------------------
-- Records of dingdanquxiao
-- ----------------------------

-- ----------------------------
-- Table structure for `dingdanquxiao_dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanquxiao_dingdanxinxi`;
CREATE TABLE `dingdanquxiao_dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanquxiaoid` int(10) unsigned NOT NULL COMMENT '关联表【dingdanquxiao】中字段id',
  `shangpinxinxiid` int(10) unsigned NOT NULL COMMENT '关联表【shangpinxinxi】中字段id',
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanquxiao_dingdanxinxi_fenlei_index` (`fenlei`),
  KEY `dingdanquxiao_dingdanxinxi_dingdanquxiaoid_index` (`dingdanquxiaoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单取消_订单信息';

-- ----------------------------
-- Records of dingdanquxiao_dingdanxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for `dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE `dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanbianhao` varchar(50) NOT NULL COMMENT '订单编号',
  `dingdanxinxi` text NOT NULL COMMENT '订单信息',
  `dingdanjine` decimal(18,2) NOT NULL COMMENT '订单金额',
  `shoucanren` varchar(50) NOT NULL COMMENT '收餐人',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `shoucandizhi` varchar(255) NOT NULL COMMENT '收餐地址',
  `cuncanweizhi` varchar(255) NOT NULL COMMENT '存餐位置',
  `guketiwen` decimal(18,2) NOT NULL COMMENT '顾客体温',
  `shifougeli` varchar(255) NOT NULL COMMENT '是否隔离',
  `beizhu` text NOT NULL COMMENT '备注',
  `dingdanzhuangtai` varchar(255) NOT NULL COMMENT '订单状态',
  `xiadanren` varchar(50) NOT NULL COMMENT '下单人',
  `iszf` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否支付',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='订单信息';

-- ----------------------------
-- Records of dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanxinxi` VALUES ('1', '032316404721', '', '183.00', '张三', '13666666666', 'XXX路XXX号', '门口取餐柜A05', '36.50', '否', '', '已签收', '001', '是', '2021-03-23 16:41:34');
INSERT INTO `dingdanxinxi` VALUES ('2', '032317131149', '', '108.00', '张三', '13333333333', 'XX路XX号', '门口', '36.20', '否', '', '已支付', '001', '是', '2021-03-23 17:13:56');
INSERT INTO `dingdanxinxi` VALUES ('3', '032317143762', '', '108.00', '张三', '12222222222', 'XXXX', 'XXXXX', '3602.00', '否', '', '已支付', '001', '是', '2021-03-23 17:15:04');
INSERT INTO `dingdanxinxi` VALUES ('4', '032317214647', '', '153.00', '张三', '13666666666', 'XXX路XXX号', '门口A柜501', '36.20', '否', '测试', '已签收', '002', '是', '2021-03-23 17:22:13');

-- ----------------------------
-- Table structure for `dingdanxinxi_dingdanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanxinxi_dingdanxinxi`;
CREATE TABLE `dingdanxinxi_dingdanxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dingdanxinxiid` int(10) unsigned NOT NULL COMMENT '关联表【dingdanxinxi】中字段id',
  `shangpinxinxiid` int(10) unsigned NOT NULL COMMENT '关联表【shangpinxinxi】中字段id',
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `dingdanxinxi_dingdanxinxi_fenlei_index` (`fenlei`),
  KEY `dingdanxinxi_dingdanxinxi_dingdanxinxiid_index` (`dingdanxinxiid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='订单信息_订单信息';

-- ----------------------------
-- Records of dingdanxinxi_dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanxinxi_dingdanxinxi` VALUES ('1', '1', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 16:41:34');
INSERT INTO `dingdanxinxi_dingdanxinxi` VALUES ('2', '1', '16', '031516153733', '5', '香煎菜饺', 'upload/20210315/8775935c-33c1-484b-8fda-47cbef67ae1a.png', '25.00', '3', '75.00', '2021-03-23 16:41:34');
INSERT INTO `dingdanxinxi_dingdanxinxi` VALUES ('4', '2', '12', '031516133000', '6', '海苔肉松小贝', 'upload/20210315/5ae78e68-2798-4f71-8a49-f2fb05bf99f3.png', '36.00', '3', '108.00', '2021-03-23 17:13:56');
INSERT INTO `dingdanxinxi_dingdanxinxi` VALUES ('5', '3', '12', '031516133000', '6', '海苔肉松小贝', 'upload/20210315/5ae78e68-2798-4f71-8a49-f2fb05bf99f3.png', '36.00', '3', '108.00', '2021-03-23 17:15:04');
INSERT INTO `dingdanxinxi_dingdanxinxi` VALUES ('6', '4', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', '2021-03-23 17:22:13');
INSERT INTO `dingdanxinxi_dingdanxinxi` VALUES ('7', '4', '6', '031516079838', '6', '珍珠肉丸', 'upload/20210315/cbe2b84b-d10d-4e29-946d-6752309cc9d4.png', '15.00', '3', '45.00', '2021-03-23 17:22:13');

-- ----------------------------
-- Table structure for `gouwuche`
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shangpinxinxiid` int(10) unsigned NOT NULL COMMENT '商品信息id',
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `xiaoji` decimal(18,2) NOT NULL COMMENT '小计',
  `goumairen` varchar(50) NOT NULL COMMENT '购买人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `gouwuche_shangpinxinxiid_index` (`shangpinxinxiid`),
  KEY `gouwuche_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of gouwuche
-- ----------------------------
INSERT INTO `gouwuche` VALUES ('1', '14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '108.00', 'admin', '2021-03-15 16:35:05');
INSERT INTO `gouwuche` VALUES ('2', '15', '031516133000', '5', '菠菜拌粉丝', 'upload/20210315/5bb0930e-2605-4f10-8c6d-214eac51c6a9.png', '15.00', '3', '45.00', 'admin', '2021-03-15 16:35:13');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `liuyanneirong` text NOT NULL COMMENT '留言内容',
  `liuyanren` varchar(50) NOT NULL COMMENT '留言人',
  `huifuneirong` text NOT NULL COMMENT '回复内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('1', '小明', '13666666666', '测试测试', '002', '', '2021-03-23 17:21:38');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '3243243', 'upload/20210315/64e48b26-69f7-4a1f-95ba-85bca2a8427c.png', '#', '2021-03-15 16:19:20');
INSERT INTO `lunbotu` VALUES ('2', '787568', 'upload/20210315/5c8ff141-5f6d-422c-a23e-844039915a11.jpg', '#', '2021-03-15 16:19:28');

-- ----------------------------
-- Table structure for `peisongyuan`
-- ----------------------------
DROP TABLE IF EXISTS `peisongyuan`;
CREATE TABLE `peisongyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) NOT NULL COMMENT '工号',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `zhaopian` varchar(255) NOT NULL COMMENT '照片',
  `nianling` varchar(50) NOT NULL COMMENT '年龄',
  `peisongyuantiwen` decimal(18,2) NOT NULL COMMENT '配送员体温',
  `zhuangtai` varchar(255) NOT NULL COMMENT '状态',
  `lianxidianhua` varchar(50) NOT NULL COMMENT '联系电话',
  `beizhu` text NOT NULL COMMENT '备注',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配送员';

-- ----------------------------
-- Records of peisongyuan
-- ----------------------------
INSERT INTO `peisongyuan` VALUES ('1', '100', '100', '小明', '男', 'upload/20210315/6ac95dc6-d6ab-44b3-96e7-ce0d1814b2a1.png', '22', '36.30', '体温正常', '13666666666', '', '2021-03-15 15:59:09');
INSERT INTO `peisongyuan` VALUES ('2', '200', '200', '小红', '女', 'upload/20210315/761c9b66-4d5c-48f3-b5ae-c18a0a882936.png', '23', '36.50', '体温正常', '13666666666', '', '2021-03-15 15:59:45');
INSERT INTO `peisongyuan` VALUES ('3', '300', '300', '小红', '男', 'upload/20210315/d1ded624-a704-4434-a2ac-a2b83d13b813.png', '20', '36.50', '体温正常', '13333333333', '', '2021-03-15 16:00:10');

-- ----------------------------
-- Table structure for `shangpinfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES ('1', '热菜', '2021-03-15 16:02:23');
INSERT INTO `shangpinfenlei` VALUES ('2', '凉菜', '2021-03-15 16:02:36');
INSERT INTO `shangpinfenlei` VALUES ('3', '汤品', '2021-03-15 16:02:48');
INSERT INTO `shangpinfenlei` VALUES ('4', '其它', '2021-03-15 16:02:51');
INSERT INTO `shangpinfenlei` VALUES ('5', '推荐', '2021-03-15 16:11:44');
INSERT INTO `shangpinfenlei` VALUES ('6', '热销', '2021-03-15 16:11:53');

-- ----------------------------
-- Table structure for `shangpinxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shangpinbianhao` varchar(50) NOT NULL COMMENT '商品编号',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `shangpinmingcheng` varchar(255) NOT NULL COMMENT '商品名称',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jiage` decimal(18,2) NOT NULL COMMENT '价格',
  `xiaoliang` int(11) NOT NULL COMMENT '销量',
  `shangpinxiangqing` longtext NOT NULL COMMENT '商品详情',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `shangpinxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('1', '031516027132', '1', '鱼香茄子煲', 'upload/20210315/22082625-adeb-4925-b419-291ce67d218f.png', '68.00', '0', '', '2021-03-15 16:06:10');
INSERT INTO `shangpinxinxi` VALUES ('2', '031516027132', '2', '腌蒜苔', 'upload/20210315/4556d740-b695-46b5-8a92-19b8244be9ce.png', '23.00', '0', '', '2021-03-15 16:06:40');
INSERT INTO `shangpinxinxi` VALUES ('3', '031516027132', '6', '冬瓜盅', 'upload/20210315/9a708949-769c-43e1-99f3-8bcdb9f53e8c.png', '68.00', '0', '', '2021-03-15 16:06:59');
INSERT INTO `shangpinxinxi` VALUES ('4', '031516075769', '1', '青豆炒鱿鱼', 'upload/20210315/ef66206f-049f-49cb-85eb-9e8974776825.png', '36.00', '0', '', '2021-03-15 16:07:21');
INSERT INTO `shangpinxinxi` VALUES ('5', '031516071171', '1', '老姜炒里脊肉', 'upload/20210315/84ec4c9c-a52a-4a99-97bb-89ef489be52b.png', '68.00', '0', '', '2021-03-15 16:07:52');
INSERT INTO `shangpinxinxi` VALUES ('6', '031516079838', '6', '珍珠肉丸', 'upload/20210315/cbe2b84b-d10d-4e29-946d-6752309cc9d4.png', '15.00', '3', '', '2021-03-15 16:09:19');
INSERT INTO `shangpinxinxi` VALUES ('7', '031516079838', '3', '雪蛤排骨汤', 'upload/20210315/9e8ea2cd-c066-4af1-9da2-4bed4246ab20.png', '68.00', '0', '', '2021-03-15 16:09:49');
INSERT INTO `shangpinxinxi` VALUES ('8', '031516079838', '1', '油豆腐烧猪蹄', 'upload/20210315/8234d322-938a-4cd6-8524-8910777aa684.png', '68.00', '0', '', '2021-03-15 16:10:15');
INSERT INTO `shangpinxinxi` VALUES ('9', '03151610676', '2', '四喜烤麸', 'upload/20210315/dc12a643-340c-4ba6-930c-0a49501b8f1d.png', '12.00', '0', '', '2021-03-15 16:10:39');
INSERT INTO `shangpinxinxi` VALUES ('10', '03151610676', '3', '酸梅泥猛鱼', 'upload/20210315/76407d84-bc60-4cdd-8e05-cce1624e7834.png', '68.00', '0', '', '2021-03-15 16:11:07');
INSERT INTO `shangpinxinxi` VALUES ('11', '031516133000', '5', '青椒炒鸡蛋', 'upload/20210315/6dda4cb5-bb91-452b-ac0b-ad651527fa24.png', '25.00', '0', '', '2021-03-15 16:13:30');
INSERT INTO `shangpinxinxi` VALUES ('12', '031516133000', '6', '海苔肉松小贝', 'upload/20210315/5ae78e68-2798-4f71-8a49-f2fb05bf99f3.png', '36.00', '3', '', '2021-03-15 16:13:57');
INSERT INTO `shangpinxinxi` VALUES ('13', '031516133000', '5', '香辣肉丝炒豆腐', 'upload/20210315/4a8e2e49-f158-4ff4-a7b9-e65655abb38b.png', '25.00', '0', '', '2021-03-15 16:14:33');
INSERT INTO `shangpinxinxi` VALUES ('14', '031516133000', '6', '自制牛肉干', 'upload/20210315/c3db1690-1773-47d9-ba91-1cc70c18af5f.png', '36.00', '3', '', '2021-03-15 16:15:08');
INSERT INTO `shangpinxinxi` VALUES ('15', '031516133000', '5', '菠菜拌粉丝', 'upload/20210315/5bb0930e-2605-4f10-8c6d-214eac51c6a9.png', '15.00', '0', '', '2021-03-15 16:15:43');
INSERT INTO `shangpinxinxi` VALUES ('16', '031516153733', '5', '香煎菜饺', 'upload/20210315/8775935c-33c1-484b-8fda-47cbef67ae1a.png', '25.00', '0', '', '2021-03-15 16:16:10');

-- ----------------------------
-- Table structure for `shoucangjilu`
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '收藏用户',
  `xwid` int(10) unsigned NOT NULL COMMENT '对应模块id',
  `biao` varchar(255) NOT NULL COMMENT '收藏得模块',
  `biaoti` varchar(255) NOT NULL COMMENT '显示的标题',
  `url` varchar(512) NOT NULL COMMENT '收藏URL',
  `ziduan` varchar(255) NOT NULL COMMENT '对应模块字段',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收藏记录';

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES ('1', 'admin', '15', 'shangpinxinxi', '菠菜拌粉丝', 'http://192.168.0.123:8080/?', 'shangpinmingcheng', '2021-03-15 16:35:10');
INSERT INTO `shoucangjilu` VALUES ('2', '002', '6', 'shangpinxinxi', '珍珠肉丸', 'http://192.168.0.123:8080/?', 'shangpinmingcheng', '2021-03-23 17:21:23');

-- ----------------------------
-- Table structure for `tiwenjiance`
-- ----------------------------
DROP TABLE IF EXISTS `tiwenjiance`;
CREATE TABLE `tiwenjiance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peisongyuanid` int(10) unsigned NOT NULL COMMENT '配送员id',
  `gonghao` varchar(50) NOT NULL COMMENT '工号',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `nianling` varchar(50) NOT NULL COMMENT '年龄',
  `jiancetiwen` decimal(18,2) NOT NULL COMMENT '检测体温',
  `zhuangtai` varchar(255) NOT NULL COMMENT '状态',
  `beizhu` text NOT NULL COMMENT '备注',
  `jianceren` varchar(50) NOT NULL COMMENT '检测人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `tiwenjiance_peisongyuanid_index` (`peisongyuanid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='体温检测';

-- ----------------------------
-- Records of tiwenjiance
-- ----------------------------
INSERT INTO `tiwenjiance` VALUES ('1', '3', '300', '小红', '男', '20', '36.20', '体温正常', '测试', 'admin', '2021-03-15 16:00:25');
INSERT INTO `tiwenjiance` VALUES ('2', '2', '200', '小红', '女', '23', '36.50', '体温正常', '', 'admin', '2021-03-15 16:00:35');
INSERT INTO `tiwenjiance` VALUES ('3', '1', '100', '小明', '男', '22', '36.30', '体温正常', '', 'admin', '2021-03-15 16:00:49');
INSERT INTO `tiwenjiance` VALUES ('4', '3', '300', '小红', '男', '20', '36.50', '体温正常', 'cs', 'admin', '2021-03-23 17:23:23');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `token` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'token值',
  `session` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `cx` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `valueid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `token_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'token有效期',
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('EXWNGF1DNLM7BIH8HSBQVRX6Q4RGGGDB', '{\"addtime\":\"2021-03-11 23:23:40.0\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-03-25 16:34:54');
INSERT INTO `token` VALUES ('1GZY9H6KLVXTAQZHUUGUXGSTRSYSPXHW', '{\"addtime\":\"2021-03-15 16:35:38.0\",\"id\":1,\"mima\":\"001\",\"shenfenzheng\":\"\",\"shouji\":\"13666666666\",\"touxiang\":\"\",\"xingbie\":\"男\",\"xingming\":\"小明\",\"yonghuming\":\"001\",\"youxiang\":\"\"}', '用户', '用户', '001', '1', '2021-04-02 16:43:42');
INSERT INTO `token` VALUES ('M6IH9Q8FENCDH7C3LOI8564BIAOQ67CW', '{\"addtime\":\"2021-03-11 23:23:40.0\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-04-02 16:47:42');
INSERT INTO `token` VALUES ('4G1S33Q324QI8WOSBXQXFIFEH8RGWKYV', '{\"mima\":\"200\",\"xingbie\":\"女\",\"lianxidianhua\":\"13666666666\",\"nianling\":\"23\",\"tiwenjianceCount\":1,\"peisongyuantiwen\":36.5,\"zhaopian\":\"upload/20210315/761c9b66-4d5c-48f3-b5ae-c18a0a882936.png\",\"login\":\"配送员\",\"xingming\":\"小红\",\"cx\":\"配送员\",\"addtime\":\"2021-03-15 15:59:45.0\",\"beizhu\":\"\",\"id\":2,\"zhuangtai\":\"体温正常\",\"gonghao\":\"200\",\"username\":\"200\"}', '配送员', '配送员', '200', '2', '2021-04-02 16:59:15');
INSERT INTO `token` VALUES ('9GY17NPPIB6GEWR1QSHUGKEDGFYDXSUY', '{\"addtime\":\"2021-03-15 15:59:09.0\",\"beizhu\":\"\",\"gonghao\":\"100\",\"id\":1,\"lianxidianhua\":\"13666666666\",\"mima\":\"100\",\"nianling\":\"22\",\"peisongyuantiwen\":36.3,\"tiwenjianceCount\":1,\"xingbie\":\"男\",\"xingming\":\"小明\",\"zhaopian\":\"upload/20210315/6ac95dc6-d6ab-44b3-96e7-ce0d1814b2a1.png\",\"zhuangtai\":\"体温正常\"}', '配送员', '配送员', '100', '1', '2021-04-02 17:00:14');
INSERT INTO `token` VALUES ('68GX2979YZ449PUP3W63BRAPRFFBQ3TK', '{\"cx\":\"管理员\",\"addtime\":\"2021-03-11 23:23:40.0\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-04-02 17:00:22');
INSERT INTO `token` VALUES ('E7B1HHBWVHHWM79F4P225R61GANNWUOT', '{\"touxiang\":\"\",\"mima\":\"001\",\"xingbie\":\"男\",\"login\":\"用户\",\"xingming\":\"小明\",\"yonghuming\":\"001\",\"shouji\":\"13666666666\",\"cx\":\"用户\",\"addtime\":\"2021-03-15 16:35:38.0\",\"id\":1,\"shenfenzheng\":\"\",\"youxiang\":\"\",\"username\":\"001\"}', '用户', '用户', '001', '1', '2021-04-02 17:00:42');
INSERT INTO `token` VALUES ('7SMCEAOYX0ZAKD1RR79ULG368H75IFSK', '{\"addtime\":\"2021-03-15 16:35:38.0\",\"id\":1,\"mima\":\"001\",\"shenfenzheng\":\"\",\"shouji\":\"13666666666\",\"touxiang\":\"\",\"xingbie\":\"男\",\"xingming\":\"小明\",\"yonghuming\":\"001\",\"youxiang\":\"\"}', '用户', '用户', '001', '1', '2021-04-02 17:18:51');
INSERT INTO `token` VALUES ('ZIDV9M2XXGGP201L20G4S9CT3WVIG6PY', '{\"touxiang\":\"\",\"mima\":\"002\",\"xingbie\":\"男\",\"login\":\"用户\",\"xingming\":\"小明\",\"yonghuming\":\"002\",\"shouji\":\"1366666666\",\"cx\":\"用户\",\"addtime\":\"2021-03-23 17:20:51.0\",\"id\":2,\"shenfenzheng\":\"\",\"youxiang\":\"\",\"username\":\"002\"}', '用户', '用户', '002', '2', '2021-04-02 17:20:59');
INSERT INTO `token` VALUES ('0734YVC5GS99G5X0X5IIFMK4SV6TOEUG', '{\"cx\":\"管理员\",\"addtime\":\"2021-03-11 23:23:40.0\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-04-02 17:22:35');
INSERT INTO `token` VALUES ('G8UBH24RATHORBGRWE35LFIL193N7LR6', '{\"touxiang\":\"\",\"mima\":\"002\",\"xingbie\":\"男\",\"login\":\"用户\",\"xingming\":\"小明\",\"yonghuming\":\"002\",\"shouji\":\"1366666666\",\"cx\":\"用户\",\"addtime\":\"2021-03-23 17:20:51.0\",\"id\":2,\"shenfenzheng\":\"\",\"youxiang\":\"\",\"username\":\"002\"}', '用户', '用户', '002', '2', '2021-04-02 17:24:15');
INSERT INTO `token` VALUES ('SPQS4I086GQXFHR3OB0OSWAICCG9K3VO', '{\"mima\":\"300\",\"xingbie\":\"男\",\"lianxidianhua\":\"13333333333\",\"nianling\":\"20\",\"tiwenjianceCount\":2,\"peisongyuantiwen\":36.5,\"zhaopian\":\"upload/20210315/d1ded624-a704-4434-a2ac-a2b83d13b813.png\",\"login\":\"配送员\",\"xingming\":\"小红\",\"cx\":\"配送员\",\"addtime\":\"2021-03-15 16:00:10.0\",\"beizhu\":\"\",\"id\":3,\"zhuangtai\":\"体温正常\",\"gonghao\":\"300\",\"username\":\"300\"}', '配送员', '配送员', '300', '3', '2021-04-02 17:25:06');
INSERT INTO `token` VALUES ('NUNKCG2VE0MDTVIHPRTGACCPDI425HCZ', '{\"addtime\":\"2021-03-11 23:23:40.0\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2021-04-02 17:26:29');

-- ----------------------------
-- Table structure for `xinwenfenlei`
-- ----------------------------
DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE `xinwenfenlei` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(50) NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻分类';

-- ----------------------------
-- Records of xinwenfenlei
-- ----------------------------
INSERT INTO `xinwenfenlei` VALUES ('1', '站内新闻', '2021-03-11 23:31:45');
INSERT INTO `xinwenfenlei` VALUES ('2', '行业资讯', '2021-03-11 23:35:40');

-- ----------------------------
-- Table structure for `xinwenxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE `xinwenxinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) NOT NULL COMMENT '标题',
  `fenlei` int(10) unsigned NOT NULL COMMENT '分类',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tianjiaren` varchar(50) NOT NULL COMMENT '添加人',
  `dianjilv` int(11) NOT NULL COMMENT '点击率',
  `neirong` longtext NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `xinwenxinxi_fenlei_index` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

-- ----------------------------
-- Records of xinwenxinxi
-- ----------------------------
INSERT INTO `xinwenxinxi` VALUES ('1', '降血压食物推荐，从日常开始改善！', '2', 'upload/20210315/35fc505f-a7b5-4f43-a80b-3cea271ea3f9.png', 'admin', '2', '<p><strong>1、茄子</strong></p>\n<p>研究表明，茄子的紫色皮中含有丰富的维生素E和P，是其他蔬菜无法比的。其中维生素P，可以增强毛细血管弹性，并且可以改善微循环，对高血压、动脉硬化及坏血病者，有一定的疗效。而茄子纤维中的皂草甙，具有降低胆固醇的功效。所以，茄子对于高血压、动脉硬化的患者来说是食疗佳品。</p>\n<p><strong>2、红萝卜</strong></p>\n<p>红萝卜里包含槲皮素、山萘酚等其他物质，此类物质与生物类黄酮(维他命P)的功效有关，具有增进维他命C吸收与改善微血管的作用，同时还能够增多冠状动脉血流量，降低血脂，增进肾上腺素合成，所以有降低血压、强心等效果。</p>\n<p><strong>3、秋葵</strong></p>\n<p>秋葵含有高量的粘液，粘液中含有丰富的可溶性膳食纤维，如果胶、阿拉伯胶、羧甲基纤维素等，可阻止肠道碳水化合物的消化，进而降低葡萄糖的吸收，推测可降低饭后血糖。秋葵籽含有约大量人体所需的必需胺基酸和不饱和脂肪酸，研究证实黄秋葵籽及荚皮均有抑制&alpha;-glucosidasec和&alpha;-amylase的能力，可延缓碳水化合物的消化，帮助饭后血糖的控制，其中荚皮的抑制能力又比籽更好。</p>\n<p><a title=\"糖醋红萝卜\" href=\"https://home.meishichina.com/recipe-457950.html\" target=\"_blank\" rel=\"noopener\"><img title=\"糖醋红萝卜\" src=\"./upload/1615796584410.png\" width=\"500\" height=\"500\" /></a></p>', '2021-03-15 16:23:04');
INSERT INTO `xinwenxinxi` VALUES ('2', '日常按摩这些部位，养生更养身', '1', 'upload/20210315/ac7a7f79-0079-4a39-a0ac-d344a592ce70.png', 'admin', '4', '<p>很多的腋窝被触摸之后，会自然的大笑。这是因为该部位可是神经、淋巴、血管最多最丰富的地方。笑能够促使器官都得到运动，从而促进血液循环，让各大器官能够得到更多的养分和氧气的交换，促使人的大脑、心脏、肺部都受益匪浅。</p>\n<p>平日里让家人或是另一半触摸你的腋窝，让自己多笑一笑。每次触摸腋窝后，想笑的时候忍一忍，直到实在忍不住了以后停止。</p>\n<p><strong>部位二、前胸</strong></p>\n<p>前胸分布胸腺，胸腺分泌出来的物质，能够监视并且消灭身体内的变异细胞，而且还具有抗感染和抗病的能力，对延缓人体衰老有一定的作用。对此，建议每天坚持按摩前胸，帮助激活胸腺，起到防病延年的作用。</p>\n<p>一般来说用你的手掌上下摩擦你的前胸，摩擦一百到两百次就差不多了。</p>\n<p><strong>部位三、脊柱</strong></p>\n<p>脊柱两侧分布的经络，与人体的五脏六腑有极为密切的关系，经常按摩脊柱，能够疏通经络，促使气血运行、血脉畅通，从而滋养全身的器官。</p>\n<p>注意了，脊柱可是很重要的地方，不能自己随意按摩，想要按摩的话，要到中医院的推拿科进行按摩。因为非正规的诊所或是养生店，无法确保按摩师的资质，若是对方不够专业的话，被按摩之后，也许会造成极大的损伤。</p>\n<p><strong>部位四、脚底</strong></p>\n<p>脚底不仅穴位多，而切经络也多。还有人科学家认为，脚底上分布的末梢神经有成千上万，它们与大脑、心脏联系十分的密切。平日里多按摩脚底，可以更好的将远端的血推向心脏和全身，调节体内阴阳平衡，起到防治疾病，健身益寿的功效。</p>\n<p>其中，按摩脚底方法有挺多的，比如说经常弯弯脚趾，踩鹅卵石，穿着袜子在指压板上行走。还可以按压脚心等等，都能够起到按摩脚底的效果。</p>\n<p>相关阅读：<a title=\"冬季养生\" href=\"https://www.meishichina.com/mofang/fanghanyuhanquhanshiwu/\" target=\"_self\">寒冬养生食疗方大全</a></p>', '2021-03-15 16:23:28');
INSERT INTO `xinwenxinxi` VALUES ('3', '脑溢血原因，冬天要更注意', '1', 'upload/20210315/6ef67c3b-6130-41df-bccb-31bde0c43721.png', 'admin', '3', '<p><strong>1、寒冷的天气</strong></p>\n<p>现在已经到了冬天，寒冷的天气很有可能会影响到患者体内神经的内分泌代谢出现异常的情况，尤其是在昼夜温差比较大的季节里面，这种温差很有可能会导致患者血液粘稠度增加，患者的毛细血管也会变得更加的脆弱，血压会立刻的上升，很有可能就会造成血管的破裂引起突发的脑溢血。</p>\n<p><strong>2、不良的生活习惯</strong></p>\n<p>过度的劳累，长期的熬夜习惯会导致我们体内的内分必出现失调的情况，血液的浓稠度也会出现增高。很有可能就会引起突发脑溢血。</p>\n<p><strong>3、情绪的起伏过大</strong></p>\n<p>现在我们都知道每个人的生活以及工作的压力都非常的大，常常会出现不安以及狂躁的情绪。如果你长期处于这一种负面的情绪当中，找不到一个发泄的点，很有可能就会导致内分泌出现失调的情况，血液的流通也会非常的快，那么引起突发脑溢血的几率就会变高。</p>\n<p>脑溢血这一个治病值得每一个人去重视，那么我们在日常生活中应该如何预防脑溢血的出现呢？</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\"><a title=\"野芹菜春卷\" href=\"https://home.meishichina.com/recipe-258331.html\" target=\"_blank\" rel=\"noopener\"><img title=\"野芹菜春卷\" src=\"./upload/1615796636298.png\" width=\"500\" height=\"500\" /></a></p>', '2021-03-15 16:23:56');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL COMMENT '用户名',
  `mima` varchar(50) NOT NULL COMMENT '密码',
  `xingming` varchar(50) NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL COMMENT '手机',
  `youxiang` varchar(50) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(50) NOT NULL COMMENT '身份证',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '001', '001', '小明', '男', '13666666666', '', '', '', '2021-03-15 16:35:38');
INSERT INTO `yonghu` VALUES ('2', '002', '002', '小明', '男', '1366666666', '', '', '', '2021-03-23 17:20:51');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) NOT NULL COMMENT '网站名称',
  `wangzhi` varchar(50) NOT NULL COMMENT '网址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com', '2021-03-15 15:11:37');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.cn', '2021-03-15 15:11:37');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com', '2021-03-15 15:11:37');
INSERT INTO `youqinglianjie` VALUES ('4', 'QQ', 'http://www.qq.com', '2021-03-15 15:11:37');
INSERT INTO `youqinglianjie` VALUES ('5', '网易', 'http://www.163.com', '2021-03-15 15:11:37');
