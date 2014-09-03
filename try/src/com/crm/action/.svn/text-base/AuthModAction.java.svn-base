package com.crm.action;

import com.crm.service.IAuthManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class AuthModAction extends ActionSupport {
	private IAuthManagementService authservice;
	private String res;
	private long roleid;
	private long[] rightid;
	
	public String mod(){
		res = "yes";
		try{
			authservice.modAuth(roleid, rightid);
		}catch(Exception e){
			res = "no";
			e.printStackTrace();
		}
		return "json";
	}
	
	
	public String getRes() {
		return res;
	}
	public void setAuthservice(IAuthManagementService authservice) {
		this.authservice = authservice;
	}


	public void setRoleid(long roleid) {
		this.roleid = roleid;
	}


	public void setRightid(long[] rightid) {
		this.rightid = rightid;
	}
	
	
}
