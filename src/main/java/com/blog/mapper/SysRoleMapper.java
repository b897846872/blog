package com.blog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysRolePo;

import tk.mybatis.mapper.common.BaseMapper;

@Mapper
public interface SysRoleMapper extends BaseMapper<SysRolePo>{
	List<SysRolePo> findSysRoleByUserId(String userId);
}
