package com.crm.dao.impl;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IRoleDao;
import com.crm.po.Client;
import com.crm.po.Right;
import com.crm.po.Role;

public class RoleDao4Orcl extends HibernateDaoSupport implements IRoleDao {

	public Serializable addRole(Role role) {

		return getHibernateTemplate().save(role);
	
	}

	public List<Role> findall() {
		String hql = "from Role  as r order  by r.roleid  ";
		return getHibernateTemplate().find(hql);
	}

	public Role findbyid(long roleid) {
		// TODO Auto-generated method stub
		return (Role) getHibernateTemplate().get(Role.class, roleid);
	}

	public void modRole(Role role){
		getHibernateTemplate().update(role);
	}

	public void delRole(long roleid) {
		// TODO Auto-generated method stub
		Role r = findbyid(roleid);
		getHibernateTemplate().delete(r);
	}
}
