package com.crm.action;

import com.crm.service.IRoleManagementService;
import com.crm.vo.RoleManagementVo;
import com.opensymphony.xwork2.ActionSupport;

public class RoleLoadAction extends ActionSupport {
	private IRoleManagementService roleservice;
	private RoleManagementVo rmv;
	
	public String load(){
		System.out.println("adsfgsadf");
		rmv = roleservice.getRoleData();
		System.out.println(rmv.getLrvs().size());
		return "json";
	}
	
	public RoleManagementVo getRmv() {
		return rmv;
	}
	public void setRoleservice(IRoleManagementService roleservice) {
		this.roleservice = roleservice;
	}
	
	
}
