package com.blog.model.po;

import java.io.Serializable;

public class tabArticlePo extends BasePo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	private String userId;
	private String content;
	private String category;
	private String type;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
