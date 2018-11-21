package com.blog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysConfigPo;
import com.blog.model.po.SysDicPo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface SysDicMapper extends BaseMapper<SysConfigPo>{
	List<SysDicPo> findSysDicAll(String searchValue);
	List<SysDicPo> findSysDicToType();
	void saveSysDic(SysDicPo sysDicPo);
	void deleteSysDic(String id);
	void updateSysDicToDicType(SysDicPo sysDicPo);
	void updateSysDicToDicCode(SysDicPo sysDicPo);
}
