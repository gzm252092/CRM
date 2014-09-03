package com.crm.action;

import com.crm.po.Role;
import com.crm.service.IRoleManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class RoleEditAction extends ActionSupport {
	private IRoleManagementService roleservice;
	private String res;
	private String rolename;
	private long roleid;
	
	public String edit(){
		
		res = "yes";
		try{
			roleservice.modRole(roleid, rolename);
		}catch(Exception e){
			res = "no";
			e.printStackTrace();
		}
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

	public void setRoleid(long roleid) {
		this.roleid = roleid;
	}
	
	
	
}
