package com.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blog.model.SysUserPo;
import com.blog.service.UserService;

@RequestMapping("user")
@RestController
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("list")
	public List<SysUserPo> list() {
		return userService.findAllUser();
	}
}
