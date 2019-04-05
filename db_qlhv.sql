/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : db_qlhv

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-11 22:31:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hoc_vien
-- ----------------------------
DROP TABLE IF EXISTS `hoc_vien`;
CREATE TABLE `hoc_vien` (
  `ma_hoc_vien` int(11) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(255) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` bit(1) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `tinh_trang` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ma_hoc_vien`)
) ENGINE=InnoDB AUTO_INCREMENT=100008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoc_vien
-- ----------------------------
INSERT INTO `hoc_vien` VALUES ('100001', 'Nguyễn Văn A', '2000-03-10', '', '+84355551010', 'TPHCM', '');
INSERT INTO `hoc_vien` VALUES ('100002', 'Nguyễn Văn B', '2001-03-22', '\0', null, 'TPHCM', '');
INSERT INTO `hoc_vien` VALUES ('100003', 'Nguyễn Văn C', '2000-03-09', '', null, 'HA NOI', '');
INSERT INTO `hoc_vien` VALUES ('100004', 'Nguyễn Văn D', '2000-03-09', '\0', null, 'HA NOI', '');
INSERT INTO `hoc_vien` VALUES ('100005', 'Nguyễn Văn E', '2000-03-09', '', '+021231231', 'HA NOI', '');
INSERT INTO `hoc_vien` VALUES ('100006', 'Nguyễn Văn F', '2000-03-09', '\0', null, 'HA NOI', '');
INSERT INTO `hoc_vien` VALUES ('100007', 'Nguyễn Văn G', '2000-03-09', '\0', null, 'HA NOI', '');

-- ----------------------------
-- Table structure for khoa_hoc
-- ----------------------------
DROP TABLE IF EXISTS `khoa_hoc`;
CREATE TABLE `khoa_hoc` (
  `ma_khoa_hoc` int(11) NOT NULL AUTO_INCREMENT,
  `ten_khoa_hoc` varchar(255) DEFAULT NULL,
  `mo_ta` mediumtext,
  `ngay_bat_dau` date DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `tinh_trang` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ma_khoa_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of khoa_hoc
-- ----------------------------
INSERT INTO `khoa_hoc` VALUES ('1001', 'Khóa Học A', 'Khóa Học A', '2019-04-01', '2019-07-01', '');
INSERT INTO `khoa_hoc` VALUES ('1002', 'Khóa Học B', 'Khóa Học B', '2019-08-10', '2019-10-10', '');
INSERT INTO `khoa_hoc` VALUES ('1003', 'Khóa Học C', 'Khóa Học C', '2019-06-01', '2019-07-01', '');

-- ----------------------------
-- Table structure for lop_hoc
-- ----------------------------
DROP TABLE IF EXISTS `lop_hoc`;
CREATE TABLE `lop_hoc` (
  `ma_lop_hoc` int(11) NOT NULL AUTO_INCREMENT,
  `ma_khoa_hoc` int(11) DEFAULT NULL,
  `ma_hoc_vien` int(11) DEFAULT NULL,
  `ngay_dang_ky` date DEFAULT NULL,
  `tinh_trang` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ma_lop_hoc`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lop_hoc
-- ----------------------------
INSERT INTO `lop_hoc` VALUES ('1', '1', '100001', '2019-03-01', '');
INSERT INTO `lop_hoc` VALUES ('2', '1', '100002', '2019-03-01', '');
INSERT INTO `lop_hoc` VALUES ('3', '1', '100003', '2019-03-01', '');
INSERT INTO `lop_hoc` VALUES ('4', '1', '100004', '2019-03-05', '');
INSERT INTO `lop_hoc` VALUES ('5', '1', '100005', '2019-03-14', '');
INSERT INTO `lop_hoc` VALUES ('6', '1', '100001', '2019-03-11', '');
INSERT INTO `lop_hoc` VALUES ('7', '1', '100001', '2019-03-10', '');
INSERT INTO `lop_hoc` VALUES ('8', '2', '100001', '2019-03-11', '');

-- ----------------------------
-- Table structure for tai_khoan
-- ----------------------------
DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE `tai_khoan` (
  `ma_tai_khoan` int(11) NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(255) DEFAULT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `tinh_trang` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ma_tai_khoan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tai_khoan
-- ----------------------------
INSERT INTO `tai_khoan` VALUES ('1', 'tvd', '123', '');
INSERT INTO `tai_khoan` VALUES ('2', 'test', '123', '\0');
