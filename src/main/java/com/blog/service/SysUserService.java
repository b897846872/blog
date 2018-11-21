package com.blog.service;

import java.util.List;

import com.blog.model.po.SysUserPo;
import com.blog.model.vo.SysUserVo;

public interface SysUserService {
	List<SysUserPo> findAllUser(String searchValue);
	SysUserVo findUserById(String id);
	SysUserVo findUserByLoginName(String loginName);
}	
