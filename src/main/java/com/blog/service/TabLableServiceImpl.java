package com.blog.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.common.UUIDGenerator;
import com.blog.mapper.TabLableMapper;
import com.blog.model.po.TabLablePo;
@Service
public class TabLableServiceImpl implements TabLableService{
	
	@Autowired
	TabLableMapper tabLableMapper;
	
	@Override
	public List<TabLablePo> findTabLableAll(String searchValue) {
		return tabLableMapper.findTabLableAll(searchValue);
	}

	@Override
	public void saveTabLable(TabLablePo tabLablePo) {
		tabLablePo.setId(UUIDGenerator.getUUID());
		tabLablePo.setCreateTime(new Date());
		tabLableMapper.saveTabLable(tabLablePo);
	}

	@Override
	public void deleteTabLable(String id) {
		tabLableMapper.deleteTabLable(id);
	}

	@Override
	public void updateTabLable(TabLablePo tabLablePo) {
		tabLablePo.setUpdateTime(new Date());
		tabLableMapper.updateTabLable(tabLablePo);
	}
	
}
