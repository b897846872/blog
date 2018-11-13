package com.blog.model.po;

import java.io.Serializable;
/**
 * @author qi
 */
public class SysUserPo extends BasePo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String loginName;
	private String realName;
	private String password;
	private String email;
	private String phone;
	
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
