package com.crm.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.crm.po.Client;
import com.crm.util.Page;
import com.crm.vo.ClientLostVo;
import com.crm.vo.ClientVo;


public interface IClientService {

	/**
	 * 以分页得到所有的客户
	 * @param pageSize
	 * @param currentPage
	 * @return Page
	 */
	public Page findall(int pageSize,int currentPage);
	/**
	 * 增加客户
	 * @param client
	 * @return Serializable
	 */
	public Serializable addClient(ClientVo client);
	/**
	 * 修改客户
	 * @param client
	 */
	public void modClient(ClientVo client);
	public void modClientmerge(ClientVo clientvo);
	/**
	 * 得到所有的地区
	 * @return List
	 */
    public List getRegions();
    /**
     * 删除客户
     * @param clientid
     */
	public void delClient(long clientid);
	/**
	 * 以分页返回流失的客户
	 * @param pageSize
	 * @param currentPage
	 * @return Page
	 */
	public Page findlostClient(int pageSize,int currentPage);
	/**
	 * 通过客户的id得到客户
	 * @param cid
	 * @return Client
	 */
	public ClientVo getbyid(long cid);
	/**
	 * 通过客户的名称得到客户
	 * @param name
	 * @return ClientVo
	 */
	public ClientVo getByName(String name);
	/**
	 * 修改客户的成功率
	 * @param clientname
	 * @param chance
	 */
	public void modChance(String clientname,String chance);
	/**
	 * 验证客户的名称是否已存在
	 * @param name
	 * @return boolean
	 */
	public boolean checkClientName(String name);
	/**
	 * 得到流失客户的数据
	 * @return List
	 */
	public List lostclientstatis();

	/**
	 * 得到成功率该的客户
	 * @return List<Client>
	 */
	public List<ClientVo> findHightClients() ;
	/**
	 * 以分页的返回客户名称的模糊查询结果
	 * @param charname
	 * @param pageSize
	 * @param currentPage
	 * @return Page
	 */
	public Page findnamecomtainschar(String charname,int pageSize,int currentPage);
	/**
	 * 以分页的返回地区的模糊查询结果
	 * @param charname
	 * @param pageSize
	 * @param currentPage
	 * @return Page
	 */
	public Page findregioncomtainschar(String charname,int pageSize,int currentPage);
}
