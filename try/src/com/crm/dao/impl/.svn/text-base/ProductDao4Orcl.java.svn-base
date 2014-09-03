package com.crm.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IPlanDao;
import com.crm.dao.IProductDao;

import com.crm.po.Product;

public class ProductDao4Orcl extends HibernateDaoSupport implements IProductDao {

	public List<Product> findall() {
		String  hql = " from Product ";
		List<Product> leps = getHibernateTemplate().find(hql);
		return leps;
	}
	public Serializable addProduct(Product product) {		 
		return getHibernateTemplate().save(product);
	}
	public void modProduct(Product product) {
		getHibernateTemplate().update(product);
	}
	public void delProduct(long productid) {
		Product e = getbyid(productid);
		getHibernateTemplate().delete(e);
		
	}
	public Product getbyid(long productid) {
		
		return (Product) getHibernateTemplate().get(Product.class, productid);
	}
	public List<Product> listPro() {
		String  hql = " from Product where id in(1,2,3,4)";
		List<Product> leps = getHibernateTemplate().find(hql);
		return leps;
	}
	

}
