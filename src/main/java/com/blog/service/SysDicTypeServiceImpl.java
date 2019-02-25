package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.blog.mapper.SysDicTypeMapper;
import com.blog.model.po.SysDicTypePo;

public class SysDicTypeServiceImpl implements SysDicTypeService {
	@Autowired
	SysDicTypeMapper sysDicTypeMapper;
	
	@Override
	public List<SysDicTypePo> findSysDicTypeAll(String searchValue) {
		return sysDicTypeMapper.findSysDicTypeAll(searchValue);
	}

	@Override
	public void saveSysDicType(SysDicTypePo sysDicTypePo) {
		sysDicTypeMapper.saveSysDicType(sysDicTypePo);
	}

	@Override
	public void deleteSysDicType(String id) {
		sysDicTypeMapper.deleteSysDicType(id);
	}

	@Override
	public void updateSysDicType(SysDicTypePo sysDicTypePo) {
		sysDicTypeMapper.updateSysDicType(sysDicTypePo);
	}

}
