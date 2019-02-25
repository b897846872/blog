package com.blog.service;

import java.util.List;

import com.blog.model.po.TabLablePo;

public interface TabLableService {
	List<TabLablePo> findTabLableAll(String searchValue);
	void saveTabLable(TabLablePo tabLablePo);
	void deleteTabLable(String id);
	void updateTabLable(TabLablePo tabLablePo);
}
