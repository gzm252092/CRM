package com.crm.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IProOrdrDao;
import com.crm.po.Ordr;
import com.crm.po.ProOrdr;
import com.crm.po.ProOrdr;
import com.crm.po.Product;

public class ProOrdrDao4Orcl extends HibernateDaoSupport implements IProOrdrDao {

	public List<ProOrdr> findall() {
		String  hql = " from ProOrdr ";
		List<ProOrdr> leps = getHibernateTemplate().find(hql);
		return leps;
	}
	public Serializable addProOrdr(ProOrdr proOrdr) {		 
		return getHibernateTemplate().save(proOrdr);
	}
	public void modProOrdr(ProOrdr proOrdr) {
		getHibernateTemplate().update(proOrdr);
	}
	public void delProOrdr(long proOrdrid) {
		ProOrdr e = getbyid(proOrdrid);
		getHibernateTemplate().delete(e);
		
	}
	public ProOrdr getbyid(long proOrdrid) {
		
		return (ProOrdr) getHibernateTemplate().get(ProOrdr.class, proOrdrid);
	}
	public List<ProOrdr> getByOrdrid(long id) {
		String  hql = " from ProOrdr where ordrid= ? ";
		List<ProOrdr> lpos=getHibernateTemplate().find(hql,id);
		return lpos;
	}
	
}
