package com.blog.config.aspect;

import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


import lombok.extern.slf4j.Slf4j;
@Slf4j
@Aspect
@Component
/**
 * 系统日志拦截器
 * 
 * @author qi
 *
 */
public class OperLogAspect {
	@Autowired
	SysLogService sysLogService;
	
	/**
	 * service层拦截
	 */
	@Pointcut("execution(* com.git.aoms.service.*.*(..))")
	public void log() {
	}

	/**
	 * 登录拦截
	 */
	@Pointcut("execution(* com.git.aoms.controller.PageController.*(..))")
	public void logLogin() {
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Before("log()")
	public void doBefore(JoinPoint joinPoint) throws Exception {
		String operName = "";
		String operType = "";
		String moduleName = "";
		String moduleType = "";
		String operContent = "";
		boolean hasRecord = true;
		Class targetClass = null;
		String targetName = joinPoint.getTarget().getClass().getName();
		String methodName = joinPoint.getSignature().getName();
		Object[] arguments = joinPoint.getArgs();
		// 获取类注解 模块名称、类型
		targetClass = Class.forName(targetName);
		if (targetClass.getAnnotation(OperLog.class) != null) {
			moduleName = ((OperLog) targetClass.getAnnotation(OperLog.class)).moduleName();
			moduleType = ((OperLog) targetClass.getAnnotation(OperLog.class)).moduleType();
		}
		// 获取方法注解 操作名称、类型
		Method[] methods = targetClass.getMethods();
		for (Method method : methods) {
			if (method.getName().equals(methodName)) {
				Class[] clazzs = method.getParameterTypes();
				if (clazzs != null && clazzs.length == arguments.length
						&& method.getAnnotation(OperLog.class) != null) {
					operName = method.getAnnotation(OperLog.class).operName();
					operType = method.getAnnotation(OperLog.class).operType();
					break;
				}
			}
		}
		// 获取方法参数
		Object[] obj = joinPoint.getArgs();
		if (operType.equals(OperateEnum.INSERT.getValue())) {
			operContent = ResolveObjectUtils.getObjectFieldString(obj.length == 1 ? obj[0] : obj[0], null);
		} else if (operType.equals(OperateEnum.UPDATE.getValue())) {
			operContent = "修改为：" + ResolveObjectUtils.getObjectFieldString(obj.length == 1 ? obj[0] : obj[0], null);
		} else if (operType.equals(OperateEnum.DELETE.getValue())) {
			operContent = "删除了【" + (obj.length > 0 ? obj[0] : "") + "】";
		} else if (operType.equals(OperateEnum.EXECUTEID.getValue())) {
			operContent = "运行了" + ResolveObjectUtils.getObjectFieldString(obj.length == 1 ? obj[0] : obj[0], null);
		} else if (operType.equals(OperateEnum.SPECIAL.getValue())) {
			StringBuffer contentBuff = new StringBuffer();
			for (int i = 0; i < obj.length; i++) {
				contentBuff.append(obj[i]);
				contentBuff.append(",");
			}
			operContent = contentBuff.toString();
		}
		if ("".equals(operName) && "".equals(operType)) {
			hasRecord = false;
		}
		if (hasRecord) {
			this.saveSysLog(moduleName, moduleType, operName, operType, operContent);
		}
	}

	@AfterReturning(returning = "object", pointcut = "log() || logLogin()")
	public void doAfterReturning(JoinPoint joinPoint, Object object) {
		String targetName = joinPoint.getTarget().getClass().getName();
		String methodName = joinPoint.getSignature().getName();
		String operContent = "";
		// 登录类名和方法名
		String loginClass = "com.git.aoms.controller.PageController";
		String loginMethod = "index";
		if (targetName.equals(loginClass) && methodName.equals(loginMethod)) {
			Result<?> result = (Result<?>) object;
			// 登录成功
			if (result.getCode() == 0) {
				SysUser sysUser = getCurrentUser();
				operContent = "【" + sysUser.getLoginName() + "】：登录成功!";
				this.saveSysLog("系统平台", "REQUEST", "用户登录", "SPECIAL", operContent);
			}
		}
	}
	
	/**
	 * 保存系统日志
	 * @param moduleName
	 * @param moduleType
	 * @param operName
	 * @param operType
	 * @param operContent
	 */
	private void saveSysLog(String moduleName, String moduleType, String operName, String operType,
			String operContent) {
		SysUser sysUser = getCurrentUser();
		String operator = "";
		String ip = "";
		if (sysUser != null) {
			operator = sysUser.getLoginName();
		}
		try {
			InetAddress address = getLocalHostLANAddress();
			ip = address.getHostAddress();
		} catch (Exception e) {
			log.error("获取本机IP失败", e);
		}
		LogPo logPo = new LogPo();
		String id = UUIDGenerator.getUUID();
		logPo.setId(id);
		logPo.setOperateTime(new Date(System.currentTimeMillis()));
		logPo.setOperator(operator);

		logPo.setModuleName(moduleName);
		logPo.setModuleType(moduleType);
		logPo.setOperateName(operName);
		logPo.setOperateType(operType);
		logPo.setOperateContent(operContent);
		logPo.setIpAddr(ip);
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
	private SysUser getCurrentUser() {
		ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		HttpServletRequest request = attributes.getRequest();
		HttpSession session = request.getSession();
		SysUser sysUser = (SysUser) session.getAttribute("currentUser");
		return sysUser;
	}
	
	/**
	 * 获取本机IP地址
	 * @return
	 * @throws Exception
	 */
	private InetAddress getLocalHostLANAddress() throws Exception {
		try {
			InetAddress candidateAddress = null;
			// 遍历所有的网络接口
			for (Enumeration<?> ifaces = NetworkInterface.getNetworkInterfaces(); ifaces.hasMoreElements();) {
				NetworkInterface iface = (NetworkInterface) ifaces.nextElement();
				// 在所有的接口下再遍历IP
				for (Enumeration<?> inetAddrs = iface.getInetAddresses(); inetAddrs.hasMoreElements();) {
					InetAddress inetAddr = (InetAddress) inetAddrs.nextElement();
					if (!inetAddr.isLoopbackAddress()) {// 排除loopback类型地址
						if (inetAddr.isSiteLocalAddress()) {
							// 如果是site-local地址，就是它了
							return inetAddr;
						} else if (candidateAddress == null) {
							// site-local类型的地址未被发现，先记录候选地址
							candidateAddress = inetAddr;
						}
					}
				}
			}
			if (candidateAddress != null) {
				return candidateAddress;
			}
			// 如果没有发现 non-loopback地址.只能用最次选的方案
			InetAddress jdkSuppliedAddress = InetAddress.getLocalHost();
			return jdkSuppliedAddress;
		} catch (Exception e) {
			log.error(e.getMessage(),e);;
		}
		return null;
	}

}
