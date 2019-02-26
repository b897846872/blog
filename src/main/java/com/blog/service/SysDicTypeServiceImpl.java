package com.blog.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.common.UUIDGenerator;
import com.blog.mapper.SysDicTypeMapper;
import com.blog.model.po.SysDicTypePo;

@Service
public class SysDicTypeServiceImpl implements SysDicTypeService {
	@Autowired
	SysDicTypeMapper sysDicTypeMapper;
	
	@Override
	public List<SysDicTypePo> findSysDicTypeAll(String searchValue) {
		return sysDicTypeMapper.findSysDicTypeAll(searchValue);
	}

	@Override
	public void saveSysDicType(SysDicTypePo sysDicTypePo) {
		sysDicTypePo.setId(UUIDGenerator.getUUID());
		sysDicTypePo.setCreateTime(new Date());
		sysDicTypeMapper.saveSysDicType(sysDicTypePo);
	}

	@Override
	public void deleteSysDicType(String id) {
		sysDicTypeMapper.deleteSysDicType(id);
	}

	@Override
	public void updateSysDicType(SysDicTypePo sysDicTypePo) {
		sysDicTypePo.setUpdateTime(new Date());
		sysDicTypeMapper.updateSysDicType(sysDicTypePo);
	}

}
