package com.crm.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.crm.dao.IWorkDao;
import com.crm.po.Client;
import com.crm.po.Pln;
import com.crm.po.Step;
import com.crm.service.IWorkService;
import com.crm.util.Page;
import com.crm.vo.PlanVo;


public class WorkService implements IWorkService{

	private IWorkDao workDao;
	
	public IWorkDao getWorkDao() {
		return workDao;
	}

	public void setWorkDao(IWorkDao workDao) {
		this.workDao = workDao;
	}

	public List<PlanVo> getTasktoPerson(String name){
		List<Pln> steps=workDao.getTasktoPerson(name);
		List<PlanVo> svos=p2v(steps);
		return svos;
	}
	

	public List<PlanVo> getUnassignedPlan(String roleid) {
		if(roleid.equals("1"))
			return this.getUnassignedPromotePlan();
		if(roleid.equals("3"))
			return this.getUnassignedSellPlan();
		if(roleid.equals("5"))
			return this.getUnassignedServicePlan();
		return null;
	}
	private List<PlanVo> getUnassignedPromotePlan() {
		List<Pln> p=workDao.getUnassignedPromotePlan();
		List<PlanVo> svos=p2v(p);
		return svos;
	}
	private List<PlanVo> getUnassignedSellPlan() {
		List<Pln> p=workDao.getUnassignedSellPlan();
		List<PlanVo> svos=p2v(p);
		return svos;
	}
	private List<PlanVo> getUnassignedServicePlan() {
		List<Pln> p=workDao.getUnassignedServicePlan();
		List<PlanVo> svos=p2v(p);
		return svos;
	}

	private List<PlanVo> getUnreadPromotePlan() {
		List<Pln> p=workDao.getUnreadPromotePlan();
		List<PlanVo> svos=p2v(p);
		return svos;
	}
	private List<PlanVo> getUnreadSellPlan() {
		List<Pln> p=workDao.getUnreadSellPlan();
		List<PlanVo> svos=p2v(p);
		return svos;
	}
	private List<PlanVo> getUnreadServicePlan() {
		List<Pln> p=workDao.getUnreadServicePlan();
		List<PlanVo> svos=p2v(p);
		return svos;
	}
	public List<PlanVo> p2v(List<Pln> s){
		
		List<PlanVo> svos=new ArrayList<PlanVo>();
		for(Pln p:s){
			PlanVo svo=new PlanVo();
			svo.setChance(p.getChance());
			svo.setClientname(p.getClientname());
			svo.setDescr(p.getDescr());
			svo.setName(p.getName());
			svo.setStime(p.getStime());
			svo.setRead(p.getRead());
			svo.setId(p.getId());
			svo.setWorker(p.getWorker());
			svos.add(svo);
		}
		return svos;
	}

	public List<PlanVo> getUnreadPlan(String roleid) {
		if(roleid.equals("1"))
			return this.getUnreadPromotePlan();
		if(roleid.equals("3"))
			return this.getUnreadSellPlan();
		if(roleid.equals("5"))
			return this.getUnreadServicePlan();
		return null;
	}

	
	

}
