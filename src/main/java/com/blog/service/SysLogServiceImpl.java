package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.SysLogMapper;
import com.blog.model.po.SysLogPo;

@Service
public class SysLogServiceImpl implements SysLogService {
	@Autowired
	SysLogMapper sysLogMapper;
	
	@Override
	public List<SysLogPo> findSysLogAll(String searchValue) {
		return sysLogMapper.findSysLogAll(searchValue);
	}

	@Override
	public void saveSysLog(SysLogPo logPo) {
		sysLogMapper.saveSysLog(logPo);
	}

}
