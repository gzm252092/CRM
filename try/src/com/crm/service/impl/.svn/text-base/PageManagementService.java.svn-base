package com.crm.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.crm.dao.IRightDao;
import com.crm.po.Right;
import com.crm.service.IPageManagementService;
import com.crm.vo.OnePageVo;
import com.crm.vo.PageManagementVo;
import com.crm.vo.TwoPageVo;

public class PageManagementService implements IPageManagementService {
	private IRightDao rightdao;
	public static final long ONEMENUPID = 0;
	
	public PageManagementVo getPageData() {
		// TODO Auto-generated method stub
		PageManagementVo pmv = new PageManagementVo();
		pmv.setLopvs(getLopvs());
		return pmv;
	}
	
	
	private List<OnePageVo> getLopvs(){
		List<OnePageVo> lovs = null;
		List<Right> lrs = rightdao.findbypid(ONEMENUPID);
		
		if(lrs==null || lrs.size()==0)
			return lovs;
		lovs = new ArrayList<OnePageVo>();
		for(int i=0;i<lrs.size();i++){
			OnePageVo opv = new OnePageVo();
			opv.setName(lrs.get(i).getName());
			opv.setId(lrs.get(i).getId());
			opv.setLtpvs(getLtpvs(opv.getId()));
			lovs.add(opv);
		}
		return lovs;
	}
	
	
	private List<TwoPageVo> getLtpvs(long pid) {
		// TODO Auto-generated method stub
		List<TwoPageVo> ltpvs = null;
		List<Right> lrs = rightdao.findbypid(pid);
		if(lrs==null || lrs.size()==0)
			return ltpvs;
		ltpvs = new ArrayList<TwoPageVo>();
		for(int i=0;i<lrs.size();i++){
			TwoPageVo tpv = new TwoPageVo();
			tpv.setName(lrs.get(i).getName());
			tpv.setId(lrs.get(i).getId());
			tpv.setUrl(lrs.get(i).getUrl());
			ltpvs.add(tpv);
		}
		return ltpvs;
	}


	public void setRightdao(IRightDao rightdao) {
		this.rightdao = rightdao;
	}


	public void delRight(long rightid) {
		// TODO Auto-generated method stub
		rightdao.delRight(rightid);
	}


	public Serializable addRight(Right r) {
		// TODO Auto-generated method stub
		return rightdao.addRight(r);
	}


	public void modRight(Right r,long rightid) {
		// TODO Auto-generated method stub
		Right right = rightdao.getbyid(rightid);
		right.setName(r.getName());
		right.setUrl(r.getUrl());
		rightdao.modRight(right);
	}
	
}
