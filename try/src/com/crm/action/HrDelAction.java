package com.crm.action;

import com.crm.service.IHrManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class HrDelAction extends ActionSupport {
	private String result;
	private IHrManagementService hrservice;
	private int[] pid;
	
	public String del(){
		// TODO Auto-generated method stub
		result = "yes";
		int k = -1;
		try{
			for(int i=0;i<pid.length;i++){
				k = pid[i];
				hrservice.delPerson(pid[i]);
			}	
		}catch( Exception e){
			result = k+"";
			e.printStackTrace();
		}
		return "json";
	}
	
	public String getResult() {
		return result;
	}
	public void setHrservice(IHrManagementService hrservice) {
		this.hrservice = hrservice;
	}

	public void setPid(int[] pid) {
		this.pid = pid;
	}
	
}
