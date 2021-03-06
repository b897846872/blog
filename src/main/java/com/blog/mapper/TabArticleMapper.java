package com.blog.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.TabArticlePo;
import com.blog.model.vo.TabArticleVo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface TabArticleMapper extends BaseMapper<TabArticlePo>{
	List<TabArticleVo> findTabArticle(Map<String, String> param);
	void saveTabArticle(TabArticleVo tabArticleVo);
	void deleteTabArticle(String id);
	void updateTabArticle(TabArticleVo tabArticleVo);
	List<TabArticleVo> findTabArticleBylable(Map<String, String> param);
}
