package com.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.SysPermissionMapper;
import com.blog.model.po.SysPermissionPo;
import com.blog.model.vo.SysPermissionVo;
import com.blog.model.vo.TreeVo;

@Service
public class SysPermissionServiceImpl implements SysPermissionService {
	
	@Autowired
	SysPermissionMapper sysPermissionMapper;
	
	@Override
	public List<SysPermissionVo> findSysPermissionByUserId(String userId) {
		return sysPermissionMapper.findSysPermissionByUserId(userId);
	}

	@Override
	public void saveSysPermission(SysPermissionPo sysPermissionPo) {
		sysPermissionMapper.saveSysPermission(sysPermissionPo);
	}

	@Override
	public void deleteSysPermission(String id) {
		sysPermissionMapper.deleteSysPermission(id);
	}

	@Override
	public void updateSysPermission(SysPermissionPo sysPermissionPo) {
		sysPermissionMapper.updateSysPermission(sysPermissionPo);
	}

	@Override
	public List<TreeVo> findSysPermissionAll() {
		List<SysPermissionVo> sysPermissionVolist = sysPermissionMapper.findSysPermissionAll();
		
		
		return null;
	}
	
	private List<TreeVo> getTree(List<SysPermissionVo> sysPermissionVolist) {
		if (sysPermissionVolist.size() > 0) {
			for (SysPermissionVo sysPermissionVo : sysPermissionVolist) {
				
			}
		}
		return null;
	}
}
