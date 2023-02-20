/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50520
Source Host           : 127.0.0.1:3306
Source Database       : cvs_db

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2021-01-07 13:28:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `id` int(20) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `addressDesc` varchar(255) DEFAULT NULL,
  `PostCode` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `userId` int(20) NOT NULL,
  `createdUserId` int(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedUserId` int(11) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_address
-- ----------------------------

-- ----------------------------
-- Table structure for t_storage_record
-- ----------------------------
DROP TABLE IF EXISTS `t_storage_record`;
CREATE TABLE `t_storage_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `srCode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账单编码',
  `GoodsName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `goodsDesc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品描述',
  `goodsUnit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品单位',
  `goodsCount` decimal(20,2) DEFAULT NULL COMMENT '商品数量',
  `totalAmount` decimal(20,2) DEFAULT NULL COMMENT '商品总额',
  `payStatus` int(10) DEFAULT NULL COMMENT '是否支付（1：未支付 2：已支付）',
  `createdUserId` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedUserId` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `updatedTime` datetime DEFAULT NULL COMMENT '更新时间',
  `supplierId` int(20) DEFAULT NULL COMMENT '供应商ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='入库单';

-- ----------------------------
-- Records of t_storage_record
-- ----------------------------

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `supCode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商编码',
  `supName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商名称',
  `supDesc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商详细描述',
  `supContact` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商联系人',
  `supPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `supAddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `supFax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '传真',
  `createdUserId` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedUserId` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `updatedTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='供货商';

-- ----------------------------
-- Records of t_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `createdUserId` bigint(20) DEFAULT NULL COMMENT '创建者',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedUserId` bigint(20) DEFAULT NULL COMMENT '修改者',
  `updatedTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', '001', '店长', '1', '2021-01-07 13:25:51', null, null);
INSERT INTO `t_sys_role` VALUES ('2', '002', '店员', '1', '2021-01-07 13:26:27', null, null);

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `account` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `realName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `password` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `sex` int(1) DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `address` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `roleId` int(10) DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
  `createdUserId` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedUserId` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `updatedTime` datetime DEFAULT NULL COMMENT '更新时间',
  `idPicPath` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上传个人证件照存储路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'liuyang', '刘阳', '123123', '1', '1985-01-05', '155348521654', '山东省菏泽市', '1', '1', '2020-12-24 17:30:31', null, null, null);
INSERT INTO `t_sys_user` VALUES ('2', 'lijiangtao', '李江涛', 'jdkfkdkf', '0', '1978-05-12', '18098745434', '山西省晋城', '2', '1', '2020-12-24 17:33:41', null, null, null);
INSERT INTO `t_sys_user` VALUES ('3', 'liuzong', '刘忠', '123456', '1', '1981-08-18', '13689674534', '河北省廊坊市', '2', '1', '2020-12-24 17:35:24', null, null, null);
INSERT INTO `t_sys_user` VALUES ('4', 'songke', '宋科', '123456', '0', '1989-03-11', '13387676762', '河南省郑州市', '1', '1', '2020-12-24 17:36:56', null, null, null);
INSERT INTO `t_sys_user` VALUES ('5', 'zhaogang', '赵刚', '123456', '1', '1990-03-11', '13387676762', '河南省开封市', '1', '1', '2020-12-24 17:39:07', null, null, null);
INSERT INTO `t_sys_user` VALUES ('6', 'zhaoyan', '赵燕', '123456', '1', '1989-05-23', '18098764545', '河南省开封市', '2', '1', '2020-12-24 17:46:17', null, null, null);
INSERT INTO `t_sys_user` VALUES ('7', 'zhaomin', '赵敏', '123456', '0', '1975-02-23', '18099897657', '北京', '2', '1', '2020-12-24 17:46:17', null, null, null);
INSERT INTO `t_sys_user` VALUES ('8', 'sunlei', '孙磊', '123456', '1', '1990-08-15', '13387676765', '上海', '1', '1', '2020-12-24 17:46:17', null, null, null);
INSERT INTO `t_sys_user` VALUES ('9', 'yangguo', '杨过', '123456', '1', '1987-09-14', '13388886623', '四川重庆市', '2', '1', '2020-12-24 17:46:17', null, null, null);
INSERT INTO `t_sys_user` VALUES ('10', 'hanlubiao', '韩路表', '123456', '0', '1985-10-13', '18567542321', '河南省南阳市', '1', '1', '2020-12-24 17:46:17', null, null, null);
