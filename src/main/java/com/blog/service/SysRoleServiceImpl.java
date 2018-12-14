package com.blog.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.common.Common;
import com.blog.common.UUIDGenerator;
import com.blog.mapper.SysRoleMapper;
import com.blog.model.po.SysRolePo;

@Service
public class SysRoleServiceImpl implements SysRoleService {
	
	@Autowired
	SysRoleMapper sysRoleMapper;

	@Override
	public List<SysRolePo> findSysRoleByUserId(String userId) {
		return sysRoleMapper.findSysRoleByUserId(userId);
	}

	@Override
	public List<SysRolePo> findSysRoleAll(String searchValue) {
		return sysRoleMapper.findSysRoleAll(searchValue);
	}

	@Override
	public void saveSysRole(SysRolePo sysRolePo) {
		sysRolePo.setCreateTime(new Date());
		sysRolePo.setId(UUIDGenerator.getUUID());
		sysRolePo.setUserId(Common.getCurrentUserId());
		sysRoleMapper.saveSysRole(sysRolePo);
	}

	@Override
	public void deleteSysRole(String id) {
		sysRoleMapper.deleteSysRole(id);
	}

	@Override
	public void updateSysRole(SysRolePo sysRolePo) {
		sysRolePo.setUpdateTime(new Date());
		sysRoleMapper.updateSysRole(sysRolePo);
	}
}
