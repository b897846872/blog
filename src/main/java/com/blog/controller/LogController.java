package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.blog.common.ResponseResultUtil;
import com.blog.model.ResponseResult;
import com.blog.model.po.SysLogPo;
import com.blog.model.po.SysUserPo;
import com.blog.service.SysLogService;
import com.blog.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("log")
@RestController
public class LogController {
	private static Logger log = LoggerFactory.getLogger(LogController.class);
	@Autowired
	private SysLogService sysLogService;
	
	@GetMapping("list")
	@SuppressWarnings("rawtypes")
	public ResponseResult list(@RequestParam(required = true) String pageNum, 
									@RequestParam(required = true) String pageSize) {
        PageHelper.startPage(Integer.parseInt(pageNum), Integer.parseInt(pageSize));
        PageInfo<SysLogPo> logPageInfo = new PageInfo<>(sysLogService.findSysLogAll());
        log.info("系统日志列表", logPageInfo);
		return ResponseResultUtil.success(logPageInfo);
	}
	
	@PostMapping("save")
	@SuppressWarnings("rawtypes")
	public ResponseResult save(@RequestBody SysLogPo sysLogPo) {
		sysLogService.saveSysLog();
		return ResponseResultUtil.success();
	}
}
