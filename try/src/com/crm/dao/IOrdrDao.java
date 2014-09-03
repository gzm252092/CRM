package com.crm.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.crm.po.Ordr;
import com.crm.po.Pln;

public interface IOrdrDao {
	
	/**
	 * 找到客户的所有订单
	 * @param clientid
	 * @return List<Ordr>
	 */
	public List<Ordr> findOrdrByClient(int offset,int length,long clientid);
	/**
	 * 添加订单
	 * @param Ordr
	 * @return Serializable
	 */
	Serializable addOrdr(Ordr Ordr);
	/**
	 * 修改订单信息
	 * @param Ordr
	 */
	public void modOrdr(Ordr Ordr );
	/**
	 * 删除订单
	 * @param Ordrid
	 */
	public void delOrdr(long Ordrid );
	/**
	 * 通过id找到订单
	 * @param Ordrid
	 * @return Ordr
	 */
	public Ordr getbyid(long Ordrid );
	/**
	 * 返回hql的所有记录
	 * @param hql
	 * @return int
	 */
	public int getAllRowCount(String hql);
	/**
	 * 得到各个时间段所对应的订单
	 * @return List<Map>
	 */
	public List<Map> findOrdroftime();
	/**
	 * 得到每个客户的总订单
	 * @return List<Map>
	 */
	public List<Map> findOrderNumberofClient();
	/**
	 * 通过分页找到所有的订单
	 * @param offset
	 * @param length
	 * @return List<Ordr>
	 */
	public List<Ordr> findall(final int offset, final int length);
	/**
	 * 通过分页查找时间段的所有订单
	 * @param offset
	 * @param length
	 * @param time
	 * @return List<Ordr>
	 */
	public List<Ordr> findbytime(final int offset, final int length,String time);
	/**
	 * 返回各个订单的年份
	 * @return List<String>
	 */
	public  List<String> getOrderYears();
}
