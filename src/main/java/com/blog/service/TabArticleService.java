package com.blog.service;

import java.util.List;
import java.util.Map;

import com.blog.model.po.TabArticlePo;
import com.blog.model.vo.TabArticleVo;

public interface TabArticleService {
	List<TabArticleVo> findTabArticle(Map<String, String> param);
	void saveTabArticle(TabArticleVo tabArticleVo);
	void deleteTabArticle(String id);
	void updateTabArticle(TabArticleVo tabArticleVo);
	List<TabArticleVo> findTabArticleBylable(Map<String, String> param);
}
