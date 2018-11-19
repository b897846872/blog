package com.blog.config.aspect;

import java.lang.reflect.Method;
import java.net.InetAddress;
import java.util.Date;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.blog.common.LocalAddressUtil;
import com.blog.common.ResolveMethodParameter;
import com.blog.common.UUIDGenerator;
import com.blog.model.annotation.OperLog;
import com.blog.model.po.SysLogPo;
import com.blog.service.SysLogService;


@Aspect
@Component
/**
 * 系统日志拦截器
 * 
 * @author qi
 *
 */
public class OperLogAspect {
	private static Logger log = LoggerFactory.getLogger(OperLogAspect.class);
	@Autowired
	SysLogService sysLogService;
	
	/**
	 * service层拦截
	 */
	@Pointcut("execution(* com.blog.service.*.*(..))")
	public void log() {
	}

	/**
	 * 登录拦截
	 */
	@Pointcut("execution(* com.blog.controller.UserController.*(..))")
	public void logLogin() {
	}

	@SuppressWarnings({ "rawtypes" })
	@Before("log()")
	public void doBefore(JoinPoint joinPoint) throws Exception {
		String operateModule = "";
		String logContent = "";
		boolean hasRecord = true;
		Class targetClass = null;
		String targetName = joinPoint.getTarget().getClass().getName();
		String methodName = joinPoint.getSignature().getName();
		Object[] arguments = joinPoint.getArgs();
		// 获取类注解 模块名称、类型
		targetClass = Class.forName(targetName);
//		if (targetClass.getAnnotation(OperLog.class) != null) {
//			moduleName = ((OperLog) targetClass.getAnnotation(OperLog.class)).moduleName();
//			moduleType = ((OperLog) targetClass.getAnnotation(OperLog.class)).moduleType();
//		}
		// 获取方法注解 操作名称、类型
		Method[] methods = targetClass.getMethods();
		for (Method method : methods) {
			if (method.getName().equals(methodName)) {
				Class[] clazzs = method.getParameterTypes();
				if (clazzs != null && clazzs.length == arguments.length
						&& method.getAnnotation(OperLog.class) != null) {
					operateModule = method.getAnnotation(OperLog.class).operateModule();
					break;
				}
			}
		}
		// 获取方法参数
		Object[] obj = joinPoint.getArgs();
		if (obj.length > 0 && obj[0] != null) {
			logContent = ResolveMethodParameter.resolveObj(obj[0]);
		}
		if ("".equals(operateModule)) {
			hasRecord = false;
		}
		if (hasRecord) {
			this.saveSysLog(operateModule, logContent);
		}
	}

	@AfterReturning(returning = "object", pointcut = "log() || logLogin()")
	public void doAfterReturning(JoinPoint joinPoint, Object object) {
//		String targetName = joinPoint.getTarget().getClass().getName();
//		String methodName = joinPoint.getSignature().getName();
//		String operContent = "";
//		// 登录类名和方法名
//		String loginClass = "com.git.aoms.controller.PageController";
//		String loginMethod = "index";
//		if (targetName.equals(loginClass) && methodName.equals(loginMethod)) {
//			Result<?> result = (Result<?>) object;
//			// 登录成功
//			if (result.getCode() == 0) {
//				SysUser sysUser = getCurrentUser();
//				operContent = "【" + sysUser.getLoginName() + "】：登录成功!";
//				this.saveSysLog("系统平台", "REQUEST", "用户登录", "SPECIAL", operContent);
//			}
//		}
	}
	
	/**
	 * 保存系统日志
	 */
	private void saveSysLog(String operateModule, String logContent) {
		String ip = "";
		try {
			InetAddress address = LocalAddressUtil.getLocalHostLANAddress();
			ip = address.getHostAddress();
		} catch (Exception e) {
			log.error("获取本机IP失败", e);
		}
		SysLogPo logPo = new SysLogPo();
		String id = UUIDGenerator.getUUID();
		logPo.setIp(ip);
		logPo.setId(id);
		logPo.setLogContent(logContent);
		logPo.setOperateUser("admin");
		logPo.setOperateModule(operateModule);
		logPo.setCreateTime(new Date());
		try {
			sysLogService.saveSysLog(logPo);
		} catch (Exception e) {
			log.error("系统日志保存失败", e);
		}
	}
	
	/**
	 * 获取当前用户
	 * @return
	 */
//	private SysUser getCurrentUser() {
//		ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
//		HttpServletRequest request = attributes.getRequest();
//		HttpSession session = request.getSession();
//		SysUser sysUser = (SysUser) session.getAttribute("currentUser");
//		return sysUser;
//	}

}
