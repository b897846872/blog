/*
Navicat MySQL Data Transfer

Source Server         : jiang
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-12-24 14:33:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dic
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic`;
CREATE TABLE `sys_dic` (
  `id` varchar(32) NOT NULL,
  `dic_name` varchar(255) DEFAULT NULL,
  `dic_code` varchar(255) DEFAULT NULL,
  `dic_type` varchar(255) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_dic
-- ----------------------------
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567931', '文章', 'article', 'BLOGTYPE', null, '2018-11-19 15:15:10', '2018-12-07 14:50:05');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567932', '随笔', 'essay', 'BLOGTYPE', null, '2018-11-19 15:15:11', '2018-11-19 15:15:11');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567933', '相册', 'album', 'BLOGTYPE', null, '2018-11-19 15:15:11', '2018-11-19 15:15:11');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567934', '资源', 'resource', 'BLOGTYPE', null, '2018-11-19 15:15:11', '2018-11-19 15:15:11');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `operate_user` varchar(32) DEFAULT NULL,
  `operate_module` varchar(255) DEFAULT NULL,
  `log_content` varchar(2000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1076EAF4BE05931EF51545375765979', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 15:02:45', null);
INSERT INTO `sys_log` VALUES ('1076EAF4BE05931EF51545378269139', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 15:44:29', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545623302161', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 11:48:22', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545623314521', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 11:48:34', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545632724530', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 14:25:24', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545632741967', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 14:25:41', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545632792855', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 14:26:32', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633056300', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 14:30:56', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633062600', '10.100.51.6', 'admin', '删除文章', 'D86A67FA7C0581475F1544589472182', '2018-12-24 14:31:02', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633064538', '10.100.51.6', 'admin', '删除文章', '9F0D6DA14294DCFBAA1544502265271', '2018-12-24 14:31:04', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633075521', '10.100.51.6', 'admin', '删除分类', '4B24B15C65CDFD7D9B1545037289704', '2018-12-24 14:31:15', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633076800', '10.100.51.6', 'admin', '删除分类', '9B7E3766D891D9258815426949681162', '2018-12-24 14:31:16', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633084373', '10.100.51.6', 'admin', '删除文章', '1540FC52A2EEBA551C1545123378666', '2018-12-24 14:31:24', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633094839', '10.100.51.6', 'admin', '删除数据字典', '9F0D6DA14294DCFBAA1544519339058', '2018-12-24 14:31:34', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633100401', '10.100.51.6', 'admin', '删除系统配置', '955C4876B85F53F7131544170579626', '2018-12-24 14:31:40', null);
INSERT INTO `sys_log` VALUES ('49B93F1854BB72957B1545633127658', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 14:32:07', null);
INSERT INTO `sys_log` VALUES ('58DDB1573064D9884F1545373261682', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 14:21:01', null);
INSERT INTO `sys_log` VALUES ('58DDB1573064D9884F1545373402625', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 14:23:22', null);
INSERT INTO `sys_log` VALUES ('58DDB1573064D9884F1545373407104', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 14:23:27', null);
INSERT INTO `sys_log` VALUES ('EA82636686D26060C21545619602098', '10.100.51.6', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-24 10:46:42', null);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `name` varchar(255) DEFAULT NULL COMMENT 'url描述',
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `order` int(10) DEFAULT '0',
  `parent_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '', '内容管理', 'contentManage', 'main', '0', '0', '2018-11-20 16:56:49', '2018-11-20 16:56:49');
INSERT INTO `sys_permission` VALUES ('2', 'articlelist', '文章管理', 'article', 'menu', '0', '1', '2018-11-21 10:33:44', null);
INSERT INTO `sys_permission` VALUES ('4', null, '系统管理', 'sysManage', 'main', '0', '0', null, null);
INSERT INTO `sys_permission` VALUES ('52E162D4A073F3C38B1545367353202', '', '文章删除', 'article_delete', 'function', null, '2', '2018-12-21 12:42:33', null);
INSERT INTO `sys_permission` VALUES ('52E162D4A073F3C38B1545367368928', '', '文章修改', 'article_update', 'function', null, '2', '2018-12-21 12:42:48', null);
INSERT INTO `sys_permission` VALUES ('52E162D4A073F3C38B1545367393066', '', '文章添加', 'article_add', 'function', null, '2', '2018-12-21 12:43:13', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545102944503', 'Albumlist', '相册管理', 'albumlist', 'menu', null, '1', '2018-12-17 22:15:44', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545102981666', 'Resourcelist', '资源贴管理', 'resourcelist', 'menu', null, '1', '2018-12-17 22:16:21', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103005308', 'Comment', '评论管理', 'comment', 'menu', null, '1', '2018-12-17 22:16:45', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103026244', 'Category', '分类管理', 'category', 'menu', null, '1', '2018-12-17 22:17:06', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103051241', 'Log', '系统日志', 'log', 'menu', null, '4', '2018-12-17 22:17:31', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103071165', 'Dic', '数据字典', 'dic', 'menu', null, '4', '2018-12-17 22:17:51', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103107605', 'Config', '系统配置', 'config', 'menu', null, '4', '2018-12-17 22:18:27', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103131720', 'User', '用户管理', 'user', 'menu', null, '4', '2018-12-17 22:18:51', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103154624', 'UserInfo', '个人信息', 'userInfo', 'menu', null, '4', '2018-12-17 22:19:14', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103178540', 'Role', '角色管理', 'role', 'menu', null, '4', '2018-12-17 22:19:38', null);
INSERT INTO `sys_permission` VALUES ('8FB389ACF1ADA8F9BC1545103197137', 'SysMenu', '菜单管理', 'menu', 'menu', null, '4', '2018-12-17 22:19:57', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370684819', '', '相册添加', 'album_add', 'function', null, '8FB389ACF1ADA8F9BC1545102944503', '2018-12-21 13:38:04', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370702766', '', '相册修改', 'album_update', 'function', null, '8FB389ACF1ADA8F9BC1545102944503', '2018-12-21 13:38:22', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370723647', '', '相册删除', 'album_delete', 'function', null, '8FB389ACF1ADA8F9BC1545102944503', '2018-12-21 13:38:43', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370765888', '', '资源帖添加', 'resource_add', 'function', null, '8FB389ACF1ADA8F9BC1545102981666', '2018-12-21 13:39:25', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370782527', '', '资源帖修改', 'resource_update', 'function', null, '8FB389ACF1ADA8F9BC1545102981666', '2018-12-21 13:39:42', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370804792', '', '资源帖删除', 'resource_delete', 'function', null, '8FB389ACF1ADA8F9BC1545102981666', '2018-12-21 13:40:04', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370844331', '', '评论删除', 'comment_delete', 'function', null, '8FB389ACF1ADA8F9BC1545103005308', '2018-12-21 13:40:44', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370883841', '', '分类添加', 'category_add', 'function', null, '8FB389ACF1ADA8F9BC1545103026244', '2018-12-21 13:41:23', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370899815', '', '分类修改', 'category_update', 'function', null, '8FB389ACF1ADA8F9BC1545103026244', '2018-12-21 13:41:39', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545370918937', '', '分类删除', 'category_delete', 'function', null, '8FB389ACF1ADA8F9BC1545103026244', '2018-12-21 13:41:58', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545371045925', '', '随笔添加', 'essay_add', 'function', null, 'F9FAD3B07C9BC767991544771832471', '2018-12-21 13:44:05', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545371066600', '', '随笔修改', 'essay_update', 'function', null, 'F9FAD3B07C9BC767991544771832471', '2018-12-21 13:44:26', null);
INSERT INTO `sys_permission` VALUES ('ED2A98E5CF12555B5A1545371081774', '', '随笔删除', 'essay_delete', 'function', null, 'F9FAD3B07C9BC767991544771832471', '2018-12-21 13:44:41', null);
INSERT INTO `sys_permission` VALUES ('F9FAD3B07C9BC767991544771832471', 'Essaylist', '随笔管理', 'eassay', 'menu', null, '1', '2018-12-14 15:17:12', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', null, '1', '2018-11-20 16:56:50', '2018-12-14 17:15:08');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `rid` varchar(32) DEFAULT NULL COMMENT '角色ID',
  `pid` varchar(32) DEFAULT NULL COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '1');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '2');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '52E162D4A073F3C38B1545367353202');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '52E162D4A073F3C38B1545367368928');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '52E162D4A073F3C38B1545367393066');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '8FB389ACF1ADA8F9BC1545102944503');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '8FB389ACF1ADA8F9BC1545102981666');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '8FB389ACF1ADA8F9BC1545103005308');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', '8FB389ACF1ADA8F9BC1545103026244');
INSERT INTO `sys_role_permission` VALUES ('45908D75FCD2344AD41544778982647', 'F9FAD3B07C9BC767991544771832471');
INSERT INTO `sys_role_permission` VALUES ('1', '1');
INSERT INTO `sys_role_permission` VALUES ('1', '2');
INSERT INTO `sys_role_permission` VALUES ('1', '52E162D4A073F3C38B1545367353202');
INSERT INTO `sys_role_permission` VALUES ('1', '52E162D4A073F3C38B1545367368928');
INSERT INTO `sys_role_permission` VALUES ('1', '52E162D4A073F3C38B1545367393066');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545102944503');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370684819');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370702766');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370723647');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545102981666');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370765888');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370782527');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370804792');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103005308');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370844331');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103026244');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370883841');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370899815');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545370918937');
INSERT INTO `sys_role_permission` VALUES ('1', 'F9FAD3B07C9BC767991544771832471');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545371045925');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545371066600');
INSERT INTO `sys_role_permission` VALUES ('1', 'ED2A98E5CF12555B5A1545371081774');
INSERT INTO `sys_role_permission` VALUES ('1', '4');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103051241');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103071165');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103107605');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103131720');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103154624');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103178540');
INSERT INTO `sys_role_permission` VALUES ('1', '8FB389ACF1ADA8F9BC1545103197137');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `real_name` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `login_name` varchar(20) DEFAULT NULL COMMENT '登录帐号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '电话',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` bigint(1) DEFAULT '1' COMMENT '1:有效，0:禁止登录',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '123456', '123456@163.com', '2018-12-24 14:32:07', '1', '2018-11-20 16:56:51', '2018-11-20 16:56:51');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `uid` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `rid` varchar(32) DEFAULT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '45908D75FCD2344AD41544778982647');
INSERT INTO `sys_user_role` VALUES ('1', '45908D75FCD2344AD41544778990311');

-- ----------------------------
-- Table structure for tab_article
-- ----------------------------
DROP TABLE IF EXISTS `tab_article`;
CREATE TABLE `tab_article` (
  `id` varchar(32) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `content` longtext,
  `category_id` varchar(32) DEFAULT NULL,
  `type_id` varchar(32) DEFAULT NULL,
  `clicks` mediumtext,
  `is_original` varchar(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tab_article
-- ----------------------------

-- ----------------------------
-- Table structure for tab_category
-- ----------------------------
DROP TABLE IF EXISTS `tab_category`;
CREATE TABLE `tab_category` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `type_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tab_category
-- ----------------------------

-- ----------------------------
-- Table structure for tab_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_comment`;
CREATE TABLE `tab_comment` (
  `id` varchar(32) NOT NULL,
  `article_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `content` longtext,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tab_comment
-- ----------------------------
