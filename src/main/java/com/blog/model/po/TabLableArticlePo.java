package com.blog.model.po;

import java.io.Serializable;

public class TabLableArticlePo extends BasePo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String lid;
	private String aid;
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
}
