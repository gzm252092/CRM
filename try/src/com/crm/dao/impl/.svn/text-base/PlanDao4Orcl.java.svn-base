package com.crm.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IPlanDao;

import com.crm.po.Pln;

public class PlanDao4Orcl extends HibernateDaoSupport implements IPlanDao {

	public List<Pln> findwork(String name) {
		String hql = " from Pln where worker= ? ";
		List<Pln> leps = getHibernateTemplate().find(hql, name);
		return leps;
	}

	public Serializable addPlan(Pln plan) {
		return getHibernateTemplate().save(plan);
	}

	public void modPlan(Pln plan) {
		try {
			getHibernateTemplate().update(plan);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void delPlan(long planid) {
		Pln e = getbyid(planid);
		getHibernateTemplate().delete(e);
	}

	public Pln getbyid(long planid) {

		return (Pln) getHibernateTemplate().get(Pln.class, planid);
	}

	@SuppressWarnings("unchecked")
	public List<Pln> findall(final int offset, final int length,
			final String styleid) {
		final String hql = " from Pln where styleid= " + styleid;
		List<Pln> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Pln> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						//query.setParameter(0, styleid);
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Pln> list = query.list();
						return list;
					}
				});
		return list;
	}

	public int getAllRowCount(String hql) {
		return getHibernateTemplate().find(hql).size();
	}

	@SuppressWarnings("unchecked")
	public List<Pln> findByStatus(final int offset, final int length,
			final String status, final String styleid) {
		final String hql = " from Pln where status= " + status + "and styleid="
				+ styleid;
		List<Pln> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Pln> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						//query.setString(0, status);
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Pln> list = query.list();
						return list;
					}
				});
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Pln> findByCreator(final int offset, final int length,
			final String username) {
		final String hql = " from Pln where creator= " + username
				+ " or worker=" + username;
		List<Pln> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Pln> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						//query.setString(0, status);
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Pln> list = query.list();
						return list;
					}
				});
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Pln> findByCreator(final int offset, final int length,
			String username, String query) {
		final String hql = "from Pln where (creator=" + username
				+ " or worker=" + username + ") and name like '%" + query
				+ "%'";
		List<Pln> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Pln> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						//query.setString(0, status);
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Pln> list = query.list();
						return list;
					}
				});
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Pln> findByKeyword(final int offset, final int length,
			String styleid, String query) {
		final String hql = " from Pln where styleid= " + styleid
				+ "and name like '%" + query + "%'";
		List<Pln> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Pln> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						//query.setParameter(0, styleid);
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Pln> list = query.list();
						return list;
					}
				});
		return list;
	}

}
