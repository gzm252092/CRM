package com.crm.action;

import com.crm.po.Person;
import com.crm.service.IHrManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class HrEditAction extends ActionSupport {
	private long id;
	private String name;
	private String pwd;
	private long roleid;
	private String res;
	private IHrManagementService hrservice;
	
	
	
	public String edit(){
		Person p = new Person();
		p.setId(id);
		p.setName(name);
		p.setPwd(pwd);
		res = "yes";
		try{
			hrservice.modPerson(p, roleid);
		}catch(Exception  e){
			res = "no";
			e.printStackTrace();
		}
		return "json";
	}
	
	
	
	
	public String getRes() {
		return res;
	}
	public void setId(long id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setRoleid(long roleid) {
		this.roleid = roleid;
	}




	public void setHrservice(IHrManagementService hrservice) {
		this.hrservice = hrservice;
	}
	
	
	
}
