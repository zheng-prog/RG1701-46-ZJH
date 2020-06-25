/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50610
Source Host           : 127.0.0.1:3306
Source Database       : sushe

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-06-03 09:49:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Username` varchar(20) DEFAULT NULL,
  `Admin_Password` varchar(20) DEFAULT NULL,
  `Admin_Name` varchar(20) DEFAULT NULL,
  `Admin_Sex` varchar(10) DEFAULT NULL,
  `Admin_Tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'system', 'admin', 'admin', '', null);

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `Building_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Building_Name` varchar(50) DEFAULT NULL,
  `Building_Introduction` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Building_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '楼宇1', '这个楼宇1');
INSERT INTO `building` VALUES ('2', '楼宇2', '这个楼宇2');

-- ----------------------------
-- Table structure for domitory
-- ----------------------------
DROP TABLE IF EXISTS `domitory`;
CREATE TABLE `domitory` (
  `Domitory_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Domitory_BuildingID` int(11) DEFAULT NULL,
  `Domitory_Name` varchar(20) DEFAULT NULL,
  `Domitory_Type` varchar(20) DEFAULT NULL,
  `Domitory_Number` varchar(20) DEFAULT NULL,
  `Domitory_Tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Domitory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of domitory
-- ----------------------------
INSERT INTO `domitory` VALUES ('1', '1', '11', '豪华', '11', '11');
INSERT INTO `domitory` VALUES ('2', '2', '002', '普通', '12', '312');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Log_StudentID` int(11) DEFAULT NULL,
  `Log_TeacherID` int(11) DEFAULT NULL,
  `Log_Date` varchar(50) DEFAULT NULL,
  `Log_Remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Log_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '2', '1', '2013-04-10', 'we');
INSERT INTO `log` VALUES ('2', '4', '1', '2016-06-25', '');
INSERT INTO `log` VALUES ('3', '2', '1', '2016-06-17', '');
INSERT INTO `log` VALUES ('4', '4', '1', '2016-06-26', '2221');
INSERT INTO `log` VALUES ('5', '2', '1', '2016-06-15', 'aaaa');
INSERT INTO `log` VALUES ('6', '2', '1', '2016-06-30', '321');
INSERT INTO `log` VALUES ('7', '4', '1', '2016-06-24', '');

-- ----------------------------
-- Table structure for out1
-- ----------------------------
DROP TABLE IF EXISTS `out1`;
CREATE TABLE `out1` (
  `Out_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Out_StudentID` varchar(11) DEFAULT NULL,
  `Out_Date` varchar(50) DEFAULT NULL,
  `Out_Remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Out_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of out1
-- ----------------------------
INSERT INTO `out1` VALUES ('1', '2', '2013-4-28', '13');
INSERT INTO `out1` VALUES ('2', '1', '2013-4-28', '搜索');
INSERT INTO `out1` VALUES ('3', '3', '2016-5-7', '迁出');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Student_DomitoryID` int(11) DEFAULT NULL,
  `Student_Username` varchar(20) DEFAULT NULL,
  `Student_Password` varchar(20) DEFAULT NULL,
  `Student_Name` varchar(20) DEFAULT NULL,
  `Student_Sex` varchar(20) DEFAULT NULL,
  `Student_Class` varchar(20) DEFAULT NULL,
  `Student_State` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '2', '001', '123', '学生一', '男', '08计本', '迁出');
INSERT INTO `student` VALUES ('2', '1', '002', '123', '慎儿', '女', '1-1', '入住');
INSERT INTO `student` VALUES ('3', '2', '003', '123', '邹思雪', '女', '1-2', '迁出');
INSERT INTO `student` VALUES ('4', '1', '004', '123', '薛佳楠', '男', '1-2', '入住');

-- ----------------------------
-- Table structure for tb
-- ----------------------------
DROP TABLE IF EXISTS `tb`;
CREATE TABLE `tb` (
  `TB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TB_TeacherID` int(11) DEFAULT NULL,
  `TB_BuildingID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb
-- ----------------------------
INSERT INTO `tb` VALUES ('1', '1', '1');
INSERT INTO `tb` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `Teacher_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Teacher_Username` varchar(20) DEFAULT NULL,
  `Teacher_Password` varchar(20) DEFAULT NULL,
  `Teacher_Name` varchar(20) DEFAULT NULL,
  `Teacher_Sex` varchar(10) DEFAULT NULL,
  `Teacher_Tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'admin', 'admin', '张芳', '女', '13223435566');
