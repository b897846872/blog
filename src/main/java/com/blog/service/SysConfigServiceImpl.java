package com.blog.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.common.UUIDGenerator;
import com.blog.mapper.SysConfigMapper;
import com.blog.model.po.SysConfigPo;
@Service
public class SysConfigServiceImpl implements SysConfigService {
	@Autowired
	SysConfigMapper sysConfigMapper;
	
	@Override
	public List<SysConfigPo> findSysConfigAll() {
		return sysConfigMapper.findSysConfigAll();
	}

	@Override
	public void saveSysConfig(SysConfigPo sysconfigPo) {
		sysconfigPo.setId(UUIDGenerator.getUUID());
		sysconfigPo.setCreateTime(new Date());
		sysConfigMapper.saveSysConfig(sysconfigPo);
	}

	@Override
	public void deleteSysConfig(String id) {
		sysConfigMapper.deleteSysConfig(id);
	}

	@Override
	public void updateSysConfig(Map<String, String> param) {
		sysConfigMapper.updateSysConfig(param);
	}

}
