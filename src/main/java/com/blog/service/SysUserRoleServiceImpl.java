package com.blog.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.blog.mapper.SysUserRoleMapper;
import com.blog.model.po.SysUserRolePo;

public class SysUserRoleServiceImpl implements SysUserRoleService {
	
	@Autowired
	SysUserRoleMapper sysUserRoleMapper;
	
	@Override
	public void saveUserRole(SysUserRolePo sysUserRolePo) {
		sysUserRoleMapper.saveUserRole(sysUserRolePo);
	}

	@Override
	public void deleteSysUserRole(String id) {
		sysUserRoleMapper.deleteSysUserRole(id);
	}

}
