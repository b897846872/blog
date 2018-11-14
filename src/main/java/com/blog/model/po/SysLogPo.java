package com.blog.model.po;

public class SysLogPo {
	private String ip;
	private String operateUser;
	private String operateModile;
	private String logContent;
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getOperateUser() {
		return operateUser;
	}
	public void setOperateUser(String operateUser) {
		this.operateUser = operateUser;
	}
	public String getOperateModile() {
		return operateModile;
	}
	public void setOperateModile(String operateModile) {
		this.operateModile = operateModile;
	}
	public String getLogContent() {
		return logContent;
	}
	public void setLogContent(String logContent) {
		this.logContent = logContent;
	}
}
