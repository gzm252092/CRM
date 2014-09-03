package com.crm.service;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Ordr;
import com.crm.po.ProOrdr;

import com.crm.vo.OrdrVo;
import com.crm.vo.ProOrdreVo;
import com.crm.vo.ProductVo;

public interface IProOrdrService {

	/**
	 * 得到所有的计划
	 * @return List<ProductVo>
	 */
	public List<ProductVo> listPro();
/**
 * 增加订单
 * @param ordrvo
 * @return Serializable
 */
	public Serializable addOrdr(OrdrVo ordrvo);
/**
 * 增加proorder
 * @param proOrdrvo
 * @return Serializable
 */
	public Serializable addProOrdr(ProOrdreVo proOrdrvo);
/**
 * 通过id得到产品
 * @param id
 * @return ProductVo
 */
	public ProductVo finProById(long id);
/**
 *通过id得到订单
 * @param id
 * @return OrdrVo
 */
	public OrdrVo findOrdrById(long id);
/**
 * 通过订单的id得到proordr
 * @param id
 * @return List<ProOrdreVo>
 */ 
	public List<ProOrdreVo> findProByOrdrid(long id);

}
