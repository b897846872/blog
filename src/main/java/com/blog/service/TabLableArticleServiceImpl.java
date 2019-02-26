package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.TabLableArticleMapper;
import com.blog.model.po.TabLableArticlePo;
import com.blog.model.po.TabLablePo;
import com.blog.model.vo.TabLableArticleVo;
import com.google.common.collect.Lists;

@Service
public class TabLableArticleServiceImpl implements TabLableArticleService {
	@Autowired
	TabLableArticleMapper tabLableArticleMapper;
	
	@Override
	public List<TabLableArticleVo> findTabLableArticleAll(String aid) {
		return tabLableArticleMapper.findTabLableArticleAll(aid);
	}
	
	@Override
	public List<String> listLable(String aid) {
		List<String> lablelist = Lists.newArrayList();
		List<TabLableArticleVo> lableArticlelist = tabLableArticleMapper.findTabLableArticleAll(aid);
		if (lableArticlelist != null && lableArticlelist.size() != 0) {
			for (int i = 0; i < lableArticlelist.size(); i++) {
				lablelist.add(lableArticlelist.get(i).getLableName());
			}
		}
		return lablelist;
	}

	@Override
	public void saveTabLableArticle(TabLableArticlePo tabLableArticlePo) {
		tabLableArticleMapper.saveTabLableArticle(tabLableArticlePo);
	}

	@Override
	public void deleteTabLableArticle(String aid) {
		tabLableArticleMapper.deleteTabLableArticle(aid);
	}

}
