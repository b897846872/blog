package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.blog.common.ResponseResultUtil;
import com.blog.model.ResponseResult;
import com.blog.model.po.SysConfigPo;
import com.blog.model.po.TabLablePo;
import com.blog.service.SysConfigService;
import com.blog.service.TabLableService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("tabLable")
@RestController
public class tabLableController {
	private static Logger log = LoggerFactory.getLogger(tabLableController.class);
	@Autowired
	private TabLableService tabLableService;
	
	@GetMapping("list")
	@SuppressWarnings("rawtypes")
	public ResponseResult list(@RequestParam(required = true) String pageNum, 
									@RequestParam(required = true) String pageSize,
									@RequestParam(required = false) String searchValue) {
        PageHelper.startPage(Integer.parseInt(pageNum), Integer.parseInt(pageSize));
        PageInfo<TabLablePo> tabLablePageInfo = new PageInfo<>(tabLableService.findTabLableAll(searchValue));
		return ResponseResultUtil.success(tabLablePageInfo);
	}
	
	@PutMapping("save")
	@SuppressWarnings("rawtypes")
	public ResponseResult save(@RequestBody TabLablePo tabLablePo){
		tabLableService.saveTabLable(tabLablePo);
		return ResponseResultUtil.success();
	}
	
	@DeleteMapping("delete")
	@SuppressWarnings("rawtypes")
	public ResponseResult delete(@RequestParam String id){
		tabLableService.deleteTabLable(id);
		return ResponseResultUtil.success();
	}
	
	@PutMapping("update")
	@SuppressWarnings("rawtypes")
	public ResponseResult update(@RequestBody TabLablePo tabLablePo){
		tabLableService.updateTabLable(tabLablePo);
		return ResponseResultUtil.success();
	}
}
