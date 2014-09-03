package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import com.crm.po.ProOrdr;
import com.crm.po.Product;

public interface IProOrdrDao {
   /**
    * 找到所有的pro-order
    * @return List<ProOrdr>
    */
	public List<ProOrdr> findall();

	/**
	 * 增加一条pro-order记录
	 * @param ProOrdr
	 * @return Serializable
	 */
	Serializable addProOrdr(ProOrdr ProOrdr);

	/**
	 * 修改pro-ordr
	 * @param ProOrdr
	 */
	public void modProOrdr(ProOrdr ProOrdr );

	/**
	 * 删除pro-ordr
	 * @param ProOrdrid
	 */
	public void delProOrdr(long ProOrdrid );

	/**
	 * 通过id查找pro-ordr
	 * @param ProOrdrid
	 * @return ProOrdr
	 */
	public ProOrdr getbyid(long ProOrdrid );

	/**
	 * 通过订单的id查找pro-ordr
	 * @param id
	 * @return List<ProOrdr>
	 */
	public List<ProOrdr> getByOrdrid(long id);
	
}
