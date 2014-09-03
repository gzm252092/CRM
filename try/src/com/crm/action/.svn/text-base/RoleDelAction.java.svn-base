package com.crm.action;

import com.crm.po.Role;
import com.crm.service.IRoleManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class RoleDelAction extends ActionSupport {
	private IRoleManagementService roleservice;
	private String res;
	private long roleid[];
	
	public String del(){
		res = "yes";
		long k = -1;
		try{
			for(int i=0;i<roleid.length;i++){
				k = roleid[i];
				roleservice.delRole(roleid[i]);
			}
		}catch(Exception e){
			res = k+"";
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

	public void setRes(String res) {
		this.res = res;
	}

	public void setRoleid(long[] roleid) {
		this.roleid = roleid;
	}

	
	
	
}
