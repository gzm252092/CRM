package com.crm.vo;

import java.util.ArrayList;
import java.util.List;

public class OneMenuVo {
	String name;
	long id;
	List<TwoMenuVo> ltmvs = new ArrayList<TwoMenuVo>();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public List<TwoMenuVo> getLtmvs() {
		return ltmvs;
	}
	public void setLtmvs(List<TwoMenuVo> ltmvs) {
		this.ltmvs = ltmvs;
	}
	
	
}
