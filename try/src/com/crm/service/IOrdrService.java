package com.crm.service;

import java.util.List;
import java.util.Map;

import com.crm.po.Ordr;
import com.crm.util.Page;

public interface IOrdrService {
	/**
	 * 找到客户的所有定订单
	 * @param offset
	 * @param length
	 * @param clientid
	 * @return Page
	 */
	public Page findOrdrByClient(int offset,int length,long clientid);
	/**
	 * 删除订单
	 * @param ordrid
	 */
	public void delOrder(long ordrid );
	/**
	 * 找到客户的订单总数
	 * @return List
	 */
	  public List findOrderNumberofClient();
	  /**
	   * 找到各个时间段的客户
	   * @return List
	   */
	  public List findOrdroftime() ;
	  /**
	   * 返回所有的订单
	   * @param offset
	   * @param length
	   * @return Page
	   */
	  public Page findall(final int offset, final int length);
	  /**
	   * 通过时间查询订单
	   * @param offset
	   * @param length
	   * @param time
	   * @return Page
	   */
	  public Page finbytime(final int offset, final int length,String time);
	  /**
	   * 返回所有订单的年份
	   * @return List<String>
	   */
	  public  List<String> findOrderYears(); 
}
