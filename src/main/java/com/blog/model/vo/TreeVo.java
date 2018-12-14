package com.blog.model.vo;

import java.util.List;

public class TreeVo {
	private String id;
	private String parentId;
	private String parentName;
	private String title;
	private String code;
	private Boolean expand = true;
	private SysPermissionVo sysPermissionVo;
	private List<TreeVo> children;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Boolean getExpand() {
		return expand;
	}
	public void setExpand(Boolean expand) {
		this.expand = expand;
	}
	public List<TreeVo> getChildren() {
		return children;
	}
	public void setChildren(List<TreeVo> children) {
		this.children = children;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	public SysPermissionVo getSysPermissionVo() {
		return sysPermissionVo;
	}
	public void setSysPermissionVo(SysPermissionVo sysPermissionVo) {
		this.sysPermissionVo = sysPermissionVo;
	}
}
