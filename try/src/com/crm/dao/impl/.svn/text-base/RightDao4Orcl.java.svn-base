package com.crm.dao.impl;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IPlanDao;
import com.crm.dao.IRightDao;

import com.crm.po.Right;

public class RightDao4Orcl extends HibernateDaoSupport implements IRightDao {

	public List<Right> findall() {
		String  hql = " from Right ";
		List<Right> leps = getHibernateTemplate().find(hql);
		return leps;
	}
	public Serializable addRight(Right right) {		 
		return getHibernateTemplate().save(right);
	}
	public void modRight(Right right) {
		getHibernateTemplate().update(right);
	}
	public void delRight(long rightid) {
		Right e = getbyid(rightid);
		List<Right> lrs = this.findbypid(rightid);
		getHibernateTemplate().delete(e);
		if(!(lrs==null || lrs.size()==0)){
			for(Right r:lrs){
				getHibernateTemplate().delete(r);
			}
		}
		
	}
	public Right getbyid(long rightid) {		
		return (Right) getHibernateTemplate().get(Right.class, rightid);
	}
	public List<Right> findbypid(long parentid) {
		// TODO Auto-generated method stub
		String  hql = " from Right r where r.parentid = ? ";
		List<Right> lrs = getHibernateTemplate().find(hql,parentid);
		return lrs;
	}
	

}
