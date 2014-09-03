package com.crm.po;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Ordr entity. @author MyEclipse Persistence Tools
 */

public class Ordr implements java.io.Serializable {

	// Fields

	private long id;
	private Client client;
	private String time;
	private String address;
	private Set proOrdrs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Ordr() {
	}

	/** full constructor */
	public Ordr(Client client, String time, String address, Set proOrdrs) {
		this.client = client;
		this.time = time;
		this.address = address;
		this.proOrdrs = proOrdrs;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Client getClient() {
		return this.client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set getProOrdrs() {
		return this.proOrdrs;
	}

	public void setProOrdrs(Set proOrdrs) {
		this.proOrdrs = proOrdrs;
	}

}