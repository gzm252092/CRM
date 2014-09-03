package com.crm.action;

import com.crm.service.IAuthManagementService;
import com.crm.vo.AuthManagementVo;
import com.opensymphony.xwork2.ActionSupport;

public class AuthLoadAction extends ActionSupport {
	private IAuthManagementService authservice;
	private AuthManagementVo amv;
	
	public String load(){
		amv = authservice.getAuthData();
		return "json";
	}
	public AuthManagementVo getAmv() {
		return amv;
	}
	public void setAuthservice(IAuthManagementService authservice) {
		this.authservice = authservice;
	}
	
	
}
