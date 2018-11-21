package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
