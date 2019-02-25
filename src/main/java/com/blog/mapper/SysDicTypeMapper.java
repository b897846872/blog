package com.blog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysConfigPo;
import com.blog.model.po.SysDicPo;
import com.blog.model.po.SysDicTypePo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface SysDicTypeMapper extends BaseMapper<SysDicTypePo>{
	List<SysDicTypePo> findSysDicTypeAll(String searchValue);
	void saveSysDicType(SysDicTypePo sysDicTypePo);
	void deleteSysDicType(String id);
	void updateSysDicType(SysDicTypePo sysDicTypePo);
}
