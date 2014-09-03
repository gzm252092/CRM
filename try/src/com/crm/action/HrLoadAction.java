package com.crm.action;

import com.crm.service.IHrManagementService;
import com.crm.vo.HrManagementVo;
import com.opensymphony.xwork2.ActionSupport;

public class HrLoadAction extends ActionSupport {
	private IHrManagementService hrservice;
	private HrManagementVo hmv;
	
	public String load() throws Exception {
		// TODO Auto-generated method stub
		hmv = hrservice.getHrData();
		return "json";
	}

	public HrManagementVo getHmv() {
		return hmv;
	}

	public void setHrservice(IHrManagementService hrservice) {
		this.hrservice = hrservice;
	}
}
