package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.blog.common.ResponseResultUtil;
import com.blog.model.ResponseResult;
import com.blog.model.po.SysConfigPo;
import com.blog.model.po.SysUserPo;
import com.blog.service.SysConfigService;
import com.blog.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("sysConfig")
@RestController
public class SysConfigController {
	private static Logger log = LoggerFactory.getLogger(SysConfigController.class);
	@Autowired
	private SysConfigService sysConfigService;
	
	@GetMapping("list")
	@SuppressWarnings("rawtypes")
	public ResponseResult list(@RequestParam(required = true) String pageNum, 
									@RequestParam(required = true) String pageSize) {
        PageHelper.startPage(Integer.parseInt(pageNum), Integer.parseInt(pageSize));
        PageInfo<SysConfigPo> sysConfigPageInfo = new PageInfo<>(sysConfigService.findSysConfigAll());
        log.info("系统配置列表", sysConfigPageInfo);
		return ResponseResultUtil.success(sysConfigPageInfo);
	}
	
	@PutMapping("save")
	@SuppressWarnings("rawtypes")
	public ResponseResult save(@RequestBody SysConfigPo sysConfigPo){
		sysConfigService.saveSysConfig(sysConfigPo);
		return ResponseResultUtil.success();
	}
	
	@DeleteMapping("delete")
	@SuppressWarnings("rawtypes")
	public ResponseResult delete(@RequestParam String id){
		sysConfigService.deleteSysConfig(id);
		return ResponseResultUtil.success();
	}
	
	@PutMapping("update")
	@SuppressWarnings("rawtypes")
	public ResponseResult update(@RequestParam String name, @RequestParam String value){
		Map<String, String> param = new HashMap<>();
		param.put("name", name);
		param.put("value", value);
		sysConfigService.updateSysConfig(param);
		return ResponseResultUtil.success();
	}
}
