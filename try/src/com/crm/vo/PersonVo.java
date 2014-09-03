package com.crm.vo;

import java.math.BigDecimal;

import com.crm.po.Role;

public class PersonVo {
	private long id;
	private String rolename;
	private String name;
	private String pwd;
	private RoleVo rolevo;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public RoleVo getRolevo() {
		return rolevo;
	}
	public void setRolevo(RoleVo rolevo) {
		this.rolevo = rolevo;
	}		
}
