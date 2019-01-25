/*
Navicat MySQL Data Transfer

Source Server         : bbb
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : rentcar

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-01-25 10:47:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('402881844d314405014d3148b1650001', '李四', 'admin', 'admin', '121313212');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('402881e5541a598f01541a6112fa0001', '111', '<p>在此添加内容1111</p>\r\n', '2018-04-22');
INSERT INTO `article` VALUES ('402881e5541f826d01541f8419a30002', '123123123', '<p>在此添加内容123123123</p>\r\n', '2018-04-22');
INSERT INTO `article` VALUES ('579a90649e29484da6df401475e65254', '擦擦擦', '的点点滴滴343434', '2019-01-23');
INSERT INTO `article` VALUES ('8a80c0a667e84e300167e850272f0001', 'ddbd', '<p>本公告发给你111111</p>', '2018-12-26');
INSERT INTO `article` VALUES ('8a80c0cc68279ea5016827bd20f20001', '休息休息', '<p><strong>在此添加内容regegegtegteg</strong></p>\r\n', '2019-01-07');
INSERT INTO `article` VALUES ('8a80c0cc68279ea5016827bd20f20002', '对对对', '此次陈小春V型从v', '2019-2-1');
INSERT INTO `article` VALUES ('e68bfca4d0bc44378be741cb691ca412', '当然222', '放大DVD单个', '2019-01-23');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brandid` varchar(255) NOT NULL,
  `brandname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('402881e5541a0c1301541a0c55650001', '凯迪拉克', 'upfiles/0b4c1af3821049f5bb5990bd1c6fa717.jpg');
INSERT INTO `brand` VALUES ('402881e5541a0c1301541a0c7dbe0002', '宝马', 'upfiles/20160415211142.jpg');
INSERT INTO `brand` VALUES ('402881e5541a0c1301541a0ca8ed0003', '迈巴赫', 'upfiles/20160415211153.jpg');
INSERT INTO `brand` VALUES ('402881e5541a0c1301541a0d9bcc0004', '福特', 'upfiles/20160415211255.jpg');
INSERT INTO `brand` VALUES ('402881e5541f826d01541f84ff5c0005', '大众', 'upfiles/20160416224124.jpg');
INSERT INTO `brand` VALUES ('402881e5541f826d01541f853ebc0006', '中华', 'upfiles/20160416224141.jpg');

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `carsid` varchar(255) NOT NULL,
  `carno` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `brandid` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `colour` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `displacement` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`carsid`),
  KEY `FK2E7B1FF90CA90E` (`brandid`),
  KEY `FK2E7B1FFD1D449A` (`cateid`),
  CONSTRAINT `FK2E7B1FF90CA90E` FOREIGN KEY (`brandid`) REFERENCES `brand` (`brandid`),
  CONSTRAINT `FK2E7B1FFD1D449A` FOREIGN KEY (`cateid`) REFERENCES `cate` (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a1896c20005', '辽A11111', 'upfiles/20160415212421.jpg', '402881e55419fc9f015419ffb7860001', '402881e5541a0c1301541a0c55650001', '150', '蓝色', '95成新', '2.0T', '是', '是', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a1e62f60006', '辽A11112', 'upfiles/20160415213101.jpg', '402881e55419fc9f015419ffc4ee0002', '402881e5541a0c1301541a0c7dbe0002', '150', '蓝色', '95成新', '2.0T', '是', '否', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a1eb46a0007', '辽A11113', 'upfiles/20160415213128.jpg', '402881e55419fc9f015419ffd20f0003', '402881e5541a0c1301541a0ca8ed0003', '150', '蓝色', '95成新', '2.0T', '否', '是', '<p>请输入商品介绍</p>\r\n\r\n<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a27966a0008', '辽A11114', 'upfiles/20160415213152.jpg', '402881e55419fc9f015419ffc4ee0002', '402881e5541a0c1301541a0c7dbe0002', '150', '蓝色', '95成新', '2.0T', '是', '否', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a280e970009', '辽A11115', 'upfiles/20160415214150.jpg', '402881e55419fc9f015419ffdf280004', '402881e5541a0c1301541a0ca8ed0003', '150', '蓝色', '95成新', '2.0T', '是', '是', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a286dd4000a', '辽A11116', 'upfiles/20160415214205.jpg', '402881e55419fc9f015419ffc4ee0002', '402881e5541a0c1301541a0d9bcc0004', '150', '蓝色', '95成新', '2.0T', '否', '是', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a28bbc3000b', '辽A11117', 'upfiles/20160415214226.jpg', '402881e55419fc9f015419ffd20f0003', '402881e5541a0c1301541a0c55650001', '150', '蓝色', '95成新', '2.0T', '否', '否', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a296338000c', '辽A11118', 'upfiles/20160415214310.jpg', '402881e55419fc9f015419ffb7860001', '402881e5541a0c1301541a0c7dbe0002', '150', '蓝色', '95成新', '2.0T', '否', '是', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a29cd15000d', '辽A11119', 'upfiles/20160415214337.jpg', '402881e55419fc9f015419ffb7860001', '402881e5541a0c1301541a0ca8ed0003', '150', '蓝色', '95成新', '2.0T', '是', '是', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a2a3859000e', '辽A11120', 'upfiles/20160415214401.jpg', '402881e55419fc9f015419ffdf280004', '402881e5541a0c1301541a0c55650001', '150', '蓝色', '95成新', '2.0T', '否', '否', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a2aab4d000f', '辽A11121', 'upfiles/20160415214430.jpg', '402881e55419fc9f015419ffb7860001', '402881e5541a0c1301541a0ca8ed0003', '150', '蓝色', '95成新', '2.0T', '否', '是', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a2b02f30010', '辽A11122', 'upfiles/20160415214452.jpg', '402881e55419fc9f015419ffc4ee0002', '402881e5541a0c1301541a0ca8ed0003', '150', '蓝色', '95成新', '2.0T', '是', '否', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541a0c1301541a2b57920011', '辽A11123', 'upfiles/20160415214515.jpg', '402881e55419fc9f015419ffd20f0003', '402881e5541a0c1301541a0d9bcc0004', '150', '蓝色', '95成新', '2.0T', '是', '是', '<p>根据快易租在线租车系统任务需求将系统划分为前台和后台两大模块，其中系统用户又分为不同权限的用户：游客、会员、管理员三种权限用户。</p>\r\n\r\n<p>(1) 游客的主要功能需求游客权限只限于前台操作，可以浏览租赁车辆信息，例如：车辆的座位数、日租金额、月租金额、租车押金等车辆信息；游客可以进行会员注册，填写信息有：用户名(必填项)、密码、邮箱、联系方式等；游客可以进行匿名留言，留言后管理员在后台可以看到就可以处理用户的留言，如图4-1所示：</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541f826d01541f8607280007', '辽A11311', 'upfiles/20160416224220.jpg', '402881e5541f826d01541f846ba80003', '402881e5541f826d01541f84ff5c0005', '150', '蓝色', '95成新', '2.0T', '是', '是', '<p>请输入商品介绍123123123</p>\r\n');
INSERT INTO `cars` VALUES ('402881e5541f826d01541f8696e80008', '辽A11321', 'upfiles/20160416224258.jpg', '402881e5541f826d01541f8479160004', '402881e5541f826d01541f853ebc0006', '150', '蓝色', '95成新', '2.0T', '否', '否', '<p>请输入商品介绍123123123</p>\r\n');
INSERT INTO `cars` VALUES ('6304dd4f', '川S10089', 'upfiles/3c320f9b.jpg', '402881e5541f826d01541f846ba80003', '402881e5541a0c1301541a0c7dbe0002', '120', '蓝色', '全新', '1.8T', '否', '否', '哒哒哒哒哒哒');
INSERT INTO `cars` VALUES ('e267bd20', '川S10088', 'upfiles/d135011f.jpg', '402881e5541f826d01541f846ba80003', '402881e5541a0c1301541a0ca8ed0003', '1000', '红色', '95新', '2.0T', '否', '否', '哒哒哒哒哒哒');

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `cateid` varchar(255) NOT NULL,
  `catename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('402881e55419fc9f015419ffb7860001', '小型轿车');
INSERT INTO `cate` VALUES ('402881e55419fc9f015419ffc4ee0002', '中型轿车');
INSERT INTO `cate` VALUES ('402881e55419fc9f015419ffd20f0003', '城市SUV');
INSERT INTO `cate` VALUES ('402881e55419fc9f015419ffdf280004', '越野车');
INSERT INTO `cate` VALUES ('402881e5541f826d01541f846ba80003', '微型车');
INSERT INTO `cate` VALUES ('402881e5541f826d01541f8479160004', '休旅车');
INSERT INTO `cate` VALUES ('402881e5541f826d01541f8479160005', '大型货车');
INSERT INTO `cate` VALUES ('402881e5541f826d01541f8479160006', '小型货车');
INSERT INTO `cate` VALUES ('402881e5541f826d01541f8479160008', '中性货车');
INSERT INTO `cate` VALUES ('402881e5541f826d01541f8479160009', '房车');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ordersid` varchar(255) NOT NULL,
  `ordercode` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `carsid` varchar(255) DEFAULT NULL,
  `thestart` varchar(255) DEFAULT NULL,
  `theend` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordersid`),
  KEY `FKC3DF62E5F368ED10` (`usersid`),
  KEY `FKC3DF62E511F1743A` (`carsid`),
  CONSTRAINT `FKC3DF62E511F1743A` FOREIGN KEY (`carsid`) REFERENCES `cars` (`carsid`),
  CONSTRAINT `FKC3DF62E5F368ED10` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('402881e5541f826d01541f87d406000b', '20160416224426', '402881e5541f826d01541f8727070009', '402881e5541a0c1301541a1896c20005', '2018-04-22', '2018-04-28', '北京', '天津', '2017-03-02', '已预订', null);
INSERT INTO `orders` VALUES ('402881e554584cf80154584d80dc0001', '20160427231906', '402881e5541a8f3601541a9b50120001', '402881e5541a0c1301541a1896c20005', '2018-04-22', '2018-04-23', '上海', '北京', '2017-03-02', '已预订', '');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `carsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contents` text,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topicid`),
  KEY `FK696CD2FF368ED10` (`usersid`),
  KEY `FK696CD2F11F1743A` (`carsid`),
  CONSTRAINT `FK696CD2F11F1743A` FOREIGN KEY (`carsid`) REFERENCES `cars` (`carsid`),
  CONSTRAINT `FK696CD2FF368ED10` FOREIGN KEY (`usersid`) REFERENCES `users` (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('402881e5541f826d01541f878065000a', '402881e5541f826d01541f8727070009', '402881e5541a0c1301541a1896c20005', '5', 'qweqweqwe', '2018-04-23');
INSERT INTO `topic` VALUES ('5555', '402881e5541a8f3601541a9b50120001', '402881e5541a0c1301541a27966a0008', '5', 'ddddd', '2018-12-5');
INSERT INTO `topic` VALUES ('8a80c0a667e84e300167e855e7aa0003', '402881e5541a8f3601541a9b50120001', '402881e5541a0c1301541a296338000c', '5', '不给不给吧', '2018-12-26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('402881e5541a8f3601541a9b50120001', '123123', '123123', '123', '男', '2017-03-02', '123123', '123123', '123123');
INSERT INTO `users` VALUES ('402881e5541f826d01541f8727070009', 'qwe', 'qwe', 'qwe111', '男', '2017-03-02', 'qwe', 'qwe', 'qwe');
