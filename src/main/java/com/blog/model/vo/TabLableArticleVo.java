package com.blog.model.vo;

import java.io.Serializable;

import com.blog.model.po.BasePo;

public class TabLableArticleVo extends BasePo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String lid;
	private String aid;
	private String title;
	private String lableName;
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLableName() {
		return lableName;
	}
	public void setLableName(String lableName) {
		this.lableName = lableName;
	}
}
