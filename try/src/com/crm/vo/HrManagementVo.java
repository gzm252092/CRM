package com.crm.vo;

import java.util.ArrayList;
import java.util.List;

public class HrManagementVo {
	List<PersonVo> lpvs = new ArrayList<PersonVo>();
	List<NewClientVo> lncvs = new ArrayList<NewClientVo>();
	List<RoleVo> lrvs = new ArrayList<RoleVo>();
	public List<PersonVo> getLpvs() {
		return lpvs;
	}
	public void setLpvs(List<PersonVo> lpvs) {
		this.lpvs = lpvs;
	}
	public List<NewClientVo> getLncvs() {
		return lncvs;
	}
	public void setLncvs(List<NewClientVo> lncvs) {
		this.lncvs = lncvs;
	}
	public List<RoleVo> getLrvs() {
		return lrvs;
	}
	public void setLrvs(List<RoleVo> lrvs) {
		this.lrvs = lrvs;
	}
}
