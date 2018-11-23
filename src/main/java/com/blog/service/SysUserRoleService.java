package com.blog.service;


import com.blog.model.po.SysUserRolePo;

public interface SysUserRoleService {
	void saveUserRole(SysUserRolePo sysUserRolePo);
	void deleteSysUserRole(String id);
}
