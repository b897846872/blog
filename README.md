# blog
``` bash
缓存框架：Ehcache
安全框架：Apache Shiro
https://blog.csdn.net/weixin_38132621/article/details/80216056
https://blog.csdn.net/zjcjava/article/details/71606144?locationNum=14&fps=1
https://github.com/BambooZhang/springboot-study/tree/master/springboot-shiro/src/main
后台
系统管理
个人信息，用户管理，角色管理，
菜单管理，系统日志，数据字典，系统配置
内容管理
文章管理，随笔管理，相册管理，资源贴，
评论管理。
https://github.com/tinymce/tinymce-docs/blob/master/general-configuration-guide/upload-images.md  
上传图片API编辑器
```

## 权限

权限表里添加所有菜单和按钮(需要加权限的按钮)。
角色权限表    角色分配权菜单或按钮权限时添加到中间表，初始化加载前台项目，读取数据库关联权限表，
		根据数据相应的显示到页面上，按钮需要根据数据来判断，是否需要显示。
用户可以获取角色，来获取菜单和按钮的权限。

补充接口：
1.查询全部菜单、根据用户查菜单、根据角色查菜单
2.查询全部功能、根据用户查功能、根据角色查功能
3.菜单和功能树形显示
4.保存角色分配权限btso

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
INSERT INTO `sys_permission` VALUES ('1', '', '内容管理', 'contentManage', 'main', '0', null, '2018-11-20 16:56:49', '2018-11-20 16:56:49');
INSERT INTO `sys_permission` VALUES ('2', 'Articlelist', '文章管理', 'article', 'menu', '0', '1', '2018-11-21 10:33:44', null);
INSERT INTO `sys_permission` VALUES ('3', null, '文章删除', 'article_delete', 'function', '0', '2', null, null);



