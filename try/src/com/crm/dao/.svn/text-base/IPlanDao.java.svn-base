package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Client;
import com.crm.po.Pln;



public interface IPlanDao {
	/**
	 * 添加计划
	 * @param PromotePlan
	 * @return Serializable
	 */
	Serializable addPlan(Pln plan);
	/**
	 * 修改计划信息
	 * @param PromotePlan
	 */
	public void modPlan(Pln plan );
	/**
	 * 删除计划
	 * @param planid
	 */
	public void delPlan(long planid );
	/**
	 * 通过计划id查找计划
	 * @param planid
	 * @return Pln
	 */
	public Pln getbyid(long planid );
	/**
	 * 查找到分配者的所有计划
	 * @param name
	 * @return List<Pln>
	 */
	public List<Pln> findwork(String name);
    /**
     * 通过分页找到所有的计划
     * @param offset
     * @param length
     * @param styleid
     * @return List<Pln>
     */
	public List<Pln> findall(int offset,int length,String styleid);
	/**
	 * 通过状态查找计划
	 * @param offset
	 * @param length
	 * @param status
	 * @param styleid
	 * @return List<Pln>
	 */
	public List<Pln> findByStatus(int offset,int length, String status, String styleid);
	/**
	 * 得到hql的所有记录
	 * @param hql
	 * @return int
	 */
	public int getAllRowCount(String hql);
	/**
	 * 通过创建者的所有计划
	 * @param offset
	 * @param length
	 * @param username
	 * @return List<Pln>
	 */
	public List<Pln> findByCreator(int offset, int length, String username);
	
	public List<Pln> findByCreator(int offset, int length, String username,
			String query);
	/**
	 * 通过关键字查找计划
	 * @param offset
	 * @param length
	 * @param styleid
	 * @param query
	 * @return List<Pln>
	 */
	public List<Pln> findByKeyword(int offset, int length, String styleid, String query);
	
	
}
