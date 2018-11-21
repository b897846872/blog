package com.blog.service;

import java.util.List;

import com.blog.model.po.SysRolePo;

public interface SysRoleService {
	List<SysRolePo> findSysRoleByUserId(String userId);
}	
