package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Step;



public interface IStepDao {
  /**
   * 返回所有的步骤
   * @return List<Step>
   */
	public List<Step> findall();
	/**
	 * 返回关于计划的所有步骤
	 * @param planid
	 * @return List<Step>
	 */
	public List<Step> findbyplanid(long planid);
	/**
	 * 增加步骤
	 * @param Step
	 * @return Serializable
	 */
	Serializable addStep(Step Step);
	/**
	 * 修改步骤
	 * @param Step
	 */
	public void modStep(Step Step );
	/**
	 * 删除步骤
	 * @param Stepid
	 */
	public void delStep(long Stepid );
	/**
	 * 通过步骤的id得到步骤
	 * @param Stepid
	 * @return Step
	 */
	public Step getbyid(long Stepid );
	
}
