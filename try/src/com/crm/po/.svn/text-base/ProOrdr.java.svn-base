package com.crm.po;

import java.math.BigDecimal;

/**
 * ProOrdr entity. @author MyEclipse Persistence Tools
 */

public class ProOrdr implements java.io.Serializable {

	// Fields

	private long id;
	private Product product;
	private Ordr ordr;
	private long quantity;

	// Constructors

	/** default constructor */
	public ProOrdr() {
	}

	/** minimal constructor */
	public ProOrdr(Ordr ordr) {
		this.ordr = ordr;
	}

	/** full constructor */
	public ProOrdr(Product product, Ordr ordr, long quantity) {
		this.product = product;
		this.ordr = ordr;
		this.quantity = quantity;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Ordr getOrdr() {
		return this.ordr;
	}

	public void setOrdr(Ordr ordr) {
		this.ordr = ordr;
	}

	public long getQuantity() {
		return this.quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

}