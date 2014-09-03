package com.crm.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IRoleRightDao;
import com.crm.po.Right;
import com.crm.po.RoleRight;

public class RoleRightDao4Orcl extends HibernateDaoSupport implements IRoleRightDao {

	public Serializable addRoleRight(RoleRight rr) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().save(rr);
	}

	public void delRoleRight(RoleRight rr) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(rr);
	}

	public List<RoleRight> findbyroleid(long roleid) {
		// TODO Auto-generated method stub		
		String  hql = " from RoleRight rr where rr.role.roleid = ? ";
		List<RoleRight> lrrs = getHibernateTemplate().find(hql,roleid);
		return lrrs;
	}

}
