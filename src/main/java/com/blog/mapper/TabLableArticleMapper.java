package com.blog.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysConfigPo;
import com.blog.model.po.TabLableArticlePo;
import com.blog.model.po.TabLablePo;
import com.blog.model.vo.TabLableArticleVo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface TabLableArticleMapper extends BaseMapper<TabLableArticlePo>{
	List<TabLableArticleVo> findTabLableArticleAll(String aid);
	void saveTabLableArticle(TabLableArticlePo tabLableArticlePo);
	void deleteTabLableArticle(String aid);
}
