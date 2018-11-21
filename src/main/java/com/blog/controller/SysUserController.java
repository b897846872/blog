package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.blog.common.ResponseResultUtil;
import com.blog.model.ResponseResult;
import com.blog.model.po.SysUserPo;
import com.blog.service.SysUserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("user")
@RestController
public class SysUserController {
	private static Logger log = LoggerFactory.getLogger(SysUserController.class);
	@Autowired
	private SysUserService userService;
	
	@GetMapping("list")
	@SuppressWarnings("rawtypes")
	public ResponseResult list(@RequestParam(required = true) String pageNum, 
									@RequestParam(required = true) String pageSize,
									@RequestParam(required = false) String searchValue) {
        PageHelper.startPage(Integer.parseInt(pageNum), Integer.parseInt(pageSize));
        PageInfo<SysUserPo> userPageInfo = new PageInfo<>(userService.findAllUser(searchValue));
        log.info("用户列表", userPageInfo);
		return ResponseResultUtil.success(userPageInfo);
	}
}
