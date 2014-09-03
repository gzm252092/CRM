package com.crm.action;

import com.crm.po.Role;
import com.crm.service.IRoleManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class RoleAddAction extends ActionSupport {
	private IRoleManagementService roleservice;
	private String res;
	private String rolename;
	
	public String add(){
		Role r = new Role();
		r.setRolename(rolename);
		res = roleservice.addRole(r).toString();
		return "json";
	}
	public String getRes() {
		return res;
	}
	public void setRoleservice(IRoleManagementService roleservice) {
		this.roleservice = roleservice;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
}
