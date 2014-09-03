package com.crm.po;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Role entity. @author MyEclipse Persistence Tools
 */

public class Role implements java.io.Serializable {

	// Fields

	private long roleid;
	private String rolename;
	private Set persons = new HashSet(0);
	private Set roleRights = new HashSet(0);

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** full constructor */
	public Role(String rolename, Set persons, Set roleRights) {
		this.rolename = rolename;
		this.persons = persons;
		this.roleRights = roleRights;
	}

	// Property accessors

	public long getRoleid() {
		return this.roleid;
	}

	public void setRoleid(long roleid) {
		this.roleid = roleid;
	}

	public String getRolename() {
		return this.rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public Set getPersons() {
		return this.persons;
	}

	public void setPersons(Set persons) {
		this.persons = persons;
	}

	public Set getRoleRights() {
		return this.roleRights;
	}

	public void setRoleRights(Set roleRights) {
		this.roleRights = roleRights;
	}

}