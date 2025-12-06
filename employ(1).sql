/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : employ

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2020-06-18 11:37:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `funds` char(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `scale` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `add_date` date NOT NULL,
  `photo` char(50) DEFAULT NULL,
  `website` char(50) DEFAULT NULL,
  `relo` int(1) DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_info
-- ----------------------------
INSERT INTO `company_info` VALUES ('1', 'woaiwojia', '123456', '我爱我家', '2000', '12874', '常州', '60', '家具', '北京圣华家具有限公司成立于1988年，是一家集家具设计、制造、销售一体的大型实木家具制作企业。自创办之日起以“精、诚、实、稳的实干精神”为品牌发展之本，不断创新，旨在打造中国顶级实木家具。', '2019-04-24', 'c3.jpg', '', '3');
INSERT INTO `company_info` VALUES ('5', 'baidu', '123456', '百度', '840', '1212345657771', '北京', '10.7', '互联网核心技术的技术型公司', '全球最大的中文搜索引擎及最大的中文网站，全球领先的人工智能公司。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司。', '2019-09-03', 'bd.jpg', 'https://talent.baidu.com/external/baidu/index.html', '3');
INSERT INTO `company_info` VALUES ('6', 'jingdong', '123456', '京东', '2088', '99562335', '北京', '10.5', '网络零售服务', '中国自营式电商企业，创始人刘强东担任京东集团董事局主席兼首席执行官 [1]  。旗下设有京东商城、京东金融、拍拍网、京东智能、O2O及海外事业部等。2013年正式获得虚拟运营商牌照。2014年5月在美国纳斯达克证券交易所正式挂牌上市。 2016年6月与沃尔玛达成深度战略合作，1号店并入京东', '2019-09-03', 'jd.jpg', 'http://zhaopin.jd.com/home', '3');
INSERT INTO `company_info` VALUES ('7', 'haier', '123456', '海尔', '201600', '552156', '山东青岛', '7.3', '家电', '海尔集团创业于1984年，是全球大型家电第一品牌，目前已从传统制造家电产品的企业转型为面向全社会孵化创客的平台。在互联网时代，海尔致力于成为互联网企业，颠覆传统企业自成体系的封闭系统，变成网络互联中的节点，互联互通各种资源，打造共创共赢新平台，实现有关各方的共赢增值', '2019-09-16', 'haier.jpg', 'http://t.cn/E9SGZ7e', '3');
INSERT INTO `company_info` VALUES ('8', 'mengniu', '123456', '蒙牛', '30000', '9842335', '内蒙古呼和浩特', '70', '奶制品加工', null, '2019-09-06', null, 'wwww.baid.com', '3');

-- ----------------------------
-- Table structure for employment_information
-- ----------------------------
DROP TABLE IF EXISTS `employment_information`;
CREATE TABLE `employment_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `salary` double NOT NULL,
  `company` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `add_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employment_information
-- ----------------------------
INSERT INTO `employment_information` VALUES ('2', '张三', 't4.jpg', '12000', '腾讯', '北京', '201612109001', '2019-10-10 15:16:01');
INSERT INTO `employment_information` VALUES ('3', '张三', 't10.jpg', '12000', '腾讯', '浙江', '201612109001', '2019-10-10 15:47:11');
INSERT INTO `employment_information` VALUES ('4', '李四', 't3.jpg', '12000', '中软国际', '北京', '201612109002', '2019-10-10 16:06:17');
INSERT INTO `employment_information` VALUES ('6', '王五', null, '12000', '中软国际', '沈阳', '201612109003', '2019-10-10 16:07:10');
INSERT INTO `employment_information` VALUES ('7', '王五', 'u3.jpeg', '12000', '中软国际', '上海', '201612109003', '2019-10-10 16:07:20');
INSERT INTO `employment_information` VALUES ('8', '学生1', 't7.jpg', '1222222', '呼伦贝尔学院', '四川', '201612109004', '2019-10-10 16:09:29');
INSERT INTO `employment_information` VALUES ('10', '学生3', 't8.jpg', '12000', '淘宝', '广州', '201612109006', '2019-10-10 16:13:22');
INSERT INTO `employment_information` VALUES ('11', '学生2', 't10.jpg', '1222222', '中国新能源', '黑龙江', '201612109005', '2019-10-10 16:16:24');
INSERT INTO `employment_information` VALUES ('12', '学生9', 't1.jpg', '12000', '淘宝', '广东', '201612109009', '2019-10-10 17:22:13');
INSERT INTO `employment_information` VALUES ('13', '学生10', 't2.jpg', '1300', '中软国际', '河北', '201612109010', '2019-10-10 17:23:01');
INSERT INTO `employment_information` VALUES ('14', '学生8', 'u2.jpg', '12070', '伊利', '内蒙古', '201612109008', '2019-10-10 19:04:19');
INSERT INTO `employment_information` VALUES ('16', '学生11', 't4.jpg', '12000', '伊利', '内蒙古', '201612109011', '2019-10-10 19:06:28');
INSERT INTO `employment_information` VALUES ('21', '学生7', 't8.jpg', '1300', '青岛酒业', '山东', '201612109007', '2019-10-10 20:37:31');
INSERT INTO `employment_information` VALUES ('22', '学生12', 't5.jpg', '12000', '呼伦贝尔学院', '内蒙古', '201612109012', '2019-10-10 20:38:58');
INSERT INTO `employment_information` VALUES ('23', '学生12', 'y.jpg', '12000', '呼伦贝尔学院', '内蒙古', '201612109012', '2019-10-10 20:39:26');
INSERT INTO `employment_information` VALUES ('24', '张三', 't8.jpg', '1000', '百度', '北京', '2016121010000', '2019-10-15 20:47:59');
INSERT INTO `employment_information` VALUES ('25', '张三1', 't8.jpg', '1000', '百度', '北京', '2016121010000', '2019-10-15 21:00:28');
INSERT INTO `employment_information` VALUES ('26', '李二', '10351R328-7.jpg', '5000', '国家电网', '内蒙古', '201600109002', '2019-11-14 15:32:36');
INSERT INTO `employment_information` VALUES ('27', '李五', 'u=1027245443,3552957153&fm=26&gp=0 (1).jpg', '12000', '蒙西水泥厂', '内蒙古', '201600109003', '2019-11-14 15:55:45');
INSERT INTO `employment_information` VALUES ('28', '李五', 'tn2.jpg', '12000', '蒙西水泥厂', '内蒙古', '201600109003', '2019-11-14 16:02:08');
INSERT INTO `employment_information` VALUES ('29', '李二', 'tv2.jpg', '5000', '国家电网', '内蒙古', '201600109002', '2019-11-14 16:02:29');
INSERT INTO `employment_information` VALUES ('30', '李二', 'tv2.jpg', '5000', '国家电网', '内蒙古', '201600109002', '2019-11-14 16:13:57');
INSERT INTO `employment_information` VALUES ('31', '张五', 't10.jpg', '12000', '腾讯', '海拉尔', '201612109001', '2019-11-14 16:14:50');
INSERT INTO `employment_information` VALUES ('32', '王五', 'u3.jpeg', '12000', '中软国际', '海拉尔', '201612109003', '2019-11-14 16:14:57');
INSERT INTO `employment_information` VALUES ('33', '学生7', 't8.jpg', '11111', '青岛酒业', '山东', '201612109007', '2019-11-14 16:15:17');
INSERT INTO `employment_information` VALUES ('34', '张五', 't10.jpg', '12000', '腾讯', '海拉尔', '201612109001', '2019-11-14 16:15:32');
INSERT INTO `employment_information` VALUES ('35', '李四', 't3.jpg', '12000', '中软国际', '北京', '201612109002', '2019-11-14 16:15:42');
INSERT INTO `employment_information` VALUES ('36', '王五', 'u3.jpeg', '12000', '中软国际', '海拉尔', '201612109003', '2019-11-14 16:15:52');
INSERT INTO `employment_information` VALUES ('37', '学生8', 'u2.jpg', '12070', '伊利', '内蒙古', '201612109008', '2019-11-14 16:16:15');
INSERT INTO `employment_information` VALUES ('38', '学生1', 't7.jpg', '1222222', '呼伦贝尔学院', '海拉尔', '201612109004', '2019-11-14 16:16:27');
INSERT INTO `employment_information` VALUES ('39', '学生2', 't10.jpg', '1222222', '中国新能源', '黑龙江', '201612109005', '2019-11-14 16:16:49');
INSERT INTO `employment_information` VALUES ('41', '李十', 'tv4.jpg', '12000', '斗鱼', '北京', '201600109010', '2019-11-14 16:22:53');
INSERT INTO `employment_information` VALUES ('42', '张一', 'tn5.jpg', '12000', '腾讯', '北京', '201101109001', '2019-11-15 08:43:30');
INSERT INTO `employment_information` VALUES ('43', '李二', 'tn3.jpg', '5000', '北京创业公司', '北京', '201412109001', '2019-11-15 08:47:43');
INSERT INTO `employment_information` VALUES ('44', '李三', 'tv3.jpg', '12000', '甜美舞蹈培训', '海拉尔', '201012109001', '2019-11-15 08:58:09');
INSERT INTO `employment_information` VALUES ('45', '小一', 'tv9.jpg', '1222222', '百度', '北京', '201512009000', '2019-11-17 10:42:44');
INSERT INTO `employment_information` VALUES ('46', '小三', 'tn7.jpg', '12000', '北京创业公司', '北京', '201512109001', '2019-11-17 12:13:13');
INSERT INTO `employment_information` VALUES ('47', '小二', 'tn2.jpg', '1222222', '蒙牛', '内蒙古', '201512109002', '2019-11-17 12:15:36');
INSERT INTO `employment_information` VALUES ('49', '张三121', 't2.jpg', '12000', '腾讯', '北京', '201612109090', '2019-11-17 12:52:28');
INSERT INTO `employment_information` VALUES ('51', '小四', 'tn5.jpg', '500', '腾讯', '河北', '201600109090', '2019-11-17 13:01:55');
INSERT INTO `employment_information` VALUES ('52', '小五', 'tn4.jpg', '12000', '伊利', '海拉尔', '201610109001', '2019-11-17 13:07:38');
INSERT INTO `employment_information` VALUES ('53', '小六', 'tv4.jpg', '1222', '中国美术学院', '北京', '201612109090', '2019-11-17 13:10:15');
INSERT INTO `employment_information` VALUES ('54', '小七', 'tv1.jpg', '10000', '中软国际', '北京', '201612109098', '2019-11-17 13:11:54');
INSERT INTO `employment_information` VALUES ('55', '小八', 't4.jpg', '12000', '腾讯', '海拉尔', '201612109096', '2019-11-17 13:13:47');
INSERT INTO `employment_information` VALUES ('56', '小十', 'tn4.jpg', '12000', '腾讯', '海拉尔', '201612109099', '2019-11-17 13:14:31');

-- ----------------------------
-- Table structure for graduate_info
-- ----------------------------
DROP TABLE IF EXISTS `graduate_info`;
CREATE TABLE `graduate_info` (
  `username` varchar(50) NOT NULL COMMENT '登录名(学号)',
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `graduateyear` varchar(11) NOT NULL COMMENT '毕业年份',
  `sex` char(1) DEFAULT NULL,
  `university` varchar(50) NOT NULL COMMENT '院系',
  `tel` varchar(50) NOT NULL,
  `description` char(11) NOT NULL COMMENT '学历',
  `photo` varchar(50) DEFAULT NULL,
  `nation` char(11) DEFAULT NULL COMMENT '民族',
  `source` varchar(11) NOT NULL COMMENT '来源地',
  `major` varchar(11) DEFAULT NULL COMMENT '专业',
  `aspect` char(11) DEFAULT NULL COMMENT '政治面貌',
  `status` char(11) DEFAULT NULL COMMENT '就业情况',
  `company` varchar(11) DEFAULT NULL COMMENT '就业公司',
  `address` varchar(11) DEFAULT NULL COMMENT '就业地址',
  `salary` varchar(11) DEFAULT NULL COMMENT '薪资',
  `relo` int(11) DEFAULT '3' COMMENT '权限',
  `add_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of graduate_info
-- ----------------------------
INSERT INTO `graduate_info` VALUES ('201012109001', '1', '李三', '2014年', '1', '音乐与舞蹈学院', '12396321456', '0', 'tv3.jpg', '汉族', '内蒙古', '音乐学', '0', '0', '甜美舞蹈培训', '海拉尔', '12000.0', '3', '2019-11-15 08:58:09');
INSERT INTO `graduate_info` VALUES ('201101109001', '1', '张一', '2013年', '1', '物理与电子信息学院', '12396321456', '3', 'tn5.jpg', '汉族', '黑龙江', '物理学院', '0', '0', '腾讯', '北京', '12000.0', '3', '2019-11-15 08:43:30');
INSERT INTO `graduate_info` VALUES ('201412109001', '1', '李二', '2016年', '0', '计算机学院', '12396321456', '2', 'tn3.jpg', '满族', '北京', '计算机科学与技术', '0', '0', '北京创业公司', '北京', '5000', '3', '2019-11-15 08:47:43');
INSERT INTO `graduate_info` VALUES ('201512009000', '1', '小一', '2019年', '1', '计算机学院', '12396321456', '0', 'tv9.jpg', '汉族', '天津', '', '0', '0', '百度', '北京', '1222222', '3', '2019-11-17 10:42:44');
INSERT INTO `graduate_info` VALUES ('201512109001', '1', '小三', '2019年', '0', '物电学院', '1234567890', '0', 'tn7.jpg', '汉族', '内蒙古', '物理与电子信息', '0', '0', '北京创业公司', '北京', '12000.0', '3', '2019-11-17 12:13:13');
INSERT INTO `graduate_info` VALUES ('201512109002', '1', '小二', '2018年', '0', '计算机学院', '123455', '1', 'tn2.jpg', '满族', '内蒙古', '计算机科学与技术', '0', '0', '蒙牛', '内蒙古', '1222222', '3', '2019-11-17 12:15:36');
INSERT INTO `graduate_info` VALUES ('201600109001', '1', '李一', '未毕业', '0', '数学学院', '123456', '2', 'tn1.jpg', '汉族', '内蒙古', '数学学', '0', '1', null, null, null, '3', '2019-11-14 14:56:22');
INSERT INTO `graduate_info` VALUES ('201600109002', '1', '李二', '2019年', '1', '机电工程学院', '1234567890', '1', 'tv2.jpg', '蒙古族', '广东', '电气工程及其自动化', '1', '0', '国家电网', '内蒙古', '5000', '3', '2019-11-14 15:31:29');
INSERT INTO `graduate_info` VALUES ('201600109003', '1', '李五', '2019年', '0', '化学与化工学院', '12396321456', '1', 'tn2.jpg', '汉族', '河北', '应用化学', '0', '0', '蒙西水泥厂', '内蒙古', '12000.0', '3', '2019-11-14 15:55:45');
INSERT INTO `graduate_info` VALUES ('201600109004', '1', '李六', '未毕业', '0', '机电学院', '12396321456', '0', 'tn3.jpg', '', '内蒙古', '', '0', '1', null, null, null, '3', '2019-11-14 16:13:13');
INSERT INTO `graduate_info` VALUES ('201600109007', '1', '李七', '未毕业', '1', '音乐与舞蹈学院', '12396321456', '0', 'tv3.jpg', '满族', '北京', '', '1', '1', null, null, null, '3', '2019-11-14 16:18:35');
INSERT INTO `graduate_info` VALUES ('201600109008', '1', '李八', '未毕业', '0', '美术学院', '123456', '0', 'tn4.jpg', '满族', '内蒙古', '', '1', '1', null, null, null, '3', '2019-11-14 16:19:24');
INSERT INTO `graduate_info` VALUES ('201600109009', '1', '李九', '未毕业', '0', '美术学院', '552156', '0', 'tn5.jpg', '', '北京', '美术学', '1', '1', null, null, null, '3', '2019-11-14 16:20:47');
INSERT INTO `graduate_info` VALUES ('201600109010', '1', '李十', '2019年', '1', '音乐与舞蹈学院', '12396321456', '1', 'tv4.jpg', '', '内蒙古', '舞蹈学', '0', '0', '斗鱼', '北京', '12000.0', '3', '2019-11-14 16:22:53');
INSERT INTO `graduate_info` VALUES ('201600109090', '1', '小四', '未毕业', '1', '计算机学院', '12396321456', '0', 'tn5.jpg', '汉族', '广东', '计算机科学与技术', '1', '0', '腾讯', '河北', '500.0', '3', '2019-11-17 13:01:55');
INSERT INTO `graduate_info` VALUES ('201610109001', '1', '小五', '2019年', '1', '音乐与舞蹈学院', '12396321456', '1', 'tn4.jpg', '汉族', '辽宁', '音乐学', '1', '0', '伊利', '海拉尔', '12000.0', '3', '2019-11-17 13:07:38');
INSERT INTO `graduate_info` VALUES ('20161210000', '1', '小时', '2019年', '1', '计算机学院', '12396321456', '1', 'IMG_3609.JPG', '', '内蒙古', '计算机科学与技术', '1', '1', null, null, null, '3', '2019-11-18 16:16:40');
INSERT INTO `graduate_info` VALUES ('201612109001', '1', '张五', '2019年', '0', '计算机学院', '552156', '1', 't10.jpg', '汉族', '内蒙古', '计算机科学与技术', '0', '0', '腾讯', '海拉尔', '12000.0', '3', '2019-10-10 15:38:08');
INSERT INTO `graduate_info` VALUES ('201612109002', '1', '李四', '2019年', '1', '计算机学院', '12396321456', '1', 't3.jpg', '汉族', '北京', '计算机科学与技术', '0', '0', '中软国际', '北京', '12000.0', '3', '2019-10-10 15:49:51');
INSERT INTO `graduate_info` VALUES ('201612109003', '1', '王五', '2019年', '0', '计算机学院', '123455', '1', 'u3.jpeg', '汉族', '内蒙古', '计算机科学与技术', '0', '0', '中软国际', '海拉尔', '12000.0', '3', '2019-10-10 16:07:10');
INSERT INTO `graduate_info` VALUES ('201612109004', '1', '学生1', '2019年', '0', '音乐与舞蹈学院', '552156', '1', 't7.jpg', '汉族', '北京', '音乐学', '0', '0', '呼伦贝尔学院', '海拉尔', '1222222', '3', '2019-10-10 16:09:29');
INSERT INTO `graduate_info` VALUES ('201612109005', '1', '学生2', '2019年', '1', '矿业学院', '12396321456', '1', 't10.jpg', '蒙古族', '辽宁', '采矿', '0', '0', '中国新能源', '黑龙江', '1222222', '3', '2019-10-10 16:10:30');
INSERT INTO `graduate_info` VALUES ('201612109006', '1', '学生3', '2019年', '1', '音乐与舞蹈学院', '123456', '1', 't8.jpg', '满族', '河北', '音乐学', '0', '0', '淘宝', '广州', '12000.0', '3', '2019-10-10 16:13:22');
INSERT INTO `graduate_info` VALUES ('201612109007', '1', '学生7', '2018年', '1', '矿业学院', '121212', '2', 't8.jpg', '蒙古族', '吉林', '音乐学', '0', '0', '青岛酒业', '山东', '11111', '3', '2019-10-10 16:16:08');
INSERT INTO `graduate_info` VALUES ('201612109008', '1', '学生8', '2018年', '0', '物理与电子信息学院', '12396321456', '2', 'u2.jpg', '汉族', '河北', '物理与电子信息', '0', '0', '伊利', '内蒙古', '12070.0', '3', '2019-10-10 17:20:57');
INSERT INTO `graduate_info` VALUES ('201612109009', '1', '学生9', '2019年', '1', '计算机学院', '123455', '1', 't1.jpg', '满族', '广东', '', '1', '0', '淘宝', '广东', '12000.0', '3', '2019-10-10 17:22:13');
INSERT INTO `graduate_info` VALUES ('201612109010', '1', '学生10', '2018年', '0', '计算机学院', '123456', '2', 't2.jpg', '汉族', '广东', '计算机科学与技术', '2', '0', '腾讯', '河北', '13000', '3', '2019-10-10 17:23:01');
INSERT INTO `graduate_info` VALUES ('201612109011', '1', '学生11', '2019年', '1', '建筑工程学院', '123456', '1', 't4.jpg', '满族', '北京', '计算机科学与技术', '1', '0', '伊利', '内蒙古', '12000.0', '3', '2019-10-10 19:06:28');
INSERT INTO `graduate_info` VALUES ('201612109012', '1', '学生12', '2018年', '1', '文学院', '552156', '2', 'y.jpg', '汉族', '辽宁', '语文教育', '1', '0', '呼伦贝尔学院', '内蒙古', '12000.0', '3', '2019-10-10 20:38:58');
INSERT INTO `graduate_info` VALUES ('201612109090', '1', '小六', '2019年', '1', '音乐与舞蹈学院', '12396321456', '3', 'tv4.jpg', '汉族', '内蒙古', '音乐学', '1', '0', '中国美术学院', '北京', '1222', '3', '2019-11-17 13:10:15');
INSERT INTO `graduate_info` VALUES ('201612109096', '1', '小八', '2019年', '0', '计算机学院', '12396321456', '1', 't4.jpg', '汉族', '北京', '计算机科学与技术', '2', '0', '腾讯', '海拉尔', '12000.0', '3', '2019-11-17 13:12:56');
INSERT INTO `graduate_info` VALUES ('201612109098', '1', '小七', '2019年', '0', '传媒学院', '552156', '1', 'tv1.jpg', '蒙古族', '北京', '数字媒体', '1', '0', '中软国际', '北京', '10000', '3', '2019-11-17 13:11:54');
INSERT INTO `graduate_info` VALUES ('201612109099', '1', '小十', '2019年', '1', '计算机学院', '12396321456', '3', 'tn4.jpg', '汉族', '内蒙古', '计算机科学与技术', '2', '0', '腾讯', '海拉尔', '12000.0', '3', '2019-11-17 13:14:31');

-- ----------------------------
-- Table structure for issue_info
-- ----------------------------
DROP TABLE IF EXISTS `issue_info`;
CREATE TABLE `issue_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `questions` varchar(11) DEFAULT NULL,
  `qcontent` varchar(5000) DEFAULT NULL,
  `qdate` datetime DEFAULT NULL,
  `reply` varchar(1) DEFAULT '0',
  `replier` varchar(11) DEFAULT NULL,
  `rcontent` varchar(5000) DEFAULT NULL,
  `rdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue_info
-- ----------------------------
INSERT INTO `issue_info` VALUES ('21', '201612109001', '张五', '老师  什么时候考试', '2019-11-17 10:48:49', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('22', '201612109001', '张五', '老师   我这个问题我不太懂', '2019-11-17 11:00:20', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('23', '201612109001', '张五', '老师  系统中有一个错误', '2019-11-17 12:06:09', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('24', '201612109002', '李四', '考试时间定下来了吗？', '2019-11-17 12:06:39', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('25', '201612109002', '李四', '老师  这个问题我想请教一下', '2019-11-17 12:07:09', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('26', '201612109002', '李四', '111111', '2019-11-17 12:07:16', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('27', '201612109002', '李四', '测试数据', '2019-11-17 12:07:22', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('28', '201612109003', '王五', '老师  这个问题我想请教一下', '2019-11-17 12:07:34', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('29', '201612109003', '王五', '系统这里有一个小错误', '2019-11-17 12:07:36', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('30', '201612109003', '王五', ' 大撒大撒', '2019-11-17 12:07:39', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('31', '201612109003', '王五', '方式撒撒发生大', '2019-11-17 12:07:46', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('32', '201612109003', '王五', '哦i计划v从', '2019-11-17 12:08:06', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('33', '201612109004', '学生1', '老师  这个问题我想请教一下', '2019-11-17 12:08:26', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('34', '201612109004', '学生1', '系统这里有一个小错误', '2019-11-17 12:08:28', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('35', '201612109004', '学生1', 'hghfdsa ', '2019-11-17 12:08:31', '0', null, null, null);
INSERT INTO `issue_info` VALUES ('36', '201612109004', '学生1', 'dfghghfds', '2019-11-17 12:09:45', '0', null, null, null);

-- ----------------------------
-- Table structure for link__info
-- ----------------------------
DROP TABLE IF EXISTS `link__info`;
CREATE TABLE `link__info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link__info
-- ----------------------------

-- ----------------------------
-- Table structure for news_info
-- ----------------------------
DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classify` varchar(50) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `photo` varchar(11) DEFAULT NULL,
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_info
-- ----------------------------
INSERT INTO `news_info` VALUES ('1', '校内新闻', '添加2020届学生信息', '已经把2020届学生信息导入到系统中 ', 'gonggao.jpg', '2019-09-25 13:08:36');
INSERT INTO `news_info` VALUES ('2', '校内公共', '10月1日升国旗仪式', '在2019年10月1日在尚行楼举行升国旗仪式', 'gonggao.jpg', '2019-09-28 15:32:51');
INSERT INTO `news_info` VALUES ('4', '招聘', '食堂招兼职3人', '第一食堂米线档口招聘学生工1人，麻辣香锅招聘学生工2人，详细去档口咨询', 'zhaopin.jpg', '2019-10-12 22:34:52');
INSERT INTO `news_info` VALUES ('6', '失物招领', '捡到一本软件工程教材', '在敏学楼306捡到一本软件工程教材，时间10月2日早上9点，丢失同学到4号宿舍楼227取', 'swzl.jpg', '2019-09-19 21:48:29');
INSERT INTO `news_info` VALUES ('11', '失物招领', '在学校广场捡手机', '在学校广场捡到一个苹果6s手机，有丢失的同学到2楼311领取', 'swzl.jpg', '2019-10-03 14:55:04');
INSERT INTO `news_info` VALUES ('12', '校内公告', '2020届毕业生答辩时间', '2020届毕业生答辩时间安排 计算机学院19日', 'gonggao.jpg', '2019-11-17 10:45:15');

-- ----------------------------
-- Table structure for post_info
-- ----------------------------
DROP TABLE IF EXISTS `post_info`;
CREATE TABLE `post_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `demand_number` int(11) NOT NULL,
  `sex` char(2) NOT NULL,
  `education` varchar(50) NOT NULL,
  `salary` float DEFAULT NULL,
  `workplace` varchar(50) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `add_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_info
-- ----------------------------
INSERT INTO `post_info` VALUES ('1', '腾飞宝洁公司', '5', '0', '高中', '500', '南京', '扫地', '2019-10-18 17:25:24');
INSERT INTO `post_info` VALUES ('4', '腾讯', '5', '0', '本科', '4000', '北京', 'java工程师', '2019-09-22 20:29:05');
INSERT INTO `post_info` VALUES ('5', '东软集团', '2', '0', '博士', '12000', '沈阳', '有授课经验，有开发能力', '2019-11-22 20:57:31');
INSERT INTO `post_info` VALUES ('8', '百度公司', '4', '0', '本科', '500', '北京', 'java工程师', '2019-09-11 19:37:22');
INSERT INTO `post_info` VALUES ('9', '淘宝', '5', '1', '高中', '500', '南京', '门卫', '2019-09-11 20:13:47');

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `photo` char(50) DEFAULT NULL,
  `relo` int(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES ('1', 'xiaoer', '1', '小二', '12345678', '1', '2019-09-23 15:17:12', 'u1.jpg', '2');
INSERT INTO `teacher_info` VALUES ('5', 'ls1', '1', '老师1', '79767986', '0', '2019-09-25 14:22:25', 't6.jpg', '2');
INSERT INTO `teacher_info` VALUES ('6', 'ls2', '1', '老师2', '9342812344', '1', '2019-09-25 14:25:24', 't2.jpg', '2');
INSERT INTO `teacher_info` VALUES ('7', 'ls3', '1', '老师3', '94782834', '1', '2019-09-25 14:24:24', 't7.jpg', '2');
INSERT INTO `teacher_info` VALUES ('8', 'ls4', '1', '老师4', '0912823784', '0', '2019-09-25 14:24:42', 'u1.jpg', '2');
INSERT INTO `teacher_info` VALUES ('9', 'ls5', '1', '老师5', '9789123', '0', '2019-09-25 14:25:01', 't10.jpg', '2');
INSERT INTO `teacher_info` VALUES ('11', 'ls6', '1', '老师6', '125466454', '0', '2019-10-10 19:10:13', 'u2.jpg', '2');
INSERT INTO `teacher_info` VALUES ('13', 'ls7', '1', '老师7', '12396321456', '0', '2019-10-10 20:45:59', 'u2.jpg', '2');
INSERT INTO `teacher_info` VALUES ('14', 'ls8', '1', '老师8', '552156', '0', '2019-11-07 09:38:15', 't1.jpg', '2');
INSERT INTO `teacher_info` VALUES ('15', 'zy', '1', '张一', '123455', '0', '2019-11-07 15:12:05', 't9.jpg', '2');
INSERT INTO `teacher_info` VALUES ('16', 'ls6', '1', '老师6', '552156', '0', '2019-11-18 09:59:50', 'tn5.jpg', '2');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `photo` char(50) DEFAULT NULL,
  `relo` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'admin', '1', '超级管理员', '0', '2019-07-01 00:00:00', 't7.jpg', '1');
