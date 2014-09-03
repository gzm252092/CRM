package com.crm.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.ILinkmanDao;


import com.crm.po.Linkman;


public class LinkmanDao4Orcl extends HibernateDaoSupport implements ILinkmanDao {

	
	public List<Linkman> findbyclientid(long clientid){
		String  hql = " from Linkman where clientid= ? ";
		List<Linkman> leps = getHibernateTemplate().find(hql,clientid);
		return leps;
	}
	
	public Serializable addLinkman(Linkman linkman) {		 
		return getHibernateTemplate().save(linkman);
	}
	public void modLinkman(Linkman man) {
	
			getHibernateTemplate().merge(man);
			getHibernateTemplate().flush();
	}
	public void delLinkman(long linkmanid) {
		Linkman e = getbyid(linkmanid);
		getHibernateTemplate().delete(e);
		
	}
	public Linkman getbyid(long linkmanid) {
		return (Linkman) getHibernateTemplate().get(Linkman.class, linkmanid);
	}
	public int getAllRowCount(String hql) {
		return getHibernateTemplate().find(hql).size();
	}	
	
	

}