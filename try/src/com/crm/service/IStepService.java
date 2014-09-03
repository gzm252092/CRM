package com.crm.service;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Step;
import com.crm.vo.PlanVo;
import com.crm.vo.StepVo;

public interface IStepService {

	/**
	 * 找到计划的所有步骤
	 * @param id
	 * @return List<Step>
	 */
	public List<Step> findbyplanid(long id);
	/**
	 * 增加步骤
	 * @param svo
	 * @return Serializable
	 */
	public Serializable addStep(StepVo svo);
	/**
	 * 删除步骤
	 * @param stepid
	 */
	public void delStep(long stepid );
	/**
	 * 修改步骤反馈
	 * @param id
	 * @param result
	 */
	public void modResult(long id,String result);
	/**
	 * 修改步骤
	 * @param svo
	 */
	public void modStep(StepVo svo);
}
