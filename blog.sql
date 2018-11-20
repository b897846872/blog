/*
Navicat MySQL Data Transfer

Source Server         : jiang
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-20 16:59:03
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
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_dic
-- ----------------------------
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567931', '文章', 'article', 'BLOGTYPE', '2018-11-19 15:15:10', '2018-11-19 15:15:10');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567932', '随笔', 'essay', 'BLOGTYPE', '2018-11-19 15:15:11', '2018-11-19 15:15:11');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567933', '相册', 'album', 'BLOGTYPE', '2018-11-19 15:15:11', '2018-11-19 15:15:11');
INSERT INTO `sys_dic` VALUES ('D68167E839C311C8B115426028567934', '资源', 'resource', 'BLOGTYPE', '2018-11-19 15:15:11', '2018-11-19 15:15:11');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `operate_user` varchar(32) DEFAULT NULL,
  `operate_module` varchar(255) DEFAULT NULL,
  `log_content` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('11C14C70A218EECD4815423504071461', '10.100.51.59', 'admin', '查询所有用户', '', '2018-11-16 14:40:07', null);
INSERT INTO `sys_log` VALUES ('11C14C70A218EECD4815423505997452', '10.100.51.59', 'admin', '查询所有用户', '', '2018-11-16 14:43:19', null);
INSERT INTO `sys_log` VALUES ('125592F538338280EE15426077404761', '10.100.51.59', 'admin', '查询系统字典', 'of', '2018-11-19 14:09:00', null);
INSERT INTO `sys_log` VALUES ('125592F538338280EE15426077456552', '10.100.51.59', 'admin', '查询系统字典', '', '2018-11-19 14:09:05', null);
INSERT INTO `sys_log` VALUES ('1741A16D0607E7289C15426972890621', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:01:29', null);
INSERT INTO `sys_log` VALUES ('1B33A01F99841C62E015426974053801', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:03:25', null);
INSERT INTO `sys_log` VALUES ('1E541CDB1DF3F1144815423516824861', '10.100.51.59', 'admin', '查询所有用户', '', '2018-11-16 15:01:22', null);
INSERT INTO `sys_log` VALUES ('2D015185817729583315426057457211', '10.100.51.59', 'admin', '查询系统字典', '开机', '2018-11-19 13:35:45', null);
INSERT INTO `sys_log` VALUES ('36676AAB216182947A15426968778361', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 14:54:37', null);
INSERT INTO `sys_log` VALUES ('3D62FDE1A49E9F8E4615426059955351', '10.100.51.59', 'admin', '查询系统字典', '开机', '2018-11-19 13:39:55', null);
INSERT INTO `sys_log` VALUES ('4209788A9C5889DAE915426022977301', '10.100.51.59', 'admin', '查询系统字典', '', '2018-11-19 12:38:17', null);
INSERT INTO `sys_log` VALUES ('4209788A9C5889DAE915426023272942', '10.100.51.59', 'admin', '查询系统字典', '1', '2018-11-19 12:38:47', null);
INSERT INTO `sys_log` VALUES ('4209788A9C5889DAE915426023678803', '10.100.51.59', 'admin', '查询系统字典', 'as', '2018-11-19 12:39:27', null);
INSERT INTO `sys_log` VALUES ('545905D77BCD2A245115426960240631', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=}', '2018-11-20 14:40:24', null);
INSERT INTO `sys_log` VALUES ('545905D77BCD2A245115426960724322', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=}', '2018-11-20 14:41:12', null);
INSERT INTO `sys_log` VALUES ('562D12AC476F7B46D515423508618471', '10.100.51.59', 'admin', '查询所有用户', '[Ljava.lang.Object;@26138e28', '2018-11-16 14:47:41', null);
INSERT INTO `sys_log` VALUES ('5895B03BBD58172EDE15423516255861', '10.100.51.59', 'admin', '查询所有用户', '', '2018-11-16 15:00:25', null);
INSERT INTO `sys_log` VALUES ('5DD2BE150D03FF6D1915426031148761', '10.100.51.59', 'admin', '查询系统字典', 'o', '2018-11-19 12:51:54', null);
INSERT INTO `sys_log` VALUES ('5DD2BE150D03FF6D1915426031244692', '10.100.51.59', 'admin', '查询系统字典', 'of', '2018-11-19 12:52:04', null);
INSERT INTO `sys_log` VALUES ('5DD2BE150D03FF6D1915426031273883', '10.100.51.59', 'admin', '查询系统字典', 'of', '2018-11-19 12:52:07', null);
INSERT INTO `sys_log` VALUES ('5DD2BE150D03FF6D1915426031294894', '10.100.51.59', 'admin', '查询系统字典', 'off', '2018-11-19 12:52:09', null);
INSERT INTO `sys_log` VALUES ('5DD2BE150D03FF6D1915426031306795', '10.100.51.59', 'admin', '查询系统字典', 'off', '2018-11-19 12:52:10', null);
INSERT INTO `sys_log` VALUES ('5DE184BA99A6789F1B15426980652601', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:14:25', null);
INSERT INTO `sys_log` VALUES ('5F9ADEE657D486747915426037698661', '10.100.51.59', 'admin', '查询系统字典', '开机', '2018-11-19 13:02:49', null);
INSERT INTO `sys_log` VALUES ('67354379A1DF01CE0A15426061720951', '10.100.51.59', 'admin', '查询系统字典', '开机', '2018-11-19 13:42:52', null);
INSERT INTO `sys_log` VALUES ('69314F249EFCD8576415426034875661', '10.100.51.59', 'admin', '查询系统字典', 'off', '2018-11-19 12:58:07', null);
INSERT INTO `sys_log` VALUES ('8132498FCD2259FFF815426963906221', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=}', '2018-11-20 14:46:30', null);
INSERT INTO `sys_log` VALUES ('8132498FCD2259FFF815426964181692', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 14:46:58', null);
INSERT INTO `sys_log` VALUES ('826565A8704F9FE0A215426970282841', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 14:57:08', null);
INSERT INTO `sys_log` VALUES ('8E8C715ED49E1C7A4715426065775231', '10.100.51.59', 'admin', '查询系统字典', '开', '2018-11-19 13:49:37', null);
INSERT INTO `sys_log` VALUES ('8E8C715ED49E1C7A4715426069328122', '10.100.51.59', 'admin', '修改系统字典编码', 'com.blog.model.po.SysDicPo@2dac9123', '2018-11-19 13:55:32', null);
INSERT INTO `sys_log` VALUES ('8E8C715ED49E1C7A4715426069521603', '10.100.51.59', 'admin', '修改系统字典类型', 'com.blog.model.po.SysDicPo@2ffdc0fb', '2018-11-19 13:55:52', null);
INSERT INTO `sys_log` VALUES ('8E8C715ED49E1C7A4715426069703634', '10.100.51.59', 'admin', '修改系统字典类型', 'com.blog.model.po.SysDicPo@633f4766', '2018-11-19 13:56:10', null);
INSERT INTO `sys_log` VALUES ('92DE7CCC5A58034A8215426972757941', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:01:15', null);
INSERT INTO `sys_log` VALUES ('9B7E3766D891D9258815426949673281', '10.100.51.59', 'admin', '保存分类', 'com.blog.model.po.TabCategoryPo@1f1f5c48', '2018-11-20 14:22:47', null);
INSERT INTO `sys_log` VALUES ('9B7E3766D891D9258815426952000873', '10.100.51.59', 'admin', '保存文章', 'com.blog.model.po.TabArticlePo@7dd643b8', '2018-11-20 14:26:40', null);
INSERT INTO `sys_log` VALUES ('9E2A3D52507B176DC915426062563481', '10.100.51.59', 'admin', '查询系统字典', '开机', '2018-11-19 13:44:16', null);
INSERT INTO `sys_log` VALUES ('9FD2CE214F8E4D144415426972319031', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:00:31', null);
INSERT INTO `sys_log` VALUES ('ADB0CCC5867C7C164615426065138791', '10.100.51.59', 'admin', '查询系统字典', '开机', '2018-11-19 13:48:33', null);
INSERT INTO `sys_log` VALUES ('ADB0CCC5867C7C164615426065193042', '10.100.51.59', 'admin', '查询系统字典', '开', '2018-11-19 13:48:39', null);
INSERT INTO `sys_log` VALUES ('BF8134BC0A32FEDB8B15426980353361', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:13:55', null);
INSERT INTO `sys_log` VALUES ('C59A154131EABE99C115426080412641', '10.100.51.59', 'admin', '查询系统字典', '', '2018-11-19 14:14:01', null);
INSERT INTO `sys_log` VALUES ('C59A154131EABE99C115426080482112', '10.100.51.59', 'admin', '查询系统字典', 'of', '2018-11-19 14:14:08', null);
INSERT INTO `sys_log` VALUES ('C59A154131EABE99C115426080526043', '10.100.51.59', 'admin', '查询系统字典', 'ofF', '2018-11-19 14:14:12', null);
INSERT INTO `sys_log` VALUES ('C59FFBB2D77FCAFBC715426024309561', '10.100.51.59', 'admin', '查询系统字典', 'as', '2018-11-19 12:40:30', null);
INSERT INTO `sys_log` VALUES ('C5EA9D8D8E5E73D98B15426952872771', '10.100.51.59', 'admin', '保存文章', 'com.blog.model.po.TabArticlePo@7c61c623', '2018-11-20 14:28:07', null);
INSERT INTO `sys_log` VALUES ('C5EA9D8D8E5E73D98B15426953326523', '10.100.51.59', 'admin', '保存文章', 'com.blog.model.po.TabArticlePo@7c348cb0', '2018-11-20 14:28:52', null);
INSERT INTO `sys_log` VALUES ('C5EA9D8D8E5E73D98B15426953630895', '10.100.51.59', 'admin', '保存文章', 'com.blog.model.po.TabArticlePo@5ce93240', '2018-11-20 14:29:23', null);
INSERT INTO `sys_log` VALUES ('C5EA9D8D8E5E73D98B15426953895377', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=}', '2018-11-20 14:29:49', null);
INSERT INTO `sys_log` VALUES ('C5EA9D8D8E5E73D98B15426953983738', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=}', '2018-11-20 14:29:58', null);
INSERT INTO `sys_log` VALUES ('C5EA9D8D8E5E73D98B15426954067029', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=}', '2018-11-20 14:30:06', null);
INSERT INTO `sys_log` VALUES ('D68167E839C311C8B115426025089261', '10.100.51.59', 'admin', '查询系统字典', 'as', '2018-11-19 12:41:48', null);
INSERT INTO `sys_log` VALUES ('D68167E839C311C8B115426028428262', '10.100.51.59', 'admin', '保存系统字典', 'com.blog.model.po.SysDicPo@c71b63b', '2018-11-19 12:47:22', null);
INSERT INTO `sys_log` VALUES ('D68167E839C311C8B115426028566864', '10.100.51.59', 'admin', '保存系统字典', 'com.blog.model.po.SysDicPo@1c0bbd41', '2018-11-19 12:47:36', null);
INSERT INTO `sys_log` VALUES ('D68167E839C311C8B115426029647426', '10.100.51.59', 'admin', '查询系统字典', 'o', '2018-11-19 12:49:24', null);
INSERT INTO `sys_log` VALUES ('D858D67ACA49E7858015426978647721', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:11:04', null);
INSERT INTO `sys_log` VALUES ('E3BA1D8743B95656A615426979420461', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:12:22', null);
INSERT INTO `sys_log` VALUES ('E79D7931350B96FFB815426024085351', '10.100.51.59', 'admin', '查询系统字典', 'as', '2018-11-19 12:40:08', null);
INSERT INTO `sys_log` VALUES ('EB992627C8094CBD9115423514719981', '10.100.51.59', 'admin', '查询所有用户', '[Ljava.lang.Object;@2d0563d5', '2018-11-16 14:57:51', null);
INSERT INTO `sys_log` VALUES ('EBC561F3C92F7C933F15426972563231', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:00:56', null);
INSERT INTO `sys_log` VALUES ('EFD9D5A977C291657B15426974305651', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=9B7E3766D891D9258815426949681162}', '2018-11-20 15:03:50', null);
INSERT INTO `sys_log` VALUES ('F32574FCE759232C9815426955911081', '10.100.51.59', 'admin', '查询文章', '{typeId=, categoryId=}', '2018-11-20 14:33:11', null);
INSERT INTO `sys_log` VALUES ('F5F727BA9BECFD2F5415426035217031', '10.100.51.59', 'admin', '查询系统字典', 'off', '2018-11-19 12:58:41', null);
INSERT INTO `sys_log` VALUES ('F5F727BA9BECFD2F5415426035368532', '10.100.51.59', 'admin', '查询系统字典', 'on', '2018-11-19 12:58:56', null);
INSERT INTO `sys_log` VALUES ('F5F727BA9BECFD2F5415426035693613', '10.100.51.59', 'admin', '查询系统字典', 'off', '2018-11-19 12:59:29', null);
INSERT INTO `sys_log` VALUES ('F5F727BA9BECFD2F5415426036393984', '10.100.51.59', 'admin', '查询系统字典', '开机', '2018-11-19 13:00:39', null);
INSERT INTO `sys_log` VALUES ('F5F85CE98A2F80FEE515426075274271', '10.100.51.59', 'admin', '查询系统字典', '开', '2018-11-19 14:05:27', null);
INSERT INTO `sys_log` VALUES ('F5F85CE98A2F80FEE515426075480182', '10.100.51.59', 'admin', '查询系统字典', '', '2018-11-19 14:05:48', null);
INSERT INTO `sys_log` VALUES ('F5F85CE98A2F80FEE515426075532983', '10.100.51.59', 'admin', '查询系统字典', '开', '2018-11-19 14:05:53', null);
INSERT INTO `sys_log` VALUES ('F5F85CE98A2F80FEE515426075884104', '10.100.51.59', 'admin', '查询系统字典', 'on', '2018-11-19 14:06:28', null);
INSERT INTO `sys_log` VALUES ('F5F85CE98A2F80FEE515426076511975', '10.100.51.59', 'admin', '查询系统字典', 'of', '2018-11-19 14:07:31', null);
INSERT INTO `sys_log` VALUES ('F5F85CE98A2F80FEE515426076832146', '10.100.51.59', 'admin', '查询系统字典', '', '2018-11-19 14:08:03', null);
INSERT INTO `sys_log` VALUES ('F5F85CE98A2F80FEE515426076858777', '10.100.51.59', 'admin', '查询系统字典', '', '2018-11-19 14:08:05', null);
INSERT INTO `sys_log` VALUES ('F8A958930541E23D7C15426077771841', '10.100.51.59', 'admin', '查询系统字典', '', '2018-11-19 14:09:37', null);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `name` varchar(64) DEFAULT NULL COMMENT 'url描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '/user', 'usermanager', '2018-11-20 16:56:49', '2018-11-20 16:56:49');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', '1', '2018-11-20 16:56:50', '2018-11-20 16:56:50');

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
INSERT INTO `sys_role_permission` VALUES ('1', '1');

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
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '123456', '123456', '123456@163.com', '2017-05-10 20:22:59', '1', '2018-11-20 16:56:51', '2018-11-20 16:56:51');

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
INSERT INTO `tab_article` VALUES ('C5EA9D8D8E5E73D98B15426952877012', 'java基础', null, '基础很重要的，基础很重要的基础很重要的基础很重要的基础很重要的基础很重要的基础很重要的', '9B7E3766D891D9258815426949681162', 'D68167E839C311C8B115426028567931', '123', '0', '2018-11-20 14:28:07', null);
INSERT INTO `tab_article` VALUES ('C5EA9D8D8E5E73D98B15426953327194', 'spring', null, 'springspringspringspring', '9B7E3766D891D9258815426949681162', 'D68167E839C311C8B115426028567931', '123', '0', '2018-11-20 14:28:52', null);
INSERT INTO `tab_article` VALUES ('C5EA9D8D8E5E73D98B15426953631576', 'nginx', null, 'nginxnginxnginxnginxnginxnginxnginxnginxnginx', '9B7E3766D891D9258815426949681162', 'D68167E839C311C8B115426028567931', '123', '0', '2018-11-20 14:29:23', null);

-- ----------------------------
-- Table structure for tab_category
-- ----------------------------
DROP TABLE IF EXISTS `tab_category`;
CREATE TABLE `tab_category` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `type_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tab_category
-- ----------------------------
INSERT INTO `tab_category` VALUES ('9B7E3766D891D9258815426949681162', '技术', 'technology', 'D68167E839C311C8B115426028567931', '2018-11-20 14:22:48', null);

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
