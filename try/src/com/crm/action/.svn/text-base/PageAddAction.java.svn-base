package com.crm.action;

import com.crm.po.Right;
import com.crm.service.IPageManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class PageAddAction extends ActionSupport {
	private String url;
	private String name;
	private long pid;
	private IPageManagementService pageservice;
	private String res;
	
	
	
	
	public String add(){
		Right r = new Right();
		r.setName(name);
		r.setParentid(pid);
		r.setUrl(url);
		try{
			res = pageservice.addRight(r).toString();
		}catch(Exception e){
			res = "no";
			e.printStackTrace();
		}
		return "json";
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPid(long pid) {
		this.pid = pid;
	}
	public void setPageservice(IPageManagementService pageservice) {
		this.pageservice = pageservice;
	}
	public String getRes() {
		return res;
	}
	
	
}
