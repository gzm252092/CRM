package com.crm.po;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private long id;
	private String name;
	private long price;
	private long quantity;
	private long storage;
	private String unit;
	private String url;
	private Set proOrdrs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** full constructor */
	public Product(String name, long price, long quantity,
			long storage, String unit, String url, Set proOrdrs) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.storage = storage;
		this.unit = unit;
		this.url = url;
		this.proOrdrs = proOrdrs;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getPrice() {
		return this.price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public long getQuantity() {
		return this.quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

	public long getStorage() {
		return this.storage;
	}

	public void setStorage(long storage) {
		this.storage = storage;
	}

	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Set getProOrdrs() {
		return this.proOrdrs;
	}

	public void setProOrdrs(Set proOrdrs) {
		this.proOrdrs = proOrdrs;
	}

}