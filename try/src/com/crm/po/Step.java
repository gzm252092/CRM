package com.crm.po;

import java.math.BigDecimal;

/**
 * Step entity. @author MyEclipse Persistence Tools
 */

public class Step implements java.io.Serializable {

	// Fields

	private long id;
	private Pln pln;
	private String creator;
	private String read;
	private String time;
	private String content;
	private String result;

	// Constructors

	/** default constructor */
	public Step() {
	}

	/** full constructor */
	public Step(Pln pln, String creator, String read, String time,
			String content, String result) {
		this.pln = pln;
		this.creator = creator;
		this.read = read;
		this.time = time;
		this.content = content;
		this.result = result;
	}

	// Property accessors

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Pln getPln() {
		return this.pln;
	}

	public void setPln(Pln pln) {
		this.pln = pln;
	}

	public String getCreator() {
		return this.creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getRead() {
		return this.read;
	}

	public void setRead(String read) {
		this.read = read;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getResult() {
		return this.result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}