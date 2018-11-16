package com.blog.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysConfigPo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface SysConfigMapper extends BaseMapper<SysConfigPo>{
	List<SysConfigPo> findSysConfigAll();
	void saveSysConfig(SysConfigPo sysconfigPo);
	void deleteSysConfig(String id);
	void updateSysConfig(Map<String, String> param);
}
