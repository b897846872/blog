package com.blog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysPermissionPo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface SysPermissionMapper extends BaseMapper<SysPermissionPo>{
	List<SysPermissionPo> findSysPermissionByUserId(String userId);
}
