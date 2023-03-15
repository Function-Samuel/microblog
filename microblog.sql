/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : microblog

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 17/01/2023 14:38:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blacklist
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist`  (
  `black_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blacklist
-- ----------------------------
INSERT INTO `blacklist` VALUES ('@', 'Binyan');
INSERT INTO `blacklist` VALUES ('@', 'hwj');
INSERT INTO `blacklist` VALUES ('@', 'redsky');
INSERT INTO `blacklist` VALUES ('@', 'sfj');
INSERT INTO `blacklist` VALUES ('@', 'wck');
INSERT INTO `blacklist` VALUES ('@', 'xyz');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int NULL DEFAULT NULL,
  `comment_weibo_id` int NULL DEFAULT NULL,
  `comment_username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `comment_content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `comment_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX `comment_weibo_id`(`comment_weibo_id`) USING BTREE,
  INDEX `comment_username`(`comment_username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 87, 'hwj', 'Nice to meet you!', '2023-01-12 23:25:36');
INSERT INTO `comment` VALUES (1, 90, 'sfj', 'nice to meet you!', '2023-01-12 23:38:09');

-- ----------------------------
-- Table structure for directmail
-- ----------------------------
DROP TABLE IF EXISTS `directmail`;
CREATE TABLE `directmail`  (
  `line` int NULL DEFAULT NULL,
  `userfrom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `userto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`userfrom`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of directmail
-- ----------------------------
INSERT INTO `directmail` VALUES (NULL, 'Binyan', 'lol', 'lol\n', 'redsky');
INSERT INTO `directmail` VALUES (NULL, 'hwj', 'test', 'this is a direct mail.', 'sfj');
INSERT INTO `directmail` VALUES (NULL, 'sfj', 'hello', 'test', 'redsky');
INSERT INTO `directmail` VALUES (NULL, 'wck', 'hello', 'Nice to meet you!', 'sfj');
INSERT INTO `directmail` VALUES (NULL, 'xyz', 'hello', 'nice to meet you!', 'sfj');

-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `weibo_id` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of like
-- ----------------------------

-- ----------------------------
-- Table structure for myblog
-- ----------------------------
DROP TABLE IF EXISTS `myblog`;
CREATE TABLE `myblog`  (
  `weibo_id` int NOT NULL AUTO_INCREMENT,
  `weibo_username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `weibo_content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `weibo_img` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `weibo_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `weibo_video` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`weibo_id`) USING BTREE,
  INDEX `myblog`(`weibo_username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 95 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of myblog
-- ----------------------------
INSERT INTO `myblog` VALUES (87, 'sfj', 'Hello, I am sfj.', '1673537093049', '2023-01-12 23:24:54', NULL);
INSERT INTO `myblog` VALUES (90, 'wck', 'Hello, I am wck.', '1673537801409#1673537803984', '2023-01-12 23:36:47', '1673537806416');
INSERT INTO `myblog` VALUES (91, 'sfj', 'Hello, I am wck.', '1673537801409#1673537803984', '2023-01-12 23:37:56', NULL);
INSERT INTO `myblog` VALUES (92, 'xyz', 'just a test', '1673572372278#1673572374839', '2023-01-13 09:12:59', '1673572377848');
INSERT INTO `myblog` VALUES (93, 'sfj', 'just a test', '1673572372278#1673572374839', '2023-01-13 09:16:02', NULL);
INSERT INTO `myblog` VALUES (94, 'sfj', '', '1673881693315', '2023-01-16 23:08:14', NULL);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `username` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_icon` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('redsky', '170405', NULL);
INSERT INTO `userinfo` VALUES ('Binyan', '170402', NULL);
INSERT INTO `userinfo` VALUES ('wck', '123456', NULL);
INSERT INTO `userinfo` VALUES ('sfj', '123456', NULL);
INSERT INTO `userinfo` VALUES ('hwj', '123456', NULL);
INSERT INTO `userinfo` VALUES ('xyz', '123456', NULL);

-- ----------------------------
-- Triggers structure for table myblog
-- ----------------------------
DROP TRIGGER IF EXISTS `tr_delete_blog`;
delimiter ;;
CREATE TRIGGER `tr_delete_blog` BEFORE DELETE ON `myblog` FOR EACH ROW DELETE
                 FROM comment
                 WHERE comment_weibo_id = OLD.weibo_id
;
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
