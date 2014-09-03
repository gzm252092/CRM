package com.crm.action;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.BeanUtils;

import com.crm.po.Client;
import com.crm.po.Linkman;
import com.crm.service.IClientService;
import com.crm.service.ILinkmanService;
import com.crm.util.Page;
import com.crm.vo.ClientVo;
import com.crm.vo.LinkmanVo;

import com.opensymphony.xwork2.ActionSupport;

public class LinkmansAction extends ActionSupport{
	private ILinkmanService linkmanService;
	private IClientService clientService;
	private List<Linkman> links;
	private Linkman linkman;
	private String cid;
	private String cname;
	private String linkmanid;

	
	public String getCid() {
		return cid;
	}

	public void setClientService(IClientService clientService) {
		this.clientService = clientService;
	}

	public String getCname() {
		return cname;
	}

	public String getLinkmanid() {
		return linkmanid;
	}

	public List<Linkman> getLinks() {
		return links;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public void setLinkmanid(String linkmanid) {
		this.linkmanid = linkmanid;
	}
	public void setLinkmanService(ILinkmanService linkmanService) {
		this.linkmanService = linkmanService;
	}

	public Linkman getLinkman() {
		return linkman;
	}
	public void setLinkman(Linkman linkman) {
		this.linkman =  linkman;
	}
	public String add() throws Exception {
	
		Serializable id = linkmanService.addLinkman(linkman, Long.parseLong(cid));
		return "get";
	}
	public String del() throws Exception {
	
		 linkmanService.delLinkman(Long.parseLong(linkmanid));
		return "get";
	}
	public String edit() throws Exception {
		Client c=new Client();
	     ClientVo cv=clientService.getbyid(Long.parseLong(cid));
	     BeanUtils.copyProperties(cv, c);
	     linkman.setClient(c);
		 linkmanService.modLinkman(linkman);
		return "get";
	}
	public String find() throws Exception {
		// ��ҳ��pageBean,����pageSize��ʾÿҳ��ʾ��¼��,pageΪ��ǰҳ		
		if(cid!=null  && cid!="" ){			
		this.links= linkmanService.findbyclientid(Long.parseLong(cid));
		cname=clientService.getbyid(Long.parseLong(cid)).getName();
	
		 //  cname= new String(cname.getBytes("ISO-8859-1"),"utf-8"); 
		
		}
		return "links";
	}
	public String findById(){
		this.linkman= linkmanService.findbyid(Long.parseLong(linkmanid));
		System.out.println(linkman.getTel());
		return "json";
	}
}
