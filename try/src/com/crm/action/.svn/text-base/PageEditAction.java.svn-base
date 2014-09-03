package com.crm.action;

import com.crm.po.Right;
import com.crm.service.IPageManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class PageEditAction extends ActionSupport {
	private String url;
	private long rightid;
	private String name;
	private String res;
	private IPageManagementService pageservice;
	
	
	public String edit(){
		Right r = new Right();
		r.setName(name);
		r.setUrl(url);
		try{
			pageservice.modRight(r, rightid);
			res = "yes";
		}catch(Exception e){
			res = "no";
			e.printStackTrace();
		}
		return "json";
	}
	
	
	
	public String getRes() {
		return res;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void setRightid(long rightid) {
		this.rightid = rightid;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPageservice(IPageManagementService pageservice) {
		this.pageservice = pageservice;
	}
	
	
}
