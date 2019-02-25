package com.blog.service;

import java.util.List;

import com.blog.model.po.TabLableArticlePo;
import com.blog.model.po.TabLablePo;
import com.blog.model.vo.TabLableArticleVo;

public interface TabLableArticleService {
	List<TabLableArticleVo> findTabLableArticleAll(String aid);
	void saveTabLableArticle(TabLableArticlePo tabLableArticlePo);
	void deleteTabLableArticle(String aid);
}
