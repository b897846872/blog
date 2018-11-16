package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.UserMapper;
import com.blog.model.annotation.OperLog;
import com.blog.model.po.SysUserPo;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	@OperLog(operateModule="查询所有用户")
	public List<SysUserPo> findAllUser() {
		return userMapper.findUserAll();
	}
	
}
