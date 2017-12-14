/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50719
Source Host           : 127.0.0.1:3306
Source Database       : shop_demo

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-24 09:57:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activityId` int(12) NOT NULL AUTO_INCREMENT,
  `activityName` varchar(50) NOT NULL,
  `activityDes` varchar(500) NOT NULL,
  `discount` float DEFAULT '1',
  `fullPrice` int(12) DEFAULT NULL,
  `reducePrice` int(12) DEFAULT NULL,
  `fullNum` int(12) DEFAULT NULL,
  `reduceNum` int(12) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', 'asdf', 'asdf', '1', null, null, null, null);
INSERT INTO `activity` VALUES ('3', '双11', '双十一特大优惠', '0.9', '299', '100', '5', '2');
INSERT INTO `activity` VALUES ('4', '双12', '双12特大优惠双12特大优惠双12特大优惠双12特大优惠双12特大优惠双12特大优惠双12特大优惠双12特大优惠双12特大优惠双12特大优惠', '0.8', '300', '10', null, null);
INSERT INTO `activity` VALUES ('5', '三八妇女节', '三八妇女节特大优惠', '1', null, null, '3', '1');

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressID` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `detailAddr` varchar(50) NOT NULL,
  `conName` varchar(50) NOT NULL,
  `conTel` varchar(50) NOT NULL,
  PRIMARY KEY (`addressID`),
  KEY `addressID` (`addressID`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('2', '3', '辽宁省', '沈阳市', '浑南区', '323', '23', '4234');
INSERT INTO `address` VALUES ('3', '3', '辽宁省', '沈阳市', '和平区', '2324', 'fwaef', '2323');
INSERT INTO `address` VALUES ('6', '4', '北京市', '北京市市辖区', '东城区', 'wer', 'afsd', '2342');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(12) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'root');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cateId` int(12) NOT NULL AUTO_INCREMENT,
  `cateName` varchar(50) NOT NULL,
  PRIMARY KEY (`cateId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '数码');
INSERT INTO `category` VALUES ('3', '服饰');
INSERT INTO `category` VALUES ('4', '书籍1');
INSERT INTO `category` VALUES ('5', 'sddf');
INSERT INTO `category` VALUES ('6', '书籍');
INSERT INTO `category` VALUES ('7', '家电');

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `chatId` int(20) NOT NULL AUTO_INCREMENT,
  `sendUser` int(12) NOT NULL,
  `receiveUser` int(12) NOT NULL,
  `MsgContent` varchar(255) NOT NULL,
  `MsgTime` datetime NOT NULL,
  PRIMARY KEY (`chatId`),
  KEY `sendUser` (`sendUser`),
  KEY `receiveUser` (`receiveUser`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`sendUser`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`receiveUser`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '4', '3', 'manphil你好', '2017-07-26 23:26:56');
INSERT INTO `chat` VALUES ('2', '4', '3', 'manphil你好', '2017-07-26 23:27:28');
INSERT INTO `chat` VALUES ('3', '3', '4', 'test你好', '2017-07-26 23:27:49');
INSERT INTO `chat` VALUES ('4', '3', '4', '阿斯蒂芬', '2017-07-26 23:33:33');
INSERT INTO `chat` VALUES ('5', '3', '5', 'asdfasd', '2017-07-27 00:06:27');
INSERT INTO `chat` VALUES ('6', '4', '3', 'asdf', '2017-07-27 00:42:00');
INSERT INTO `chat` VALUES ('7', '4', '3', 'asfsdf', '2017-07-27 00:43:20');
INSERT INTO `chat` VALUES ('8', '4', '3', 'nihao', '2017-07-27 00:43:25');
INSERT INTO `chat` VALUES ('9', '3', '4', 'nihao', '2017-07-27 00:43:29');
INSERT INTO `chat` VALUES ('10', '3', '4', 'sfd', '2017-07-27 00:51:04');
INSERT INTO `chat` VALUES ('11', '3', '4', 'sfd', '2017-07-27 00:51:17');
INSERT INTO `chat` VALUES ('12', '3', '5', 'sadf', '2017-07-27 00:52:33');
INSERT INTO `chat` VALUES ('13', '5', '3', 'asdfas', '2017-07-27 00:52:36');
INSERT INTO `chat` VALUES ('14', '5', '3', 'asdfasf', '2017-07-27 00:52:40');
INSERT INTO `chat` VALUES ('15', '3', '5', 'asfdasd', '2017-07-27 00:52:43');
INSERT INTO `chat` VALUES ('16', '4', '5', 'asdfasdf', '2017-07-27 00:00:00');
INSERT INTO `chat` VALUES ('17', '4', '5', 'asdf', '2017-07-27 09:07:42');
INSERT INTO `chat` VALUES ('18', '4', '5', 'asdfsadf', '2017-07-27 09:11:28');
INSERT INTO `chat` VALUES ('19', '4', '5', '111', '2017-07-27 09:11:42');
INSERT INTO `chat` VALUES ('20', '4', '5', 'asdfsdf', '2017-07-27 09:14:56');
INSERT INTO `chat` VALUES ('21', '4', '5', 'df', '2017-07-27 09:16:14');
INSERT INTO `chat` VALUES ('22', '4', '5', 'sadf', '2017-07-27 09:17:19');
INSERT INTO `chat` VALUES ('23', '5', '4', 'asdf', '2017-07-27 09:17:33');
INSERT INTO `chat` VALUES ('26', '5', '4', 'safd', '2017-07-27 11:19:06');
INSERT INTO `chat` VALUES ('27', '5', '4', 'asdf', '2017-07-27 11:25:36');
INSERT INTO `chat` VALUES ('28', '3', '5', 'sadf', '2017-07-27 11:28:22');
INSERT INTO `chat` VALUES ('30', '7', '5', 'asdfsfd', '2017-07-27 11:31:49');
INSERT INTO `chat` VALUES ('31', '8', '5', 'sdfasdf', '2017-07-27 12:45:55');
INSERT INTO `chat` VALUES ('32', '5', '3', 'saf', '2017-07-27 13:11:48');
INSERT INTO `chat` VALUES ('33', '5', '8', 'asdf', '2017-07-27 13:46:22');
INSERT INTO `chat` VALUES ('34', '3', '5', 'asdfsdf', '2017-07-27 16:42:04');
INSERT INTO `chat` VALUES ('35', '3', '5', 'asdfsdf', '2017-07-27 16:42:08');
INSERT INTO `chat` VALUES ('36', '5', '3', 'asdf', '2017-07-27 16:42:10');
INSERT INTO `chat` VALUES ('37', '3', '5', 'asdf', '2017-07-27 16:42:14');
INSERT INTO `chat` VALUES ('38', '5', '3', 'sadfsdf', '2017-07-27 16:42:18');
INSERT INTO `chat` VALUES ('39', '3', '5', 'asdf', '2017-07-27 16:42:22');
INSERT INTO `chat` VALUES ('40', '5', '3', 'df', '2017-07-29 09:46:55');
INSERT INTO `chat` VALUES ('41', '3', '5', 'adf', '2017-08-29 22:22:37');
INSERT INTO `chat` VALUES ('42', '3', '5', '你好', '2017-08-29 22:22:45');
INSERT INTO `chat` VALUES ('43', '3', '5', '你好', '2017-08-29 22:22:48');
INSERT INTO `chat` VALUES ('44', '3', '5', '哈哈', '2017-08-29 22:22:53');
INSERT INTO `chat` VALUES ('45', '5', '3', '您好', '2017-08-29 22:23:19');
INSERT INTO `chat` VALUES ('46', '5', '3', '欢迎您', '2017-08-29 22:23:29');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `collectTime` datetime NOT NULL,
  PRIMARY KEY (`userId`,`goodsId`),
  KEY `collection_ibfk_2` (`goodsId`),
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('3', '49', '2017-08-29 20:18:03');
INSERT INTO `collection` VALUES ('3', '50', '2017-08-29 20:17:58');
INSERT INTO `collection` VALUES ('3', '51', '2017-08-29 20:17:59');
INSERT INTO `collection` VALUES ('3', '58', '2017-08-29 20:18:01');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `point` int(8) NOT NULL,
  `content` varchar(255) NOT NULL,
  `commentTime` datetime NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `userId` (`userId`),
  KEY `goodsId` (`goodsId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '10', '57', '5', '是正品，非常好。', '2017-08-30 00:19:08');
INSERT INTO `comment` VALUES ('2', '10', '66', '5', '是正品，非常好，穿着很舒服。', '2017-08-30 00:21:59');

-- ----------------------------
-- Table structure for `deliver`
-- ----------------------------
DROP TABLE IF EXISTS `deliver`;
CREATE TABLE `deliver` (
  `deliverId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `sendId` int(12) NOT NULL,
  PRIMARY KEY (`deliverId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `deliver_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deliver
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` int(12) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) NOT NULL,
  `price` int(12) NOT NULL,
  `num` int(12) NOT NULL,
  `upTime` datetime NOT NULL,
  `category` int(12) NOT NULL,
  `detailCate` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `activityId` int(12) NOT NULL DEFAULT '1',
  PRIMARY KEY (`goodsId`),
  KEY `activityId` (`activityId`),
  KEY `category` (`category`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`activityId`) REFERENCES `activity` (`activityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`cateId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('37', '测试2', '23', '23', '2017-07-28 15:05:10', '4', '23', '23', '1');
INSERT INTO `goods` VALUES ('45', '卫衣', '50', '2', '2017-07-29 09:46:21', '3', '衣服', '春装', '1');
INSERT INTO `goods` VALUES ('46', '三星手机', '1000', '2', '2017-07-29 09:47:50', '3', '手机', '手机手机手机手机手机手机手机手机手机手机手机手机手机手机手机手机手机手机手机手机', '1');
INSERT INTO `goods` VALUES ('47', '尼康相机', '7000', '2', '2017-07-29 09:48:50', '3', '相机', '相机相机相机相机相机相机相机相机相机相机相机相机相机', '1');
INSERT INTO `goods` VALUES ('48', '英语书', '5', '2', '2017-07-29 09:49:58', '4', '书籍', '书籍书籍书籍书籍书籍书籍书籍书籍书籍书籍', '1');
INSERT INTO `goods` VALUES ('49', '三星手机', '6000', '2', '2017-07-29 09:51:15', '1', '手机', '手机手机手机手机手机手机手机手机手机', '1');
INSERT INTO `goods` VALUES ('50', '三星手机', '5000', '7', '2017-07-29 09:53:50', '1', '三星手机', '手机手机手机手机手机手机手机手机手机手机', '1');
INSERT INTO `goods` VALUES ('51', '苹果手机', '7000', '6', '2017-07-29 09:54:20', '1', '苹果手机', '手机手机', '1');
INSERT INTO `goods` VALUES ('54', 'ipad', '4023', '6', '2017-07-29 09:55:32', '1', '平板', '平板', '4');
INSERT INTO `goods` VALUES ('55', 'ipad', '8000', '5', '2017-07-29 09:55:59', '1', 'ipad', '平板', '1');
INSERT INTO `goods` VALUES ('57', '尼康相机', '8000', '70', '2017-07-29 09:56:24', '1', '相机', '数码相机', '1');
INSERT INTO `goods` VALUES ('58', 'windws', '6000', '5', '2017-07-29 09:56:57', '1', '平板', '平板', '1');
INSERT INTO `goods` VALUES ('61', '春天卫衣', '60', '3', '2017-07-29 09:59:04', '3', '卫衣', '卫衣', '1');
INSERT INTO `goods` VALUES ('62', '长袖卫衣', '50', '6', '2017-07-29 09:59:46', '3', '卫衣', '卫衣卫衣卫衣卫衣卫衣卫衣卫衣卫衣', '1');
INSERT INTO `goods` VALUES ('64', '连帽卫衣', '60', '2', '2017-07-29 10:00:40', '3', '卫衣', '卫衣', '1');
INSERT INTO `goods` VALUES ('66', '黑色卫衣', '30', '50', '2017-07-29 10:01:26', '3', '卫衣', '卫衣卫卫衣卫衣卫衣卫衣卫衣卫衣卫衣', '1');
INSERT INTO `goods` VALUES ('67', '绿色卫衣', '80', '2', '2017-07-29 10:03:10', '3', '卫衣', '卫衣', '1');
INSERT INTO `goods` VALUES ('68', '黄色卫衣', '50', '60', '2017-07-29 10:03:47', '3', '卫衣', '卫衣卫衣卫衣卫衣卫衣卫衣', '1');
INSERT INTO `goods` VALUES ('69', '夏天卫衣', '60', '5', '2017-07-29 10:05:20', '3', '卫衣', '卫衣', '1');
INSERT INTO `goods` VALUES ('70', 'sadf', '234', '234', '2017-07-29 10:21:04', '3', 'sdf', 'asdfasdf', '1');
INSERT INTO `goods` VALUES ('71', '1', '1', '1', '2017-11-23 18:24:27', '1', '', '1', '1');
INSERT INTO `goods` VALUES ('73', 'adf', '32', '34', '2017-11-23 19:09:02', '1', '34', '34', '1');
INSERT INTO `goods` VALUES ('77', 'asdf', '23', '23', '2017-11-23 19:23:28', '1', '23', '23', '1');
INSERT INTO `goods` VALUES ('78', '23', '23', '23', '2017-11-23 19:27:46', '7', '23', '23', '1');

-- ----------------------------
-- Table structure for `imagepath`
-- ----------------------------
DROP TABLE IF EXISTS `imagepath`;
CREATE TABLE `imagepath` (
  `pathId` int(12) NOT NULL AUTO_INCREMENT,
  `goodId` int(12) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`pathId`),
  KEY `goodid` (`goodId`),
  CONSTRAINT `imagepath_ibfk_1` FOREIGN KEY (`goodId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagepath
-- ----------------------------
INSERT INTO `imagepath` VALUES ('36', '37', '335eb3697df347d3a83cb1d6106c4ed542166d224f4a20a4eeb3865193529822730ed0f3.jpg');
INSERT INTO `imagepath` VALUES ('37', '37', '1e2df2922c5046d4a3d2b8b91b546f1d426503.jpg');
INSERT INTO `imagepath` VALUES ('47', '45', '2e7f0c6f9c2f4544b9e80df271664973TB1MNhyOXXXXXbHXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('48', '46', '66eebd5d602a4e04a76f2efce33bc2baTB2PJlqmYBmpuFjSZFAXXaQ0pXa_!!2473151493.jpg');
INSERT INTO `imagepath` VALUES ('49', '47', '80e6548bdae64fe0a658acbce313f871TB1RDAdGXXXXXayXXXXXXXXXXXX_!!2-item_pic.png');
INSERT INTO `imagepath` VALUES ('50', '48', 'e069dc7911994a8485cf114e8395dcb7TB2umqgaae5V1BjSspkXXcoqpXa_!!2678597525.jpg');
INSERT INTO `imagepath` VALUES ('51', '49', 'f4445bf2ff1848e984f5e8ba55d2732eTB2QK1uBbBmpuFjSZFAXXaQ0pXa_!!3339563771.jpg');
INSERT INTO `imagepath` VALUES ('52', '50', '0b20fdf870424bea86656477f7fcdca0TB2llpGh9XlpuFjy0FeXXcJbFXa_!!1912885873.jpg');
INSERT INTO `imagepath` VALUES ('53', '51', 'bce51f59f4b74824b73e8bfa212e5e5dTB2TTdXahAX61Bjy1XcXXXjspXa_!!15574073.jpg');
INSERT INTO `imagepath` VALUES ('56', '54', '7561700d499e4983a0dbe6b5406f384bTB1VOUyNVXXXXb4XpXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('57', '55', 'c1f7d2e3390c4055b5852088305a31fdTB2HhV9othvOuFjSZFBXXcZgFXa_!!3191963978.jpg');
INSERT INTO `imagepath` VALUES ('59', '57', 'a582a84439084b6489148193807bd9f2TB1RDAdGXXXXXayXXXXXXXXXXXX_!!2-item_pic.png');
INSERT INTO `imagepath` VALUES ('60', '58', '374cc130eb1545878d692e6c25321e43TB1cJymNVXXXXXQaXXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('63', '61', '5554c15abc424da8a95fe7ba373da850TB1NZXEQXXXXXaiXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('64', '61', '89cff3c17add46d3a0751aea6fa828c3TB1MNhyOXXXXXbHXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('65', '62', '1591cb87ee84475ba6615bb630dab249TB2ys3pX1tTMeFjSZFOXXaTiVXa_!!2996975219.jpg');
INSERT INTO `imagepath` VALUES ('66', '62', '01c2c4ccab3e4b058804bb72141495f1TB1SeNtSpXXXXXMXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('67', '62', '8a8e6b3d2d3e4d4ea319096915db6d50TB2AB1tX6Ud61BjSZPcXXc6hXXa_!!2939202300.jpg');
INSERT INTO `imagepath` VALUES ('68', '62', '9d36ad8307a741149ba5d5fb685dd9a1TB2XYpga3IlyKJjSZFqXXX9xpXa_!!1880137772.jpg');
INSERT INTO `imagepath` VALUES ('70', '64', 'b1c34d7bdc3346d1986ce2a28c6f3d60TB1D53qPXXXXXahXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('71', '64', '1e9f31f024ef4cc296ddb3256844968bTB1MNhyOXXXXXbHXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('72', '64', '3120d135fd3c4e85b795ba83ecc29ab7TB1NZXEQXXXXXaiXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('74', '66', '9e40034b92fe4987a57ffbc98bda87edTB1D53qPXXXXXahXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('75', '66', '183690a980f7417689b479c692786889TB1MNhyOXXXXXbHXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('76', '66', '4847e96ce588434492426224138bd856TB2XYpga3IlyKJjSZFqXXX9xpXa_!!1880137772.jpg');
INSERT INTO `imagepath` VALUES ('77', '66', '20ab20bd48ec43d2a134dbe33a23eaf2TB2ys3pX1tTMeFjSZFOXXaTiVXa_!!2996975219.jpg');
INSERT INTO `imagepath` VALUES ('78', '67', '8534f5cdbde0495fa16b75daa830919dTB1D53qPXXXXXahXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('79', '67', '604ff1354db9495fba1c05c4111e6766TB1MNhyOXXXXXbHXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('80', '67', '6e1f14c9845b484f80fe96839d5efdbcTB1SeNtSpXXXXXMXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('81', '68', '2901666096d0485597209cce4b147abcTB1D53qPXXXXXahXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('82', '68', '6d208dda178c498a9d37a18ddfb488f1TB1MNhyOXXXXXbHXVXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('83', '68', 'b8bf55df306e478981d51c1704ddba9aTB1NZXEQXXXXXaiXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('84', '68', '1d06aa5e7cfb444d8b239d2fd5ede477TB1SeNtSpXXXXXMXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('85', '68', '916c272f16b44fd88abf7bb9a3e21a46TB2XYpga3IlyKJjSZFqXXX9xpXa_!!1880137772.jpg');
INSERT INTO `imagepath` VALUES ('86', '69', '8b74043700db401f9829010d12a2ac0dTB1NZXEQXXXXXaiXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('87', '69', '69ec88c62dc44d1b9e872c778d785ebaTB1SeNtSpXXXXXMXFXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('88', '69', '1135f0817dd2496daa740e8a72129344TB2AB1tX6Ud61BjSZPcXXc6hXXa_!!2939202300.jpg');
INSERT INTO `imagepath` VALUES ('89', '69', '7b3d027f7c414aa19c5daf266e069a1aTB2ys3pX1tTMeFjSZFOXXaTiVXa_!!2996975219.jpg');
INSERT INTO `imagepath` VALUES ('90', '70', '5e007f72ab8247d3a21d13370dfe48a4TB16qMCRFXXXXbQXpXXXXXXXXXX_!!0-item_pic.jpg');
INSERT INTO `imagepath` VALUES ('91', '70', '257d4a99d5c0444dae6ab3b9ef45232cTB21V7ZmrVkpuFjSspcXXbSMVXa_!!419423461.jpg');
INSERT INTO `imagepath` VALUES ('92', '70', '392be74edd0448bdb4e639541e6009b1TB28Y7WfYBmpuFjSZFuXXaG_XXa_!!830691754.jpg');
INSERT INTO `imagepath` VALUES ('93', '71', 'aae7e879a1dc49b6913107e587f4cee2QQ截图20171123164330.png');
INSERT INTO `imagepath` VALUES ('95', '73', '0698586465db49939a2fa9e1be034d13QQ截图20171123164330.png');
INSERT INTO `imagepath` VALUES ('99', '77', '36f581da953f4d1fb8adb2170866150512.png');
INSERT INTO `imagepath` VALUES ('100', '78', '62846b3a26a840da93a545da2c10953412.png');

-- ----------------------------
-- Table structure for `indent`
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent` (
  `orderId` int(12) NOT NULL AUTO_INCREMENT,
  `userId` int(12) NOT NULL,
  `orderTime` datetime NOT NULL,
  `oldPrice` float NOT NULL,
  `newPrice` float NOT NULL,
  `isPay` tinyint(1) NOT NULL,
  `isSend` tinyint(1) NOT NULL,
  `isReceive` tinyint(1) NOT NULL,
  `isComplete` tinyint(1) NOT NULL,
  `addressId` int(12) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `userId` (`userId`),
  KEY `orderGoods` (`orderTime`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `indent_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `indent_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('4', '3', '2017-07-27 12:50:49', '267', '267', '1', '0', '0', '0', '3');
INSERT INTO `indent` VALUES ('11', '3', '2017-07-28 10:19:53', '743', '505.6', '1', '0', '0', '0', '3');
INSERT INTO `indent` VALUES ('12', '3', '2017-07-28 16:50:12', '184', '147.2', '1', '0', '0', '0', '3');
INSERT INTO `indent` VALUES ('15', '3', '2017-08-29 21:13:02', '26069', '23655.2', '0', '0', '0', '0', '3');
INSERT INTO `indent` VALUES ('16', '3', '2017-08-29 22:16:17', '6000', '6000', '1', '0', '0', '0', '3');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemId` int(12) NOT NULL AUTO_INCREMENT,
  `orderId` int(12) NOT NULL,
  `goodsId` int(12) NOT NULL,
  `num` int(12) NOT NULL,
  PRIMARY KEY (`itemId`),
  KEY `orderId` (`orderId`),
  KEY `goodsId` (`goodsId`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `indent` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('14', '15', '51', '2');
INSERT INTO `orderitem` VALUES ('15', '15', '54', '3');
INSERT INTO `orderitem` VALUES ('16', '16', '58', '1');

-- ----------------------------
-- Table structure for `shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `userId` int(12) NOT NULL,
  `goodsid` int(12) NOT NULL,
  `cateDate` datetime NOT NULL,
  `goodsNum` int(12) NOT NULL,
  PRIMARY KEY (`userId`,`goodsid`),
  KEY `userId` (`userId`),
  KEY `goodsid` (`goodsid`),
  CONSTRAINT `shopcart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shopcart_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('4', '49', '2017-11-23 18:27:56', '1');
INSERT INTO `shopcart` VALUES ('4', '50', '2017-11-23 18:37:18', '1');
INSERT INTO `shopcart` VALUES ('4', '57', '2017-11-23 18:36:37', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `regTime` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'Manphil', '66666666', '2017-07-23 23:37:27', '1476747380@qq.com', '16512');
INSERT INTO `user` VALUES ('4', 'admin', '123', '2017-07-25 19:50:58', 'sadf@sfda.com', '651365');
INSERT INTO `user` VALUES ('5', '客服', '666666', '2017-07-01 00:00:00', '666@qq.com', '666');
INSERT INTO `user` VALUES ('7', 'test3', '66666666', '2017-07-27 11:31:30', 'sdf@sadf', '1321');
INSERT INTO `user` VALUES ('8', 'test5', '66666666', '2017-07-27 12:45:18', 'sdf@saf', '2163513');
INSERT INTO `user` VALUES ('10', '蒋松冬', '12345678', '2017-07-29 10:09:21', 'afff@11.com', '123456789');
