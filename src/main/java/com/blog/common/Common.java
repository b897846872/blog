package com.blog.common;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

import com.blog.model.vo.SysUserVo;

public class Common {
	
	/**
	 * 获取当前用户id
	 * @return
	 */
	public static String getCurrentUserId(){
        Session session = SecurityUtils.getSubject().getSession();
        SysUserVo sysUserVo = (SysUserVo) session.getAttribute("user");
        if (sysUserVo == null) {
        	return "1";
        }
        return sysUserVo.getId();
	}
	
	/**
	 * 获取当前登录名
	 * @return
	 */
	public static String getCurrentUserName(){
        Session session = SecurityUtils.getSubject().getSession();
        SysUserVo sysUserVo = (SysUserVo) session.getAttribute("user");
        if (sysUserVo == null) {
        	return "admin";
        }
        return sysUserVo.getLoginName();
	}
}
