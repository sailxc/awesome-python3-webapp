/*
Navicat MySQL Data Transfer

Source Server         : Mac Localhost
Source Server Version : 50731
Source Host           : 192.168.3.31:3306
Source Database       : awesome

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2023-11-23 15:37:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blogs`
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('001700718369292049aa45373cb494cb57694d703ce3b65000', '0017007039937185ff021f8104c486c82df220685ba056e000', 'Admin', 'http://www.gravatar.com/avatar/8b70a677d1c6742e8daa6039409f505d?d=mm&s=120', 'My First Blog', 'This is my first blog', 'Hello everyone! This is my first blog.', '1700718369.292471');
INSERT INTO `blogs` VALUES ('001700721546577759e0fede7f245588b4a490570f674d9000', '0017007039937185ff021f8104c486c82df220685ba056e000', 'Admin', 'http://www.gravatar.com/avatar/8b70a677d1c6742e8daa6039409f505d?d=mm&s=120', 'Learn Python3', 'Learning series: Python3', 'Let\'s learn Python3 together. Cool~', '1700721546.577604');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('00170071871051028e2396c4de3475193d0e1c70dcc8c25000', '001700718369292049aa45373cb494cb57694d703ce3b65000', '0017007039937185ff021f8104c486c82df220685ba056e000', 'Admin', 'http://www.gravatar.com/avatar/8b70a677d1c6742e8daa6039409f505d?d=mm&s=120', 'Awesome', '1700718710.510954');
INSERT INTO `comments` VALUES ('001700718735299af4c3952f0c549a094df87ac2c79b611000', '001700718369292049aa45373cb494cb57694d703ce3b65000', '0017007039937185ff021f8104c486c82df220685ba056e000', 'Admin', 'http://www.gravatar.com/avatar/8b70a677d1c6742e8daa6039409f505d?d=mm&s=120', 'Cool~~~', '1700718735.299062');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0017007039937185ff021f8104c486c82df220685ba056e000', 'admin@shaklee.com', 'dfa9a4f80139e2d361b8ab36bd548ba3be3e9e62', '1', 'Admin', 'http://www.gravatar.com/avatar/8b70a677d1c6742e8daa6039409f505d?d=mm&s=120', '1700703993.718658');
INSERT INTO `users` VALUES ('00170070414013573c01864d0e84b21983591104548d4e3000', 'xli@shaklee.com', 'fe25121d48f1ab721e13d77efc6c1196decba737', '0', 'Xiaocheng Li', 'http://www.gravatar.com/avatar/2771b5fc3d937a67a88f2ae9d7720098?d=mm&s=120', '1700704140.1363041');
