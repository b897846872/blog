package com.blog.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.blog.mapper.SysRolePermissionMapper;
import com.blog.model.po.SysRolePermissionPo;

public class SysRolePermissionServiceImpl implements SysRolePermissionService {
	@Autowired
	SysRolePermissionMapper sysRolePermissionMapper;

	@Override
	public void saveSysRolePermission(SysRolePermissionPo rolePermissionPo) {
		sysRolePermissionMapper.saveSysRolePermission(rolePermissionPo);
	}

	@Override
	public void deleteSysRolePermission(String id) {
		sysRolePermissionMapper.deleteSysRolePermission(id);
	}

}
