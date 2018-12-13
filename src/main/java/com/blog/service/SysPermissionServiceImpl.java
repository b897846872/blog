package com.blog.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.common.TreeToolUtils;
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
		List<TreeVo> rootList = new ArrayList<>();
	    List<TreeVo> bodyList = new ArrayList<>();
	    
		if (sysPermissionVolist.size() > 0) {
			for (SysPermissionVo sysPermissionVo : sysPermissionVolist) {
				TreeVo tree = new TreeVo();
				tree.setTitle(sysPermissionVo.getName());
				tree.setCode(sysPermissionVo.getCode());
				tree.setId(sysPermissionVo.getId());
				tree.setParentId(sysPermissionVo.getParentId());
				if ("main".equals(sysPermissionVo.getType())) {
					rootList.add(tree);
//					continue;
				}
				bodyList.add(tree);
			}
		}
		TreeToolUtils toolUtils = new TreeToolUtils(rootList, bodyList);
		List<TreeVo> list = toolUtils.getTree();
		return list;
	}
	
}
