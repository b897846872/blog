package com.blog.service;

import com.blog.model.po.SysRolePermissionPo;

public interface SysRolePermissionService {
	void saveSysRolePermission(SysRolePermissionPo rolePermissionPo);
	void deleteSysRolePermission(String id);
}
