package com.crm.action;

import java.util.ArrayList;
import java.util.List;

import com.crm.service.IClientMapService;
import com.crm.vo.ClientMapVo;
import com.opensymphony.xwork2.ActionSupport;

public class ClientMapLoadAction extends ActionSupport {
	private List<ClientMapVo> lcmvs  = new ArrayList<ClientMapVo>();
	private IClientMapService cmapservice;
	
	
	public String load(){
		lcmvs = cmapservice.getCMapData();
		return "json";
	}
	
	public List<ClientMapVo> getLcmvs() {
		return lcmvs;
	}
	public void setCmapservice(IClientMapService cmapservice) {
		this.cmapservice = cmapservice;
	}
	
	
}
