package com.blog.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.common.UUIDGenerator;
import com.blog.mapper.SysDicMapper;
import com.blog.model.annotation.OperLog;
import com.blog.model.po.SysDicPo;

@Service
public class SysDicServiceImpl implements SysDicService {
	
	@Autowired
	SysDicMapper sysDicMapper;
	
	
	@Override
	@OperLog(operateModule="查询系统字典")
	public List<SysDicPo> findSysDicAll(String searchValue) {
		return sysDicMapper.findSysDicAll(searchValue);
	}

	@Override
	@OperLog(operateModule="保存系统字典")
	public void saveSysDic(SysDicPo sysDicPo) {
		sysDicPo.setId(UUIDGenerator.getUUID());
		sysDicPo.setCreateTime(new Date());
		sysDicMapper.saveSysDic(sysDicPo);
	}

	@Override
	@OperLog(operateModule="删除系统字典")
	public void deleteSysDic(String id) {
		sysDicMapper.deleteSysDic(id);
	}

	@Override
	@OperLog(operateModule="修改系统字典类型")
	public void updateSysDicToDicType(SysDicPo sysDicPo) {
		sysDicPo.setUpdateTime(new Date());
		sysDicMapper.updateSysDicToDicType(sysDicPo);
	}

	@Override
	@OperLog(operateModule="修改系统字典编码")
	public void updateSysDicToDicCode(SysDicPo sysDicPo) {
		sysDicPo.setUpdateTime(new Date());
		sysDicMapper.updateSysDicToDicCode(sysDicPo);
	}

}
