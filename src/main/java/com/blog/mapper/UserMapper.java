package com.blog.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.blog.model.po.SysUserPo;

@Mapper
public interface UserMapper {
	List<SysUserPo> findUserAll();
}
