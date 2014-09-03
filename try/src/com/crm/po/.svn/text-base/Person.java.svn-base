package com.crm.po;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Person entity. @author MyEclipse Persistence Tools
 */

public class Person implements java.io.Serializable {

	// Fields

	private long id;
	private Role role;
	private String name;
	private String pwd;
	private Set clients = new HashSet(0);

	// Constructors

	/** default constructor */
	public Person() {
	}

	/** full constructor */
	public Person(Role role, String name, String pwd, Set clients) {
		this.role = role;
		this.name = name;
		this.pwd = pwd;
		this.clients = clients;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Set getClients() {
		return this.clients;
	}

	public void setClients(Set clients) {
		this.clients = clients;
	}

}