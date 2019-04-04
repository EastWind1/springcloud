/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : springcloud

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 04/04/2019 13:56:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gateway_define
-- ----------------------------
DROP TABLE IF EXISTS `gateway_define`;
CREATE TABLE `gateway_define`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filters` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `predicates` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gateway_define
-- ----------------------------
INSERT INTO `gateway_define` VALUES ('test1', '[{\"args\":{\"_genkey_0\":\"2\"},\"name\":\"StripPrefix\"}]', '[{\"args\":{\"pattern\":\"/api/a/**\"},\"name\":\"Path\"}]', 'lb://servicea');
INSERT INTO `gateway_define` VALUES ('test2', '[{\"args\":{\"_genkey_0\":\"2\"},\"name\":\"StripPrefix\"}]', '[{\"args\":{\"pattern\":\"/api/b/**\"},\"name\":\"Path\"}]', 'lb://serviceb');
INSERT INTO `gateway_define` VALUES ('test3', '[{\"args\":{\"_genkey_0\":\"2\"},\"name\":\"StripPrefix\"}]', '[{\"args\":{\"pattern\":\"/api/c/**\"},\"name\":\"Path\"}]', 'http://springcloud.cn/view/407');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);

-- ----------------------------
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties`  (
  `id` int(11) NOT NULL,
  `key` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `value` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `application` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profile` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `label` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES (1, 'spring.datasource.url', 'jdbc:mysql://127.0.0.1:3306/springcloud?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=Asia/Shanghai&allowPublicKeyRetrieval=true', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (2, 'spring.datasource.username', 'root', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (3, 'spring.datasource.password', 'admin', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (4, 'spring.jpa.database', 'mysql', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (5, 'spring.jpa.database-platform', 'org.hibernate.dialect.MySQL5InnoDBDialect', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (6, 'spring.jpa.hibernate.ddl-auto', 'update', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (7, 'spring.redis.host', '127.0.0.1', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (8, 'spring.redis.port', '6379', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (9, 'spring.redis.database', '1', 'common', 'default', 'master');
INSERT INTO `properties` VALUES (10, 'test', 'jdbcconfig', 'servicea', 'default', 'master');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, '$2a$10$C56E/wGj58exZd52DXVOiuIQsLfo2cb8VXnrx6K0AAWqP4uPsq0f6', 'root');

SET FOREIGN_KEY_CHECKS = 1;
