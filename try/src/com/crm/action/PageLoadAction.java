package com.crm.action;

import com.crm.service.IPageManagementService;
import com.crm.vo.PageManagementVo;
import com.opensymphony.xwork2.ActionSupport;

public class PageLoadAction extends ActionSupport {
	private PageManagementVo pmv;
	private IPageManagementService pageservice;
	
	public String load(){
		pmv = pageservice.getPageData();
		return "json";
	}
	
	
	
	
	public PageManagementVo getPmv() {
		return pmv;
	}
	public void setPageservice(IPageManagementService pageservice) {
		this.pageservice = pageservice;
	}
	
	
}
