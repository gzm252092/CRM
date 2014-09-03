package com.crm.action;

import java.io.Serializable;
import java.math.BigDecimal;

import com.crm.po.Person;
import com.crm.service.IHrManagementService;
import com.opensymphony.xwork2.ActionSupport;

public class HrAddAction extends ActionSupport {
	
	private String name;
	private String pwd;
	private long roleid;
	private IHrManagementService hrservice;
	private String res;
	private long cid;
	public static final int CLIENTID = 7;
	
	
	
	public String add(){
		Person p = new Person();
		
		p.setName(name);
		p.setPwd(pwd);
		try{
		res =  hrservice.addPerson(p, roleid).toString();
		}catch(Exception e){
			e.printStackTrace();
		}
		if(roleid == CLIENTID){
			try{
			hrservice.modClient(cid, Integer.parseInt(res));
			}catch(Exception e){
				res = "-1";
			}
		}
		return "json";
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




	public String getRes() {
		return res;
	}

	public void setCid(long cid) {
		this.cid = cid;
	}
	
	
	
	
}
