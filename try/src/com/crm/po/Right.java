package com.crm.po;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Right entity. @author MyEclipse Persistence Tools
 */

public class Right implements java.io.Serializable {

	// Fields

	private long id;
	private String url;
	private String name;
	private long parentid;
	private String nbl;
	private Set roleRights = new HashSet(0);

	// Constructors

	/** default constructor */
	public Right() {
	}

	/** full constructor */
	public Right(String url, String name, long parentid, String nbl,
			Set roleRights) {
		this.url = url;
		this.name = name;
		this.parentid = parentid;
		this.nbl = nbl;
		this.roleRights = roleRights;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getParentid() {
		return this.parentid;
	}

	public void setParentid(long parentid) {
		this.parentid = parentid;
	}

	public String getNbl() {
		return this.nbl;
	}

	public void setNbl(String nbl) {
		this.nbl = nbl;
	}

	public Set getRoleRights() {
		return this.roleRights;
	}

	public void setRoleRights(Set roleRights) {
		this.roleRights = roleRights;
	}

}