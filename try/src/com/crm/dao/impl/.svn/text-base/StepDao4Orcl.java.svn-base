package com.crm.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IPlanDao;
import com.crm.dao.IStepDao;

import com.crm.po.Pln;
import com.crm.po.Step;

public class StepDao4Orcl extends HibernateDaoSupport implements IStepDao {

	public List<Step> findall() {
		String  hql = " from Step ";
		List<Step> leps = getHibernateTemplate().find(hql);
		return leps;
	}
	public List<Step> findbyplanid(long planid){
		String  hql = " from Step where planid= ? ";
		List<Step> leps = getHibernateTemplate().find(hql,planid);
		return leps;
	}
	public Serializable addStep(Step step) {		 
		return getHibernateTemplate().save(step);
	}
	public void modStep(Step step) {
		try{
		getHibernateTemplate().update(step);
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
	}
	public void delStep(long stepid) {
		Step e = getbyid(stepid);
		getHibernateTemplate().delete(e);
		
	}
	public Step getbyid(long stepid) {
		
		return (Step) getHibernateTemplate().get(Step.class, stepid);
	}
	

}
