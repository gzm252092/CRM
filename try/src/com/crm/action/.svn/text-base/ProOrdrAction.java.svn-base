package com.crm.action;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.crm.po.ProOrdr;
import com.crm.po.Product;
import com.crm.service.IClientService;
import com.crm.service.IPlnService;
import com.crm.service.IProOrdrService;
import com.crm.vo.OrdrVo;
import com.crm.vo.PlanVo;
import com.crm.vo.ProductVo;
import com.crm.vo.ProOrdreVo;

import com.opensymphony.xwork2.ActionSupport;

public class ProOrdrAction extends ActionSupport{

	private IProOrdrService proOrdrService;
	private IClientService clientService;
	private IPlnService plnService;
	private ProductVo productvo;
	private ProOrdreVo proOrdrvo;
	private OrdrVo ordrvo;
	private List<ProductVo> lpvs;
	private List<ProOrdreVo> lpovs;
	private String username;

	private String id;

	private String ordrid;
	private List<ProOrdreVo> pros;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getOrdrid() {
		return ordrid;
	}

	public List<ProOrdreVo> getPros() {
		return pros;
	}
	public void setPros(List<ProOrdreVo> pros) {
		this.pros = pros;
	}
	public void setOrdrid(String ordrid) {
		this.ordrid = ordrid;
	}


	public void setPlnService(IPlnService plnService) {
		this.plnService = plnService;
	}
	
	public List<ProductVo> getLpvs() {
		return lpvs;
	}

	public List<ProOrdreVo> getLpovs() {
		return lpovs;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public ProductVo getProductvo() {
		return productvo;
	}
	public void setProductvo(ProductVo productvo) {
		this.productvo = productvo;
	}
	public ProOrdreVo getProOrdrvo() {
		return proOrdrvo;
	}

	public void setProOrdrvo(ProOrdreVo proOrdrvo) {
		this.proOrdrvo = proOrdrvo;
	}
	public OrdrVo getOrdrvo() {
		return ordrvo;
	}
	public void setOrdrvo(OrdrVo ordrvo) {
		this.ordrvo = ordrvo;
	}
	public void setProOrdrService(IProOrdrService proOrdrService) {
		this.proOrdrService = proOrdrService;
	}
	
	public void setClientService(IClientService clientService) {
		this.clientService = clientService;
	}
	public String list() {
		lpvs=proOrdrService.listPro();
		return "json";
	}
	public String add(){
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String nowDate = df.format(new Date());
		ordrvo.setTime(nowDate);
		ordrvo.setCvo(clientService.getByName(username));
		Serializable id=proOrdrService.addOrdr(ordrvo);
		ordrid=id.toString();
		return "json";
	}
	public String addProOrdr(){
		proOrdrvo.setPvo(proOrdrService.finProById(productvo.getId()));
		//proOrdrvo.setOvo(ordrvo);
		proOrdrvo.setOvo(proOrdrService.findOrdrById(Long.parseLong(ordrid)));
		proOrdrService.addProOrdr(proOrdrvo);		
		return "json";
	}
	public String addServicePln(){
		lpovs=proOrdrService.findProByOrdrid(Long.parseLong(ordrid));
		//ordrvo=proOrdrService.findOrdrById(Long.parseLong(ordrid));
		PlanVo pvo=new PlanVo();
		pvo.setClientname(ordrvo.getCvo().getName());
		pvo.setCreator(ordrvo.getCvo().getName());
		pvo.setStatus("未分配");
		pvo.setStime(ordrvo.getTime());
		pvo.setStyleid(3);
		pvo.setTel(ordrvo.getCvo().getTel());
		pvo.setConnector(ordrvo.getCvo().getManager());
		String des = "";
		for (ProOrdreVo povo : lpovs) {
			des+=povo.getPvo().getName()+","+povo.getQuantity()+";\n";
		}
		des+="送至："+ordrvo.getAddress()+"\n";
		pvo.setDescr(des);
		pvo.setName("来自"+ordrvo.getCvo().getName()+"的订单");
		plnService.addPlan(pvo);
		return "json";
	}
	public String  findProductsByOrdrid(){
		
		pros=proOrdrService.findProByOrdrid(Long.parseLong(id));
		return "json";
	}
}
