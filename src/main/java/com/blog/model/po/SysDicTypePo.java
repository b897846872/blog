package com.blog.model.po;

import java.io.Serializable;

public class SysDicTypePo extends BasePo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String dicTypeName;
	private String remark;
	public String getDicTypeName() {
		return dicTypeName;
	}
	public void setDicTypeName(String dicTypeName) {
		this.dicTypeName = dicTypeName;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
