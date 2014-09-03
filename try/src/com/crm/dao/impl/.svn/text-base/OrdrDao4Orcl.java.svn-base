package com.crm.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.dao.IOrdrDao;
import com.crm.dao.IPlanDao;

import com.crm.po.Ordr;

public class OrdrDao4Orcl extends HibernateDaoSupport implements IOrdrDao {
	@SuppressWarnings("unchecked")
	public List<Ordr> findall(final int offset, final int length) {

		final String hql = " from Ordr ";
		List<Ordr> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Ordr> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Ordr> list = query.list();
						session.close();
						return list;
					}
				});
		return list;
	}

	public Serializable addOrdr(Ordr ordr) {
		return getHibernateTemplate().save(ordr);
	}

	public void modOrdr(Ordr ordr) {
		getHibernateTemplate().update(ordr);
	}

	public void delOrdr(long ordrid) {
		Ordr e = getbyid(ordrid);
		getHibernateTemplate().delete(e);

	}

	public Ordr getbyid(long ordrid) {
		
		return (Ordr) getHibernateTemplate().get(Ordr.class, ordrid);
	}

	@SuppressWarnings("unchecked")
	public List<Ordr> findOrdrByClient(final int offset, final int length,
			final long clientid) {
		final String hql = " from Ordr where clientid= ? ";
		List<Ordr> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Ordr> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						query.setLong(0, clientid);
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Ordr> list = query.list();
						return list;
					}
				});
		return list;
	}

	public int getAllRowCount(String hql) {
		return getHibernateTemplate().find(hql).size();
	}

	@SuppressWarnings("unchecked")
	public List<Map> findOrderNumberofClient() {
		final String hql = " select new map( count(o.id), o.client ) from "
				+ "Ordr as o  group by o.client  order by count(o.id) desc";
		
		List<Map> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Map> doInHibernate(Session session)
							throws HibernateException, SQLException
					{
				
						Query query = session.createQuery(hql);
						List<Map> list = query.list();
				
						return list;
					
					}
				});
	
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Map> findOrdroftime() {
		final String hql = "select new map(count(id),  substr(time, 0, 4) ) from "
				+ "Ordr group by   substr(time, 0, 4)  order by substr(time, 0, 4) desc";

		List<Map> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Map> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						List<Map> list = query.list();

						return list;
					}
				});

		return list;
	}
	@SuppressWarnings("unchecked")
	public List<Ordr> findbytime(final int offset, final int length,final String time) {
		final String hql = " from Ordr where time like ? ";
		List<Ordr> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<Ordr> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						  query.setString(0, "%"+time+"%");
						query.setFirstResult(offset);
						query.setMaxResults(length);
						List<Ordr> list = query.list();
						return list;
					}
				});
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<String> getOrderYears() {
		final String hql = " select distinct(substr(time, 0, 4)) from Ordr ";
		List<String> list = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<String> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);		
						List<String> list = query.list();
						session.close();
						return list;
					}
				});
		return list;
	}

}
