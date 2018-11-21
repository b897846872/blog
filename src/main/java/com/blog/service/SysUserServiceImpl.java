package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.SysUserMapper;
import com.blog.model.annotation.OperLog;
import com.blog.model.po.SysUserPo;
import com.blog.model.vo.SysUserVo;

@Service
public class SysUserServiceImpl implements SysUserService {
	@Autowired
	private SysUserMapper userMapper;
	
	@Override
	@OperLog(operateModule="查询所有用户")
	public List<SysUserPo> findAllUser(String searchValue) {
		return userMapper.findUserAll(searchValue);
	}

	@Override
	public SysUserVo findUserById(String id) {
		List<SysUserVo> list = userMapper.findUserById(id);
		SysUserVo sysUser = new SysUserVo();
		if (list.size() > 0) {
			sysUser = list.get(0);
		}
		return sysUser;
	}

	@Override
	public SysUserVo findUserByLoginName(String loginName) {
		List<SysUserVo> list = userMapper.findUserByLoginName(loginName);
		SysUserVo sysUser = new SysUserVo();
		if (list.size() > 0) {
			sysUser = list.get(0);
		}
		return sysUser;
	}
	
}
