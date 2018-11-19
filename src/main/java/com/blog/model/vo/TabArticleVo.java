package com.blog.model.vo;

import java.io.Serializable;

import com.blog.model.po.BasePo;

public class TabArticleVo extends BasePo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	private String userId;
	private String content;
	private String categoryId;
	private String typeId;
	private String clicks;
	private String hasOriginal;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getTypeId() {
		return typeId;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	public String getClicks() {
		return clicks;
	}
	public void setClicks(String clicks) {
		this.clicks = clicks;
	}
	public String getHasOriginal() {
		return hasOriginal;
	}
	public void setHasOriginal(String hasOriginal) {
		this.hasOriginal = hasOriginal;
	}
}
