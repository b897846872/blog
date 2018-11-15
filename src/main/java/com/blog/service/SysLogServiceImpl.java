package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.blog.mapper.SysLogMapper;
import com.blog.model.po.SysLogPo;

public class SysLogServiceImpl implements SysLogService {
	@Autowired
	SysLogMapper sysLogMapper;
	
	@Override
	public List<SysLogPo> findSysLogAll() {
		return sysLogMapper.findSysLogAll();
	}

	@Override
	public void saveSysLog() {
		sysLogMapper.saveSysLog();
	}

}
