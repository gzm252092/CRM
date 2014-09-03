package com.crm.action;

import com.crm.service.IPageManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class PageDelAction extends ActionSupport {
	private long rightid;
	private String res;
	private IPageManagementService pageservice;
	
	public String del(){
		res = "yes";
		try{
			pageservice.delRight(rightid);
		}catch(Exception e){
			res = "no";
			e.printStackTrace();
		}
		return "json";
	}
	public String getRes() {
		return res;
	}
	
	public void setRightid(long rightid) {
		this.rightid = rightid;
	}
	public void setPageservice(IPageManagementService pageservice) {
		this.pageservice = pageservice;
	}
	
	
}
