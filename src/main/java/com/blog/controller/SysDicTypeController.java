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
import com.blog.model.po.SysDicPo;
import com.blog.model.po.SysDicTypePo;
import com.blog.service.SysDicService;
import com.blog.service.SysDicTypeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("sysDicType")
@RestController
public class SysDicTypeController {
	private static Logger log = LoggerFactory.getLogger(SysDicTypeController.class);
	@Autowired
	private SysDicTypeService sysDicTypeService;
	
	@GetMapping("list")
	@SuppressWarnings("rawtypes")
	public ResponseResult list(@RequestParam(required = true) String pageNum, 
									@RequestParam(required = true) String pageSize,
									@RequestParam(required = false) String searchValue) {
        PageHelper.startPage(Integer.parseInt(pageNum), Integer.parseInt(pageSize));
        PageInfo<SysDicTypePo> sysDicTypePageInfo = new PageInfo<>(sysDicTypeService.findSysDicTypeAll(searchValue));
		return ResponseResultUtil.success(sysDicTypePageInfo);
	}
	
	@PutMapping("save")
	@SuppressWarnings("rawtypes")
	public ResponseResult save(@RequestBody SysDicTypePo sysDicTypePo){
		sysDicTypeService.saveSysDicType(sysDicTypePo);
		return ResponseResultUtil.success();
	}
	
	@DeleteMapping("delete")
	@SuppressWarnings("rawtypes")
	public ResponseResult delete(@RequestParam String id){
		sysDicTypeService.deleteSysDicType(id);
		return ResponseResultUtil.success();
	}
	
	@PutMapping("updateSysDic")
	@SuppressWarnings("rawtypes")
	public ResponseResult updateSysDic(@RequestBody SysDicTypePo sysDicTypePo){
		sysDicTypeService.updateSysDicType(sysDicTypePo);
		return ResponseResultUtil.success();
	}
}
