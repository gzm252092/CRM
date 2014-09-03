package com.crm.dao.impl;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IPersonDao;
import com.crm.dao.IPlanDao;

import com.crm.po.Person;
import com.opensymphony.xwork2.ActionContext;

public class PersonDao4Orcl extends HibernateDaoSupport implements IPersonDao {

	public List<Person> findall() {
		String  hql = " from Person ";
		List<Person> leps = getHibernateTemplate().find(hql);
		return leps;
	}
	public Serializable addPerson(Person person) {		 
		return getHibernateTemplate().save(person);
	}
	public void modPerson(Person person) {
		getHibernateTemplate().update(person);
	}
	public void delPerson(long personid) {
		Person e = getbyid(personid);
		getHibernateTemplate().delete(e);
		
	}
	public Person getbyid(long personid) {
		
		return (Person) getHibernateTemplate().get(Person.class, personid);
	}
	public List<Person> getsamerolePersons(long roleid) {
		String  hql = " from Person where roleid= ?";
		List<Person> leps = getHibernateTemplate().find(hql,roleid);
		return leps;
	}
	@SuppressWarnings("unchecked")
	public List<Person> login(final Person person) {
		System.out.println(person.getName());
		final String hql = "from Person where name=? and pwd=?";
		List<Person> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Person> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						query.setParameter(0,person.getName());
						query.setParameter(1,person.getPwd());						
						List<Person> list = query.list();
						return list;
					}
				});
		return list;
		
	}
	

}
