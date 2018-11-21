package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.SysPermissionMapper;
import com.blog.model.po.SysPermissionPo;

@Service
public class SysPermissionServiceImpl implements SysPermissionService {
	
	@Autowired
	SysPermissionMapper sysPermissionMapper;
	
	@Override
	public List<SysPermissionPo> findSysPermissionByUserId(String userId) {
		return sysPermissionMapper.findSysPermissionByUserId(userId);
	}
}
