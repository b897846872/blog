package com.blog.service;

import java.util.List;

import com.blog.model.po.SysDicTypePo;

public interface SysDicTypeService {
	List<SysDicTypePo> findSysDicTypeAll(String searchValue);
	void saveSysDicType(SysDicTypePo sysDicTypePo);
	void deleteSysDicType(String id);
	void updateSysDicType(SysDicTypePo sysDicTypePo);
}
