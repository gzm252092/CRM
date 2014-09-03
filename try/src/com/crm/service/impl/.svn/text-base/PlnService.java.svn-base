package com.crm.service.impl;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.BeanUtils;

import com.crm.dao.IClientDao;
import com.crm.dao.IPlanDao;
import com.crm.dao.impl.ClientDao4Orcl;
import com.crm.po.Client;
import com.crm.po.Pln;
import com.crm.service.IPlnService;
import com.crm.util.Page;
import com.crm.vo.PlanVo;
import java.lang.Math;
import com.crm.dao.impl.PlanDao4Orcl;

public class PlnService implements IPlnService {

	private IPlanDao planDao;
	private IClientDao clientDao;

	public Page findall(int pageSize, int page, String styleid) {

		String hql = "from Pln where styleid=" + styleid;
		int allRow = planDao.getAllRowCount(hql);
		int totalPage = Page.countTotalPage(pageSize, allRow);
		final int offset = Page.countOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = Page.countCurrentPage(page);
		List<Pln> list = planDao.findall(offset, length, styleid);
		Page pageBean = new Page();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

	public IClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(IClientDao clientDao) {
		this.clientDao = clientDao;
	}

	public IPlanDao getPlanDao() {
		return planDao;
	}

	public void setPlanDao(IPlanDao planDao) {
		this.planDao = planDao;
	}

	public Serializable addPlan(PlanVo pVo) {
		Pln plan = new Pln();
		BeanUtils.copyProperties(pVo, plan);
		return planDao.addPlan(plan);
	}

	public void delPlan(long planid) {
		planDao.delPlan(planid);
	}

	public PlanVo getbyid(long planid) {
		Pln plan = planDao.getbyid(planid);
		return p2v(plan);
	}

	public void modPlan(PlanVo pVo) {
		Pln plan = new Pln();
		try {
			BeanUtils.copyProperties(pVo, plan);			
			planDao.modPlan(plan);
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}

	private List<PlanVo> p2v(List<Pln> lpps) {
		List<PlanVo> lpvs = new ArrayList<PlanVo>();
		for (Iterator iterator = lpps.iterator(); iterator.hasNext();) {
			Pln ppo = (Pln) iterator.next();
			PlanVo pvo = p2v(ppo);
			lpvs.add(pvo);
		}
		return lpvs;
	}

	private PlanVo p2v(Pln ppo) {
		PlanVo pVo = new PlanVo();
		try {
			BeanUtils.copyProperties(ppo, pVo);
			return pVo;
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return pVo;
	}

	public void modPlanStstus(long planid) {
		Pln plan = planDao.getbyid(planid);
		plan.setRead("1");
		planDao.modPlan(plan);
	}

	public void modPlanWorker(long planid, String name) {
		Pln plan = planDao.getbyid(planid);
		plan.setWorker(name);
		plan.setStatus("已分配");
		planDao.modPlan(plan);
	}

	public Page findByStatus(int pageSize, int page, String status,
			String styleid) {
		String hql = "from Pln where status=" + status + "and styleid="
				+ styleid;
		int allRow = planDao.getAllRowCount(hql);
		int totalPage = Page.countTotalPage(pageSize, allRow);
		final int offset = Page.countOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = Page.countCurrentPage(page);
		List<Pln> list = planDao.findByStatus(offset, length, status, styleid);
		Page pageBean = new Page();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

	public void modPlanWorker(PlanVo pVo) {
		Pln plan = planDao.getbyid(pVo.getId());
		plan.setWorker(pVo.getWorker());
		plan.setStatus(pVo.getStatus());
		planDao.modPlan(plan);
	}

	public void modPlantoFinish(long planid) {
		Pln plan = planDao.getbyid(planid);
		plan.setStatus("已完成");
		String ftime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		plan.setFtime(ftime);
		plan.setRead("0");
		planDao.modPlan(plan);

	}

	public Page findByCreator(int pageSize, int page, String username) {
		String hql = " from Pln where creator= " + username + " or worker="
				+ username;
		int allRow = planDao.getAllRowCount(hql);
		int totalPage = Page.countTotalPage(pageSize, allRow);
		final int offset = Page.countOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = Page.countCurrentPage(page);
		List<Pln> list = planDao.findByCreator(offset, length, username);
		Page pageBean = new Page();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

	public void modPlanFeedback(long planid, String chance, String feedback) {
		Pln plan = planDao.getbyid(planid);
		/*	if(plan.getStyleid()==3){

			Client c=new Client();
		
			c=clientDao.getbyname(plan.getClientname());
			long newchance=Long.parseLong(chance);
			long clientChance=Long.parseLong(c.getChance());
			if(newchance<50){
				clientChance-=Math.log(newchance);
			}
			else{
				clientChance+=Math.log(newchance);
			}
			if(clientChance>=100)
				clientChance=100;
			if(clientChance<=0)
				clientChance=0;		
			c.setChance(clientChance+"");
			clientDao.modClient(c);		
			} */

		plan.setChance(chance);
		plan.setFeedback(feedback);
		plan.setRead("0");
		planDao.modPlan(plan);

	}

	public Page findByCreator(int pageSize, int page, String username,
			String query) {
		String hql = "from Pln where (creator=" + username + " or worker="
				+ username + ") and name like '%" + query + "%'";
		int allRow = planDao.getAllRowCount(hql);
		int totalPage = Page.countTotalPage(pageSize, allRow);
		final int offset = Page.countOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = Page.countCurrentPage(page);
		List<Pln> list = planDao.findByCreator(offset, length, username, query);
		Page pageBean = new Page();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

	public Page findByKeyword(int pageSize, int page, String styleid,
			String query) {
		String hql = "from Pln where styleid=" + styleid + "and name like '%"
				+ query + "%'";
		int allRow = planDao.getAllRowCount(hql);
		int totalPage = Page.countTotalPage(pageSize, allRow);
		final int offset = Page.countOffset(pageSize, page);
		final int length = pageSize;
		final int currentPage = Page.countCurrentPage(page);
		List<Pln> list = planDao.findByKeyword(offset, length, styleid, query);
		Page pageBean = new Page();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

}
