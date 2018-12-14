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
``` bash
权限表里添加所有菜单和按钮(需要加权限的按钮)。
角色权限表    角色分配权菜单或按钮权限时添加到中间表，初始化加载前台项目，读取数据库关联权限表，
		根据数据相应的显示到页面上，按钮需要根据数据来判断，是否需要显示。
用户可以获取角色，来获取菜单和按钮的权限。

补充接口：
角色管理：
2.根据角色id关联权限菜单表
4.删除角色，连带关联角色权限表也删
5.添加(修改)角色权限（分批添加）
用户管理：
角色和用户表，多对多
1.分配角色,关联到用户角色表里
重要：是否有事务问题，没有加上
```


