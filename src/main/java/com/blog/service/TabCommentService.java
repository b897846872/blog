package com.blog.service;

import java.util.List;

import com.blog.model.po.TabCommentPo;

public interface TabCommentService {
	List<TabCommentPo> findTabCommentAll(String articleId);
	void saveTabComment(TabCommentPo tabCommentPo);
	void deleteTabComment(String id);
}
