package com.crm.action;

import java.util.List;

import org.apache.struts2.json.annotations.JSON;

import com.crm.po.Ordr;
import com.crm.service.IOrdrService;
import com.crm.util.Page;
import com.opensymphony.xwork2.ActionSupport;

public class OrdrAction extends ActionSupport {
	private IOrdrService ordrService;
	private Page pageBean;// ��ֲ���Ϣ��bean
	private int page;
	private long oid;
	private String clientid;
	private List numberOrders;
	private List clientnumberOrders;
	private String time;
	private List years;
	 public void setPage(int page) {
		this.page = page;
	}
	public void setClientid(String clientid) {
		this.clientid = clientid;
	}


	public List getYears() {
		return years;
	}
	public void setYears(List years) {
		this.years = years;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public List getClientnumberOrders() {
		return clientnumberOrders;
	}
	public List getNumberOrders() {
		return numberOrders;
	}


	public void setOid(long oid) {
		this.oid = oid;
	}


	public Page getPageBean() {
		return pageBean;
	}

	public long getOid() {
		return oid;
	}

	public int getPage() {
		return page;
	}


	public void setOrdrService(IOrdrService ordrService) {
		this.ordrService = ordrService;
	}
	
	public String findall() throws Exception {
		this.pageBean = ordrService.findall(6, page);
		return "json";
	}
	public String find() throws Exception {
		this.pageBean = ordrService.findOrdrByClient(6, page, Long.parseLong(clientid));
		return "json";
	}
	public String del() throws Exception {	
		ordrService.delOrder(oid);
		System.out.println("dddddddd");
		return "json";
	}
	public String getNmberOfOrders() throws Exception {	
		clientnumberOrders=ordrService.findOrderNumberofClient();
		System.out.print(clientnumberOrders.size());
		return "json";
	}
	public String findOrdroftime() throws Exception {	
		numberOrders=ordrService.findOrdroftime();
		return "json";
	}
	public String searchbytime(){
		this.pageBean=ordrService.finbytime(6, page, time);
		return "json";
	}
	public String getOrderYears(){
		this.years=ordrService.findOrderYears();
		return "json";
		
	}
	

}
