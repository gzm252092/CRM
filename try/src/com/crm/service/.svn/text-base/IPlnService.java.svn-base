package com.crm.service;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Pln;
import com.crm.util.Page;
import com.crm.vo.PlanVo;

public interface IPlnService {
	/**
	 * 通过计划类型以分页得到所有的计划
	 * @param pageSize
	 * @param currentPage
	 * @param styleid
	 * @return Page
	 */
	public Page findall(int pageSize,int currentPage, String styleid);
	/**
	 * 通过计划状态返回计划
	 * @param pageSize
	 * @param currentPage
	 * @param status
	 * @param styleid
	 * @return Page
	 */
	public Page findByStatus(int pageSize,int currentPage, String status, String styleid);
	/**
	 * 增加计划
	 * @param pVo
	 * @return Serializable
	 */
	public Serializable addPlan(PlanVo pVo);
	/**
	 * 修改计划
	 * @param pVo
	 */
	public void modPlan(PlanVo pVo);
	/**
	 * 删除计划、
	 * @param planid
	 */
	public void delPlan(long planid );
	/**
	 * 通过计划id得到计划
	 * @param planid
	 * @return PlanVo
	 */
	public PlanVo getbyid(long planid );
	/**
	 * 修改计划状态
	 * @param planid
	 */
	public void modPlanStstus(long planid );
	/**
	 * 修改的分配者
	 * @param planid
	 * @param name
	 */
	public void modPlanWorker(long planid,String name );
	public void modPlanWorker(PlanVo plVo );
	public void modPlantoFinish(long planid);
	/**
	 * 修改计划的反馈
	 * @param planid
	 * @param chance
	 * @param feedback
	 */
	public void modPlanFeedback(long planid,String chance,String feedback);
	/**
	 * 返回创建者的所有计划
	 * @param i
	 * @param page
	 * @param username
	 * @return Page
	 */
	public Page findByCreator(int i, int page, String username);
	/**
	 * 通过关键字查找计划
	 * @param i
	 * @param page
	 * @param styleid
	 * @param query
	 * @return Page
	 */
	public Page findByKeyword(int i, int page, String styleid, String query);
	public Page findByCreator(int i, int page, String username, String query);


}
