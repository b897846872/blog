package com.blog.service;

import java.util.List;
import java.util.Map;

import com.blog.model.po.SysConfigPo;

public interface SysConfigService {
	List<SysConfigPo> findSysConfigAll();
	void saveSysConfig(SysConfigPo sysconfigPo);
	void deleteSysConfig(String id);
	void updateSysConfig(SysConfigPo sysconfigPo);
}	
