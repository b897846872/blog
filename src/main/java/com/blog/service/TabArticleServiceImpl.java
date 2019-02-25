package com.blog.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.common.Common;
import com.blog.common.UUIDGenerator;
import com.blog.mapper.TabArticleMapper;
import com.blog.model.annotation.OperLog;
import com.blog.model.po.TabArticlePo;
import com.blog.model.po.TabLableArticlePo;
import com.blog.model.po.TabLablePo;
import com.blog.model.vo.TabArticleVo;
import com.blog.model.vo.TabLableArticleVo;

@Service
public class TabArticleServiceImpl implements TabArticleService {
	@Autowired
	TabArticleMapper tabArticleMapper;
	@Autowired
	TabLableArticleService tabLableArticleService;
	@Autowired
	TabLableService tabLableService;
	
	@Override
	public List<TabArticleVo> findTabArticle(Map<String, String> param) {
		return tabArticleMapper.findTabArticle(param);
	}

	@Override
	@OperLog(operateModule="保存文章")
	public void saveTabArticle(TabArticleVo tabArticleVo) {
		String articleId = UUIDGenerator.getUUID();
		tabArticleVo.setId(articleId);
		tabArticleVo.setCreateTime(new Date());
		tabArticleVo.setUserId(Common.getCurrentUserId());
		tabArticleMapper.saveTabArticle(tabArticleVo);
		
		// 保存标签
		for (int i = 0; i < tabArticleVo.getLableArticlelist().size(); i++) {
			TabLablePo tabLablePo = new TabLablePo();
			String lid = UUIDGenerator.getUUID();
			tabLablePo.setId(lid);
			tabLablePo.setName(tabArticleVo.getLableArticlelist().get(i).getLableName());
			tabLablePo.setCreateTime(new Date());
			tabLableService.saveTabLable(tabLablePo);
			
			TabLableArticlePo tabLableArticlePo = new TabLableArticlePo();
			tabLableArticlePo.setAid(tabArticleVo.getId());
			tabLableArticlePo.setLid(lid);
			tabLableArticleService.saveTabLableArticle(tabLableArticlePo);
		}
	}

	@Override
	@OperLog(operateModule="删除文章")
	public void deleteTabArticle(String id) {
		tabArticleMapper.deleteTabArticle(id);
		
		// 删除关联标签数据
		tabLableArticleService.deleteTabLableArticle(id);
		List<TabLableArticleVo> lableArticlelist = tabLableArticleService.findTabLableArticleAll(id);
		for (int i = 0; i < lableArticlelist.size(); i++) {
			tabLableService.deleteTabLable(lableArticlelist.get(i).getLid());
		}
	}

	@Override
	@OperLog(operateModule="修改文章")
	public void updateTabArticle(TabArticleVo tabArticleVo) {
		tabArticleVo.setUpdateTime(new Date());
		tabArticleMapper.updateTabArticle(tabArticleVo);
		
		String aid = tabArticleVo.getId();
		// 删除关联标签数据
		tabLableArticleService.deleteTabLableArticle(aid);
		List<TabLableArticleVo> lableArticlelist = tabLableArticleService.findTabLableArticleAll(aid);
		for (int i = 0; i < lableArticlelist.size(); i++) {
			tabLableService.deleteTabLable(lableArticlelist.get(i).getLid());
		}
		// 保存标签
		for (int i = 0; i < tabArticleVo.getLableArticlelist().size(); i++) {
			TabLablePo tabLablePo = new TabLablePo();
			String lid = UUIDGenerator.getUUID();
			tabLablePo.setId(lid);
			tabLablePo.setName(tabArticleVo.getLableArticlelist().get(i).getLableName());
			tabLablePo.setCreateTime(new Date());
			tabLableService.saveTabLable(tabLablePo);
			
			TabLableArticlePo tabLableArticlePo = new TabLableArticlePo();
			tabLableArticlePo.setAid(tabArticleVo.getId());
			tabLableArticlePo.setLid(lid);
			tabLableArticleService.saveTabLableArticle(tabLableArticlePo);
		}
	}

	@Override
	public List<TabArticleVo> findTabArticleBylable(Map<String, String> param) {
		return tabArticleMapper.findTabArticleBylable(param);
	}

}
