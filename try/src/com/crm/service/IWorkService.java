package com.crm.service;

import java.util.List;

import com.crm.po.Pln;
import com.crm.po.Step;
import com.crm.util.Page;
import com.crm.vo.PlanVo;

import com.crm.vo.StepVo;

public interface IWorkService {
 /**
  * 得到未读的计划
  * @param roleid
  * @return List<PlanVo>
  */ 

	public List<PlanVo> getUnreadPlan(String roleid);
	/**
	 * 得到未分配的计划
	 * @param roleid
	 * @return List<PlanVo>
	 */
	public List<PlanVo> getUnassignedPlan(String roleid);
	/**
	 * 得到人员的任务
	 * @param name
	 * @return List<PlanVo>
	 */
	public List<PlanVo> getTasktoPerson(String name);
}
