package com.crm.action;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.crm.po.Client;
import com.crm.service.IClientService;
import com.crm.service.impl.ClientService;
import com.crm.util.Page;
import com.crm.vo.ClientLostVo;
import com.crm.vo.ClientVo;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class ClientAction extends ActionSupport {

	private IClientService clientService;
	private ClientVo client=new ClientVo();
	private ClientVo cvo=new ClientVo();
	private List<ClientVo> hcs;
	private String clientid;
    private List regions;
    private String name;
    private String ishere;
private String status;
private String memo;
private List lostsclientoftime;
private String namechar;
private String region;

public List<ClientVo> getHcs() {
	return hcs;
}
	public ClientVo getCvo() {
		return cvo;
	}

	
	public void setRegion(String region) {
		this.region = region;
	}
	public String getNamechar() {
		return namechar;
	}
	public void setNamechar(String namechar) {
		this.namechar = namechar;
	}
	public String getStatus() {
		return status;
	}

	public String getMemo() {
		return memo;
	}

	public List getLostsclientoftime() {
		return lostsclientoftime;
	}

	public void setLostsclientoftime(List lostsclientoftime) {
		this.lostsclientoftime = lostsclientoftime;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCvo(ClientVo cvo) {
		this.cvo = cvo;
	}



	public String getIshere() {
		return ishere;
	}

	public void setIshere(String ishere) {
		this.ishere = ishere;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	public ClientVo getClient() {
		return client;
	}
	public void setClient(ClientVo client) {
		this.client = client;
	}
	public String getClientid() {
		return clientid;
	}


	public void setClientService(IClientService clientService) {
		this.clientService = clientService;
	}

	private int page;// �ڼ�ҳ
	private Page pageBean;// ��ֲ���Ϣ��bean

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Page getPageBean() {
		return pageBean;
	}

	public List getRegions() {
		return regions;
	}

	public void setRegions(List regions) {
		this.regions = regions;
	}

	public void setClientid(String clientid) {
		this.clientid = clientid;
	}

	public void setPageBean(Page pageBean) {
		this.pageBean = pageBean;
	}
	public String add() throws Exception {
		Serializable id = clientService.addClient(client);
		clientid=id.toString();
		return "new";
	}
	public String edit() throws Exception {
		clientService.modClient(client);
		return "show";
	}
	public void del() throws Exception {
		clientService.delClient(Long.parseLong(clientid));	
	}
	
	public String findbyid() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		clientid=request.getParameter("cid"); 

		client=clientService.getbyid(Long.parseLong(clientid));
		
		return  "show";
	}
	public String getit() throws Exception {
		return "new";
	}
	public String getRegion() throws Exception {
		regions=clientService.getRegions();
		return "json";
	}
	public String lostclientstatis() throws Exception {
		lostsclientoftime=clientService.lostclientstatis();
		return "json";
	}
	public String findall() throws Exception {
		// ��ҳ��pageBean,����pageSize��ʾÿҳ��ʾ��¼��,pageΪ��ǰҳ
		this.pageBean = clientService.findall(6, page);
		return "json";
	}
	public String findlostClient() throws Exception {
		// ��ҳ��pageBean,����pageSize��ʾÿҳ��ʾ��¼��,pageΪ��ǰҳ
	
		this.pageBean = clientService.findlostClient(6, page);
		return "json";
	}
	
	public String findByName(){
		cvo=clientService.getByName(name);
		return "json";
	}
	public String checkClientName(){
		if(clientService.checkClientName(name)){
			ishere="true";
		}
		else{
			ishere="false";
		}
		return "json";
	}
	public String modStatus(){
		ClientVo client=clientService.getbyid(Long.parseLong(clientid));
		client.setStatus(status);
		client.setMemo(memo);
		if(status.equals("确认流失"))
		client.setConfirmtime(new SimpleDateFormat("yyyy-MM-dd")
								.format(new Date()));
		clientService.modClientmerge(client);
		return "json";
	}
	
	public String findHighClient(){
		this.hcs=clientService.findHightClients();
		return "json";
	}
	public String findnamecomtainschar(){
		this.pageBean=clientService.findnamecomtainschar(namechar,6,page);
		return "json";
	}
	public String findregioncomtainschar(){
		this.pageBean=clientService.findregioncomtainschar(region, 6, page);
		return "json";
	}

}
