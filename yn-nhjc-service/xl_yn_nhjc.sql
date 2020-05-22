/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : xl_yn_nhjc

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 22/05/2020 17:06:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for surface_url
-- ----------------------------
DROP TABLE IF EXISTS `surface_url`;
CREATE TABLE `surface_url`  (
  `url_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口地址标识',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口地址名',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接口地址',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `other1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展属性1',
  `other2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展属性2',
  PRIMARY KEY (`url_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of surface_url
-- ----------------------------
INSERT INTO `surface_url` VALUES ('api_gateway_surface', '通用接口调用模块', 'http://api-gateway/api-gateway/', '使用负载均衡模式', NULL, NULL);
INSERT INTO `surface_url` VALUES ('yn_surface', '云南测试地址', 'http://117.78.51.60:8080/YNEnergy/', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for yn_nhjc_getak
-- ----------------------------
DROP TABLE IF EXISTS `yn_nhjc_getak`;
CREATE TABLE `yn_nhjc_getak`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterpriseCode` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详见附录数据采集安全规则',
  `akExpiresIn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'yyyy-MM-dd HH:mm:ss SSS',
  `akValidAt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'yyyy-MM-dd HH:mm:ss SSS',
  `enterpriseUploadTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'HH:mm:ss',
  `platformURL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(230) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `backup_field_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `backup_field_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `backup_field_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for yn_nhjc_sysapplication
-- ----------------------------
DROP TABLE IF EXISTS `yn_nhjc_sysapplication`;
CREATE TABLE `yn_nhjc_sysapplication`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterpriseCode` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isorg` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详见附录数据采集安全规则',
  `cmpName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zipCode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `corporationName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `license` mediumblob NOT NULL COMMENT '图片大小',
  `organization` mediumblob NULL COMMENT '图片大小',
  `registerAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `registerDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'yyyy-MM-dd',
  `registerPrincipal` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `typeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `industryCode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fieldCode` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `energyConsumeLevel` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `center` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jgzh` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `latitude` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `longitude` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fax` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productionLine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leadingProduct` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orgType` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orgCode` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `backup_field_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `backup_field_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `backup_field_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for yn_nhjc_sysworkingcode
-- ----------------------------
DROP TABLE IF EXISTS `yn_nhjc_sysworkingcode`;
CREATE TABLE `yn_nhjc_sysworkingcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterpriseCode` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secretKey` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `backup_field_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `backup_field_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `backup_field_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
