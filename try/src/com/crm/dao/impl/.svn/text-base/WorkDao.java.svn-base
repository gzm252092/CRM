package com.crm.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IWorkDao;
import com.crm.po.Pln;
import com.crm.po.Step;

public class WorkDao extends HibernateDaoSupport implements IWorkDao {

	public List<Pln> getTasktoPerson(String name) {
		String hql= "from Pln where status<>'已完成' and worker = ? ";
        List<Pln> plans= this.getHibernateTemplate().find(hql,name);
        return plans;
	}
	
	
	public List<Pln> getUnreadPromotePlan() {
		String hql= "from Pln where read= 0 and styleid=1";
		try{
        List<Pln> plans= this.getHibernateTemplate().find(hql);
        return plans;
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
		return null;
	}
	public List<Pln> getUnreadSellPlan() {
		String hql= "from Pln where read= 0 and styleid=2";
        List<Pln> plans= this.getHibernateTemplate().find(hql);
        return plans;
	}
	public List<Pln> getUnreadServicePlan() {
		String hql= "from Pln where read= 0 and styleid=3";
        List<Pln> plans= this.getHibernateTemplate().find(hql);
        return plans;
	}

	public List<Pln> getUnassignedPromotePlan() {
		String hql= "from Pln where worker is null and styleid=1";
		try{
        List<Pln> plans= this.getHibernateTemplate().find(hql);
    
        return plans;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public List<Pln> getUnassignedSellPlan() {
		String hql= "from Pln where worker is null and styleid=2";
		try{
        List<Pln> plans= this.getHibernateTemplate().find(hql);
    
        return plans;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public List<Pln> getUnassignedServicePlan() {
		String hql= "from Pln where worker is null and styleid=3 ";
		try{
        List<Pln> plans= this.getHibernateTemplate().find(hql);
    
        return plans;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

}
