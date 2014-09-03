package com.crm.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.crm.dao.ILinkmanDao;
import com.crm.dao.impl.ClientDao4Orcl;
import com.crm.dao.impl.LinkmanDao4Orcl;
import com.crm.po.Client;
import com.crm.po.Linkman;
import com.crm.service.ILinkmanService;
import com.crm.util.Page;
import com.crm.vo.LinkmanVo;
import com.crm.vo.NewClientVo;

public class LinkmanService implements ILinkmanService{

	private ILinkmanDao linkmanDao;
	
	

	public ILinkmanDao getLinkmanDao() {
		return linkmanDao;
	}
	public void setLinkmanDao(ILinkmanDao linkmanDao) {
		this.linkmanDao = linkmanDao;
	}
	public List<Linkman> findbyclientid(long clientid){
		ArrayList<Linkman> links=new ArrayList<Linkman>();
		links=(ArrayList<Linkman>) linkmanDao.findbyclientid(clientid);
		return links;
	}
	public Serializable addLinkman(Linkman linkman, long cid) {
		Client c=new Client();
		c.setId(cid);
		linkman.setClient(c);
		Serializable s=linkmanDao.addLinkman(linkman);
		return s;
	}
	public void delLinkman(long linkmanid) {
		linkmanDao.delLinkman(linkmanid);
	}
	public void modLinkman(Linkman linkman) {
	/*	Linkman l2=new Linkman();
		l2=linkmanDao.getbyid(linkman.getId());
		l2.setGender(linkman.getGender());
		l2.setMemo(linkman.getMemo());
		l2.setName(linkman.getName());
		l2.setPosition(linkman.getPosition());
		l2.setTel(linkman.getTel());*/
		linkmanDao.modLinkman(linkman);
		
	}
	public Linkman findbyid(long linkmanid) {
		return linkmanDao.getbyid(linkmanid);
	}
}
