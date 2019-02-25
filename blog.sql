/*
Navicat MySQL Data Transfer

Source Server         : jiang
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-02-25 16:42:24
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
INSERT INTO `sys_config` VALUES ('955C4876B85F53F7131544170579626', 'projectName', 'projectName', '项目名称', '1', '2018-12-07 16:16:19', '2018-12-13 15:52:13');

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
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567931', '文章', 'article', 'BLOGTYPE', null, '2018-11-19 15:15:10', '2019-01-24 03:51:52');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567932', '随笔', 'essay', 'BLOGTYPE', null, '2018-11-19 15:15:11', '2018-11-19 15:15:11');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567933', '相册', 'album', 'BLOGTYPE', null, '2018-11-19 15:15:11', '2018-11-19 15:15:11');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567934', '资源', 'resource', 'BLOGTYPE', null, '2018-11-19 15:15:11', '2018-11-19 15:15:11');

-- ----------------------------
-- Table structure for sys_dictype
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictype`;
CREATE TABLE `sys_dictype` (
  `id` varchar(32) NOT NULL,
  `dic_type_name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictype
-- ----------------------------

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
INSERT INTO `sys_log` VALUES ('20A3FF86D7555EE7AF1550668917382', '192.168.1.5', 'admin', '保存数据字典', 'com.blog.model.po.SysDicPo@47fe89a9', '2019-02-20 21:21:57', null);
INSERT INTO `sys_log` VALUES ('20A3FF86D7555EE7AF1550668943660', '192.168.1.5', 'admin', '保存分类', 'com.blog.model.po.TabCategoryPo@450acf2f', '2019-02-20 21:22:23', null);
INSERT INTO `sys_log` VALUES ('20A3FF86D7555EE7AF1550668986550', '192.168.1.5', 'admin', '保存分类', 'com.blog.model.po.TabCategoryPo@415672e9', '2019-02-20 21:23:06', null);
INSERT INTO `sys_log` VALUES ('2C7589930A5EF8E3231550666426697', '192.168.1.5', 'admin', '用户登录', '【admin】：登录成功!', '2019-02-20 20:40:26', null);
INSERT INTO `sys_log` VALUES ('2C7589930A5EF8E3231550666426749', '192.168.1.5', 'admin', '用户登录', '【admin】：登录成功!', '2019-02-20 20:40:26', null);
INSERT INTO `sys_log` VALUES ('58DDB1573064D9884F1545373261682', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 14:21:01', null);
INSERT INTO `sys_log` VALUES ('58DDB1573064D9884F1545373402625', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 14:23:22', null);
INSERT INTO `sys_log` VALUES ('58DDB1573064D9884F1545373407104', '10.100.21.23', 'admin', '用户登录', '【admin】：登录成功!', '2018-12-21 14:23:27', null);
INSERT INTO `sys_log` VALUES ('9647DFA3845410AB1A1550667053385', '192.168.1.5', 'admin', '保存文章', 'com.blog.model.po.TabArticlePo@5b542ec6', '2019-02-20 20:50:53', null);

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
INSERT INTO `sys_role` VALUES ('45908D75FCD2344AD41544778982647', '内容员', null, '1', '2018-12-14 17:16:22', null);
INSERT INTO `sys_role` VALUES ('45908D75FCD2344AD41544778990311', '测试人员', null, '1', '2018-12-14 17:16:30', null);

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
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '123456', '123456@163.com', '2019-02-24 20:20:54', '1', '2018-11-20 16:56:51', '2018-11-20 16:56:51');
INSERT INTO `sys_user` VALUES ('ED2A98E5CF12555B5A1545368102462', 'zxc', 'zxc', '827ccb0eea8a706c4c34a16891f84e7b', '123', '444', null, '1', '2018-12-21 12:55:02', null);

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
INSERT INTO `sys_user_role` VALUES ('ED2A98E5CF12555B5A1545368102462', '45908D75FCD2344AD41544778982647');

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
INSERT INTO `tab_article` VALUES ('C5EA9D8D8E5E73D98B15426952877012', 'java基础', '1', '基础很重要的，基础很重要的基础很重要的基础很重要的基础很重要的基础很重要的基础很重要的', '9B7E3766D891D9258815426949681162', 'D68167E839C311C8B115426028567931', '123', '0', '2018-11-20 14:28:07', null);
INSERT INTO `tab_article` VALUES ('C5EA9D8D8E5E73D98B15426953327194', 'spring', '1', 'springspringspringspring', '9B7E3766D891D9258815426949681162', 'D68167E839C311C8B115426028567931', '123', '0', '2018-11-20 14:28:52', null);
INSERT INTO `tab_article` VALUES ('C5EA9D8D8E5E73D98B15426953631576', 'nginx', '1', 'nginxnginxnginxnginxnginxnginxnginxnginxnginx', '9B7E3766D891D9258815426949681162', 'D68167E839C311C8B115426028567931', '123', '0', '2018-11-20 14:29:23', null);

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
INSERT INTO `tab_category` VALUES ('20A3FF86D7555EE7AF1550668986964', 'linux', 'linux', '20A3FF86D7555EE7AF1550668917793', null, '2019-02-20 21:23:06', null);
INSERT INTO `tab_category` VALUES ('4B24B15C65CDFD7D9B1545037289704', '日常', 'day', 'D68167E839C311C8B115426028567932', '1', '2018-12-17 04:01:29', null);
INSERT INTO `tab_category` VALUES ('9B7E3766D891D9258815426949681162', '技术', 'technology', 'D68167E839C311C8B115426028567931', null, '2018-11-20 14:22:48', null);

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
INSERT INTO `tab_comment` VALUES ('1', 'C5EA9D8D8E5E73D98B15426952877012', '', '按说', '2019-02-20 21:01:55', null);
INSERT INTO `tab_comment` VALUES ('2', 'C5EA9D8D8E5E73D98B15426952877012', null, 'sdsd', '2019-02-20 21:07:59', null);

-- ----------------------------
-- Table structure for tab_lable
-- ----------------------------
DROP TABLE IF EXISTS `tab_lable`;
CREATE TABLE `tab_lable` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_lable
-- ----------------------------
INSERT INTO `tab_lable` VALUES ('1', 'java', null, null);
INSERT INTO `tab_lable` VALUES ('2', 'spring', null, null);
INSERT INTO `tab_lable` VALUES ('3', '事务', null, null);
INSERT INTO `tab_lable` VALUES ('4', 'java', null, null);

-- ----------------------------
-- Table structure for tab_lable_article
-- ----------------------------
DROP TABLE IF EXISTS `tab_lable_article`;
CREATE TABLE `tab_lable_article` (
  `lid` varchar(32) NOT NULL,
  `aid` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_lable_article
-- ----------------------------
INSERT INTO `tab_lable_article` VALUES ('1', 'C5EA9D8D8E5E73D98B15426952877012');
INSERT INTO `tab_lable_article` VALUES ('2', 'C5EA9D8D8E5E73D98B15426952877012');
INSERT INTO `tab_lable_article` VALUES ('1', 'C5EA9D8D8E5E73D98B15426953327194');
INSERT INTO `tab_lable_article` VALUES ('1', 'C5EA9D8D8E5E73D98B15426953631576');
