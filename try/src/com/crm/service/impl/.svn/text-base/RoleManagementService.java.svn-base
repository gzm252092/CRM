package com.crm.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.crm.dao.IRoleDao;
import com.crm.po.Role;
import com.crm.service.IRoleManagementService;
import com.crm.vo.RoleManagementVo;
import com.crm.vo.RoleVo;

public class RoleManagementService implements IRoleManagementService {
	private IRoleDao roledao;
	public RoleManagementVo getRoleData() {
		// TODO Auto-generated method stub
		List<Role> lrs = roledao.findall();
		RoleManagementVo rmv = new RoleManagementVo();
		rmv.setLrvs(p2v(lrs));
		return rmv;
	}
	
	private List<RoleVo> p2v(List<Role> lrs) {
		// TODO Auto-generated method stub
		List<RoleVo> lrvs = null;
		if(lrs==null || lrs.size()==0){
			return lrvs;
		}
		lrvs = new ArrayList<RoleVo>();
		for(int i=0;i<lrs.size();i++){
			RoleVo rv = p2v(lrs.get(i));
			lrvs.add(rv);
		}
		return lrvs;
	}
	private RoleVo p2v(Role role) {
		// TODO Auto-generated method stub
		RoleVo rv = new RoleVo();
		rv.setRoleid(role.getRoleid());
		rv.setRolename(role.getRolename());
		return rv;
	}

	public void setRoledao(IRoleDao roledao) {
		this.roledao = roledao;
	}

	public Serializable addRole(Role r) {
		// TODO Auto-generated method stub
		return roledao.addRole(r);
	}

	public void delRole(long roleid) {
		// TODO Auto-generated method stub
		roledao.delRole(roleid);
	}

	public void modRole(long roleid,String rolename) {
		// TODO Auto-generated method stub
		Role r = roledao.findbyid(roleid);
		r.setRolename(rolename);
		roledao.modRole(r);
	}
	
	
}
