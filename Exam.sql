/*
Navicat MySQL Data Transfer

Source Server         : buer
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-01-15 18:58:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_questions
-- ----------------------------
DROP TABLE IF EXISTS `tb_questions`;
CREATE TABLE `tb_questions` (
  `questions_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `type` char(6) DEFAULT NULL,
  `lessonId` int(11) DEFAULT NULL,
  `taoTiId` int(11) DEFAULT NULL,
  `optionA` varchar(50) DEFAULT NULL,
  `optionB` varchar(50) DEFAULT NULL,
  `optionC` varchar(50) DEFAULT NULL,
  `optionD` varchar(50) DEFAULT NULL,
  `answer` varchar(10) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`questions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_questions
-- ----------------------------
INSERT INTO `tb_questions` VALUES ('1', '完成路径选择功能是在OSI模型的', '单选题', '40', '19', '物理层 ', '数据链路层      ', '网络层', '运输层', 'C', '无');
INSERT INTO `tb_questions` VALUES ('2', '在OSI中，为实现有效、可靠数据传输，必须对传输操作进行严格的控制和管理，完成这项工作的层次是', '单选题', '40', '19', '物理层', '数据链路层  ', '网络层', '运输层', 'B', '无');
INSERT INTO `tb_questions` VALUES ('3', '一个用户用PC机上的聊天软件与其使用手机的远程朋友之间通过互联网在进行语音通信，则关于这台PC机和手机以下描述中，正确的是', '单选题', '40', '19', 'PC机和手机均属于通信子网', 'PC机属于通信子网，手机属于资源子网', 'PC机和手机均属于资源子网', 'PC机属于资源子网，手机属于通信子网', 'C', '无');
INSERT INTO `tb_questions` VALUES ('4', '一个交换机的四个端口分别连接了四个HUB，这四个HUB每个都再与四台PC机相连，则这个网络采用的拓扑结构是', '单选题', '40', '19', '星型', '环型', '扩展星型 ', '总线型', 'C', '无');
INSERT INTO `tb_questions` VALUES ('5', '将物理信道的总频带宽分割成若干个子信道，每个子信道传输一路信号，这种多路复用方式被称为', '单选题', '40', '19', '同步时分多路复用 ', '统计时分多路复用', '波分多路复用', '频分多路复用', 'D', '无');
INSERT INTO `tb_questions` VALUES ('6', '某数据链路层协议为了实现可靠的数据传输，采用了ARQ机制中的“选择重发”方式。现接收方收到编号分别为1、2、3、4和5的五个帧之后，发现其中编号为3的帧出现了差错，则接收方将采用下列作法中的', '单选题', '40', '19', '丢弃所收到的编号从1到5的全部五个帧', '丢弃编号为3、4和5的帧，请求发送方重发编号为3的帧', '丢弃编号为3、4和5的帧，请求发送方重发这三个帧', '丢弃编号为3的帧，缓存编号为4和5的帧，请求发送方重发编号为3的帧', 'D', '无');
INSERT INTO `tb_questions` VALUES ('7', '某数据链路层协议为实现可靠的数据传输，采用了ARQ机制中的“拉回”方式。现接收方收到编号分别为1、2、3、4和5的五个帧之后，发现其中编号为3的帧出现了差错，则接收方将采用下列作法中的', '单选题', '40', '19', '丢弃编号为3、4和5的帧，请求发送方重发这三个帧	', '丢弃所收到的编号从1到5的全部五个帧', '丢弃编号为3、4和5的帧，请求发送方重发编号为3的帧', '丢弃编号为3的帧，缓存编号为4和5的帧，请求发送方重发编号为3的帧', 'A', '无');
INSERT INTO `tb_questions` VALUES ('8', '为了进行差错控制，必须对传送的数据帧进行校验。在局域网中广泛使用的校验方法是CRC校验。CRC-16标准规定的生成多项式为G(x)=X16+X15+X2+l，则它产生的校验码长度为', '单选题', '40', '19', '15位', '17位', '4位', '16位', 'D', '无');
INSERT INTO `tb_questions` VALUES ('9', '在一个采用星型拓扑的以太网中，当我们用交换机来替代集线器作为中心节点时，下面说法中正确的是', '单选题', '40', '19', '网络的物理拓扑发生了变化', '网络中的冲突域个数增加了', '主机所获得的带宽减少了', '网络中的冲突增加了', 'B', '无');
INSERT INTO `tb_questions` VALUES ('10', '当一个Web Browser向一个使用标准服务器端口的Web Server提出请求时，那么在服务返回的响应包中，所使用的源端口是', '单选题', '40', '19', '1728', '20', '53', '80', 'D', '无');

-- ----------------------------
-- Table structure for tb_questions2
-- ----------------------------
DROP TABLE IF EXISTS `tb_questions2`;
CREATE TABLE `tb_questions2` (
  `question id` int(100) DEFAULT NULL,
  `subject` varchar(10000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `join time` date DEFAULT NULL,
  `lessonld` varchar(1000) DEFAULT NULL,
  `taoTild` varchar(100) DEFAULT NULL,
  `optionA` varchar(1000) DEFAULT NULL,
  `optionB` varchar(1000) DEFAULT NULL,
  `optionC` varchar(1000) DEFAULT NULL,
  `optionD` varchar(1000) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_questions2
-- ----------------------------
INSERT INTO `tb_questions2` VALUES ('1', '在OSI中，不是完成整个网络系统内连接工作，为上一层提供整个网络范围内两个终端用户之间数据传输通路工作的是', '多选题', '2013-01-01', '40', '19', '物理层 ', '数据链路层  ', '网络层', '运输层', 'A,B,D', null);
INSERT INTO `tb_questions2` VALUES ('2', '在OSI中，不是为实现有效、可靠数据传输，必须对传输操作进行严格的控制和管理，完成这项工作的层次是', '多选题', '2013-01-01', '40', '19', '物理层', '数据链路层  ', '网络层', '运输层', 'A,C,D', null);
INSERT INTO `tb_questions2` VALUES ('3', 'T1载波的数据传输率错误的为', '多选题', '2013-01-01', '40', '19', '1Mbps', '10Mbps', '2.048Mbps', '1.544Mbps', 'A,C,D', null);
INSERT INTO `tb_questions2` VALUES ('4', '一个用户用PC机上的聊天软件与其使用手机的远程朋友之间通过互联网在进行语音通信，则关于这台PC机和手机以下描述中，错误的是', '多选题', '2013-01-01', '40', '19', 'PC机和手机均属于通信子网', 'PC机属于通信子网，手机属于资源子网', 'PC机和手机均属于资源子网', 'PC机属于资源子网，手机属于通信子网', 'A,B,D', null);
INSERT INTO `tb_questions2` VALUES ('5', '一个交换机的四个端口分别连接了四个HUB，这四个HUB每个都再与四台PC机相连，则这个网络采用的拓扑结构错误的是', '多选题', '2013-01-01', '40', '19', '星型', '环型', '扩展星型 ', '总线型', 'A,B,D', null);
INSERT INTO `tb_questions2` VALUES ('6', '将物理信道的总频带宽分割成若干个子信道，每个子信道传输一路信号，这种多路复用方式被称为错误的是', '多选题', '2013-01-01', '40', '19', '同步时分多路复用 ', '统计时分多路复用', '波分多路复用', '频分多路复用', 'A,B,C', null);
INSERT INTO `tb_questions2` VALUES ('7', '某数据链路层协议为了实现可靠的数据传输，采用了ARQ机制中的“选择重发”方式。现接收方收到编号分别为1、2、3、4和5的五个帧之后，发现其中编号为3的帧出现了差错，则接收方将采用下列作法中错误的的', '多选题', '2013-01-01', '40', '19', '丢弃所收到的编号从1到5的全部五个帧', '丢弃编号为3、4和5的帧，请求发送方重发编号为3的帧', '丢弃编号为3、4和5的帧，请求发送方重发这三个帧', '丢弃编号为3的帧，缓存编号为4和5的帧，请求发送方重发编号为3的帧', 'A,B,C', null);
INSERT INTO `tb_questions2` VALUES ('8', '某数据链路层协议为实现可靠的数据传输，采用了ARQ机制中的“拉回”方式。现接收方收到编号分别为1、2、3、4和5的五个帧之后，发现其中编号为3的帧出现了差错，则接收方将采用下列作法中错误的的', '多选题', '2013-01-01', '40', '19', '丢弃编号为3、4和5的帧，请求发送方重发这三个帧	', '丢弃所收到的编号从1到5的全部五个帧', '丢弃编号为3、4和5的帧，请求发送方重发编号为3的帧', '丢弃编号为3的帧，缓存编号为4和5的帧，请求发送方重发编号为3的帧', 'B,C,D', null);
INSERT INTO `tb_questions2` VALUES ('9', '为了进行差错控制，必须对传送的数据帧进行校验。在局域网中广泛使用的校验方法是CRC校验。CRC-16标准规定的生成多项式为G(x)=X16+X15+X2+l，则它产生的校验码长度错误的为', '多选题', '2013-01-01', '40', '19', '15位', '17位', '4位', '16位', 'A,B,C', null);
INSERT INTO `tb_questions2` VALUES ('10', '在一个采用星型拓扑的以太网中，当我们用交换机来替代集线器作为中心节点时，下面说法中错误的的是', '多选题', '2013-01-01', '40', '19', '网络的物理拓扑发生了变化', '网络中的冲突域个数增加了', '主机所获得的带宽减少了', '网络中的冲突增加了', 'A,C,D', null);

-- ----------------------------
-- Table structure for tb_qusetions1
-- ----------------------------
DROP TABLE IF EXISTS `tb_qusetions1`;
CREATE TABLE `tb_qusetions1` (
  `question id` int(20) DEFAULT NULL,
  `subject` varchar(10000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `join time` date DEFAULT NULL,
  `lessonld` varchar(100) DEFAULT NULL,
  `taoTild` varchar(100) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_qusetions1
-- ----------------------------
INSERT INTO `tb_qusetions1` VALUES ('1', 'HTTP是WWW上用于创建超文本链接的基本语言', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('2', '在OSI模型中物理层实现了数据的无差错传输', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('3', '在OSI/RM模型中，网络层传送的是帧', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('4', 'TCP/IP使用ARP将物理地址转换为IP地址', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('5', '在数据传输中IP层可提供可靠的无连接传输', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('6', '在OSI/RM模型中，网络层传送的是帧', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('7', '自治系统内部使用的路由协议是BGP协议 ', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('8', '计算机网络中的差错控制只在数据链路层中实现', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('9', 'IP层是TCP/IP实现网络互连的关键，但IP层不提供可靠性保障，所以TCP/IP网络中没有可靠性机制。', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('10', 'ARP的请求和应答报文都是一对一的，这样可以进行正确解析', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('11', '地址10011110.11100011.01100100.00001100是C类IP地址', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('12', 'LAN交换机既能隔离冲突域，又能隔离广播域', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('13', '传输控制协议TCP属于传输层协议，而用户数据报协议UDP属于网络层协议', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('14', '在CSMA/CD控制方法中，站点在发送完帧之后，再对冲突进行检测', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);
INSERT INTO `tb_qusetions1` VALUES ('15', '由于TCP为用户提供的是可靠的、面向连接的服务，因此该协议对于一些实时应用，如IP电话、视频会议等比较适合', '判断题', '2013-01-01', '40', '19', 'T', 'F', 'F', null);

-- ----------------------------
-- Table structure for tb_result
-- ----------------------------
DROP TABLE IF EXISTS `tb_result`;
CREATE TABLE `tb_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `result_lesson` varchar(255) NOT NULL DEFAULT '自定义测试',
  `result_grade` int(60) NOT NULL,
  `result_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `result_type` varchar(255) NOT NULL DEFAULT '单选题',
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_result
-- ----------------------------
INSERT INTO `tb_result` VALUES ('1', '综合测试', '95', '2021-01-11 22:14:29', '单选题');
INSERT INTO `tb_result` VALUES ('2', '职业规划测试', '65', '2021-01-11 22:15:04', '单选题');
INSERT INTO `tb_result` VALUES ('3', '心理健康教育', '80', '2021-01-11 22:15:56', '单选题');
INSERT INTO `tb_result` VALUES ('4', '计算机组成原理', '80', '2021-01-11 22:59:13', '单选题');
INSERT INTO `tb_result` VALUES ('5', '公共基础知识', '70', '2021-01-11 22:59:46', '单选题');

-- ----------------------------
-- Table structure for tb_userquestions
-- ----------------------------
DROP TABLE IF EXISTS `tb_userquestions`;
CREATE TABLE `tb_userquestions` (
  `questions_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `optionA` varchar(255) NOT NULL,
  `optionB` varchar(255) NOT NULL,
  `optionC` varchar(255) NOT NULL,
  `optionD` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `jointime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(22) NOT NULL DEFAULT '单选题',
  PRIMARY KEY (`questions_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_userquestions
-- ----------------------------
INSERT INTO `tb_userquestions` VALUES ('1', '计算机网络最突出的优点是()', 'A、存储容量大', 'B、将计算机技术与通信技术相结合', 'C、集中计算', 'D、资源共享', 'D', '2021-01-15 18:58:04', '单选题');
INSERT INTO `tb_userquestions` VALUES ('2', '一个学校内部组建的网络一般属于()', 'A、城域网', 'B、局域网', 'C、广域网', 'D、互联网', 'B', '2021-01-15 18:58:04', '单选题');
INSERT INTO `tb_userquestions` VALUES ('3', '以下属于按地理覆盖范围和规模进行分类的网络是()', 'A、广播共享式网络', 'B、局域网', 'C、公用网', 'D、高速网络', 'B', '2021-01-15 18:58:04', '单选题');
INSERT INTO `tb_userquestions` VALUES ('4', '某企业，在方圆2亩地的范围内组建了企业内部网络，则该网络属于()。', 'A、LAN', 'B、VPN', 'C、MAN', 'D、WAN', 'A', '2021-01-15 18:58:04', '单选题');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `user_id` varchar(16) NOT NULL,
  `user_card` int(18) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_passwd` varchar(20) NOT NULL,
  `user_sex` varchar(2) DEFAULT NULL,
  `user_profession` varchar(30) DEFAULT NULL,
  `user_img` mediumblob,
  `user_nation` varchar(50) NOT NULL,
  `user_home` varchar(50) NOT NULL,
  `user_school` varchar(50) NOT NULL,
  `user_edu` varchar(50) NOT NULL,
  `user_political` varchar(50) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_living` varchar(50) NOT NULL,
  `tip` varchar(255) DEFAULT NULL,
  `user_birth` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('1890201', '189020101', '李华', '123456', '男', '软件工程', null, '汉族', '重庆城中心', '重庆工程学院', '大学本科', '共青团员', '北京城郊', '北京城郊', '(1)考生须在考试开始前30分钟抵达考场。<br/>(2)考务人员有权拒绝晚于开考时间到达考场的考生进入考场。<br/>(3)迟到的考生不予退款。', '1999-07-15 16:15:23');
INSERT INTO `tb_users` VALUES ('1890202', '189020202', '王晶', '123456', '女', '计算机应用软件', null, '汉族', '重庆城中心', '重庆工程学院', '大学本科', '中共党员', '北京城郊', '北京城郊', '(1)考生须在考试开始前30分钟抵达考场。<br/>(2)考务人员有权拒绝晚于开考时间到达考场的考生进入考场。<br/>(3)迟到的考生不予退款。', '1999-07-15 16:15:23');
INSERT INTO `tb_users` VALUES ('1890203', '189020303', '布尔', '123456', '男', '计算机应用软件', null, '汉族', '重庆城中心', '重庆工程学院', '大学专科', '中共党员', '北京城郊', '北京城郊', '(1)考生须在考试开始前30分钟抵达考场。<br/>(2)考务人员有权拒绝晚于开考时间到达考场的考生进入考场。<br/>(3)迟到的考生不予退款。', '1999-07-15 16:15:23');
INSERT INTO `tb_users` VALUES ('1890204', '189020404', '明明', '123456', '男', '工商管理', null, '汉族', '重庆城中心', '重庆工程学院', '大学专科', '共青团员', '北京城郊', '北京城郊', '(1)考生须在考试开始前30分钟抵达考场。<br/>(2)考务人员有权拒绝晚于开考时间到达考场的考生进入考场。<br/>(3)迟到的考生不予退款。', '1999-07-15 16:15:23');
INSERT INTO `tb_users` VALUES ('1890205', '189020505', '丽丽', '123456', '女', '物联网工程', null, '汉族', '重庆城中心', '重庆工程学院', '普通高中', '共青团员', '北京城郊', '北京城郊', '(1)考生须在考试开始前30分钟抵达考场。<br/>(2)考务人员有权拒绝晚于开考时间到达考场的考生进入考场。<br/>(3)迟到的考生不予退款。', '1999-07-15 16:15:23');
INSERT INTO `tb_users` VALUES ('1890206', '189020606', '红红', '123456', '女', '网络工程', null, '汉族', '重庆城中心', '重庆工程学院', '普通高中', '人民群众', '北京城郊', '北京城郊', '(1)考生须在考试开始前30分钟抵达考场。<br/>(2)考务人员有权拒绝晚于开考时间到达考场的考生进入考场。<br/>(3)迟到的考生不予退款。', '1999-07-15 16:15:23');
