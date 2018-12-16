package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.SysUserRoleMapper;
import com.blog.model.po.SysRolePo;
import com.blog.model.po.SysUserRolePo;

@Service
public class SysUserRoleServiceImpl implements SysUserRoleService {
	
	@Autowired
	SysUserRoleMapper sysUserRoleMapper;
	
	@Override
	public void saveUserRoleList(List<SysRolePo> list, String userId) {
		deleteSysUserRole(userId);
		for (SysRolePo sysRolePo : list) {
			SysUserRolePo sysUserRolePo = new SysUserRolePo();
			sysUserRolePo.setUid(userId);
			sysUserRolePo.setRid(sysRolePo.getId());
			saveUserRole(sysUserRolePo);
		}
	}
	
	@Override
	public void saveUserRole(SysUserRolePo sysUserRolePo) {
		sysUserRoleMapper.saveSysUserRole(sysUserRolePo);
	}

	@Override
	public void deleteSysUserRole(String id) {
		sysUserRoleMapper.deleteSysUserRole(id);
	}
}
