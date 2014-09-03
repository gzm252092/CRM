package com.crm.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.crm.po.Client;



public interface IClientDao {
	/**
	 * 找到客户的所有分布地区
	 * @return List<Map>
	 */
	
	public List<Map> getRegion();
	/**
	 * 通过分页找到Client
	 * @param offset
	 * @param length
	 * @return List<Client>
	 */
	public List<Client> findall(int offset,int length);
	/**
	 * 返回数据库数据里的记录条数
	 * @param hql
	 * @return int
	 */
	public int getAllRowCount(String hql);
	/**
	 * 向数据库里面添加客户
	 * @param Client
	 * @return Serializable
	 */
	Serializable addClient(Client Client);
	/**
	 * 修改客户信息
	 * @param Client
	 */
	public void modClientmerge(Client client);
	public void modClient(Client Client );
	/**
	 * 删除客户
	 * @param Clientid
	 */
	public void delClient(long Clientid );
	/**
	 * 通过id查找客户
	 * @param Clientid
	 * @return Client
	 */
	public Client getbyid(long Clientid );
	/**
	 * 通过客户姓名找到客户
	 * @param name
	 * @return Client
	 */
	public Client getbyname(String name);
	/**
	 * 找到流失的客户
	 * @return List<Map> 
	 */
	public List<Map> findlostClient();
	
	/**
	 * 找到所有未分配账号的客户
	 * @return List<Client>
	 */
	public List<Client> findNewClient();
	/**
	 * 得到所有客户的名称
	 * @return  List<String>
	 */
	public List<String> getAllNames();
	/**
	 * 得到流失客户的数据
	 * @return  List<String>
	 */
	public List<Map> findlostclientstatis();
	/**
	 * 得到成功率较高的客户
	 * @return List<Client>
	 */
	public List<Client> findHightClients() ;
	/**
	 * 得到所有的客户
	 * @return List<Client>
	 */

	public List<Client> getall();

	/**
	 * 客户名称的模糊查询
	 * @param charname
	 * @param offset
	 * @param length
	 * @return List<Client>
	 */
	public List<Client> findnamecomtainschar(String charname,int offset,int length);
	/**
	 * 客户地区的模糊查询
	 * @param charregion
	 * @param offset
	 * @param length
	 * @return List<Client>
	 */
	public List<Client> findregioncomtainschar(String charregion,int offset,int length);

	
	public Client findbypersionid(long personid);
}
