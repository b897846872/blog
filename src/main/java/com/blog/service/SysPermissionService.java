package com.blog.service;

import java.util.List;

import com.blog.model.po.SysPermissionPo;

public interface SysPermissionService {
	List<SysPermissionPo> findSysPermissionByUserId(String userId);
}
