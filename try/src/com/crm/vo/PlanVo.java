package com.crm.vo;

import java.util.HashSet;
import java.util.Set;

public class PlanVo {

	private long id;
	private String name;
	private String clientname;
	private String status;
	private String feedback;
	private String creator;
	private String worker;
	private String stime;
	private String ftime;
	private String descr;
	private String read;
	private String chance;
	private String tel;
	private String connector;
	private long styleid;
	
	public String getConnector() {
		return connector;
	}
	public void setConnector(String connector) {
		this.connector = connector;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	private Set steps = new HashSet(0);
	public long getId() {
		return id;
	}
	public String getRead() {
		return read;
	}
	public void setRead(String read) {
		this.read = read;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClientname() {
		return clientname;
	}
	public void setClientname(String clientname) {
		this.clientname = clientname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public String getWorker() {
		return worker;
	}
	public void setWorker(String worker) {
		this.worker = worker;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getFtime() {
		return ftime;
	}
	public void setFtime(String ftime) {
		this.ftime = ftime;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getChance() {
		return chance;
	}
	public void setChance(String chance) {
		this.chance = chance;
	}
	public Set getSteps() {
		return steps;
	}
	public void setSteps(Set steps) {
		this.steps = steps;
	}
	public long getStyleid() {
		return styleid;
	}
	public void setStyleid(long styleid) {
		this.styleid = styleid;
	}
	
}
