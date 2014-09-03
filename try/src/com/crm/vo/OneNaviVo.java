package com.crm.vo;

import java.util.ArrayList;
import java.util.List;

public class OneNaviVo {
	private String name;
	private List<TwoNaviVo> ltnvs = new ArrayList<TwoNaviVo>();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<TwoNaviVo> getLtnvs() {
		return ltnvs;
	}
	public void setLtnvs(List<TwoNaviVo> ltnvs) {
		this.ltnvs = ltnvs;
	}
	
	
}
