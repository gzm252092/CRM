package com.crm.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.crm.dao.ITaskListDao;
import com.crm.po.Code;
import com.crm.po.Pln;

public class TaskListDao extends HibernateDaoSupport implements ITaskListDao{

	public Code getTaskList(String name) {
		String hql= "from Code where worker = ? ";
		return (Code)getHibernateTemplate().find(hql,name).get(0);
        
	}

	public void SaveorUpdate(Code c) {
		try {
			this.getHibernateTemplate().saveOrUpdate(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
