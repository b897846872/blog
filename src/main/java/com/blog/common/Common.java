package com.blog.common;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

import com.blog.model.vo.SysUserVo;

public class Common {
	
	/**
	 * 获取当前用户
	 * @return
	 */
	public static String getCurrentUserId(){
        Session session = SecurityUtils.getSubject().getSession();
        SysUserVo sysUserVo = (SysUserVo) session.getAttribute("user");
        if (sysUserVo.getId() != null) {
        	return sysUserVo.getId();
        }
		return "";
	}
	
	public static String getCurrentUserName(){
        Session session = SecurityUtils.getSubject().getSession();
        SysUserVo sysUserVo = (SysUserVo) session.getAttribute("user");
        if (sysUserVo.getLoginName() != null) {
        	return sysUserVo.getLoginName();
        }
		return "";
	}
}
