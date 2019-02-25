package com.blog.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysConfigPo;
import com.blog.model.po.TabLablePo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface TabLableMapper extends BaseMapper<TabLablePo>{
	List<TabLablePo> findTabLableAll(String searchValue);
	void saveTabLable(TabLablePo tabLablePo);
	void deleteTabLable(String id);
	void updateTabLable(TabLablePo tabLablePo);
}
