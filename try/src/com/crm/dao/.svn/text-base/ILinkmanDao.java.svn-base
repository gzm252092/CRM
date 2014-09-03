package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Client;
import com.crm.po.Linkman;

public interface ILinkmanDao {
	

	/**
	 * 添加联系人
	 * @param Linkman
	 * @return Serializable
	 */
	Serializable addLinkman(Linkman Linkman);
	/**
	 * 修改联系人信息
	 * @param Linkman
	 */
	public void modLinkman(Linkman Linkman );
	/**
	 * 删除联系人
	 * @param Linkmanid
	 */
	public void delLinkman(long Linkmanid );
	/**
	 * 通过id找联系人
	 * @param Linkmanid
	 * @return Linkman
	 */
	public Linkman getbyid(long Linkmanid );
	/**
	 * 找到客户的所有联系人
	 * @param clientid
	 * @return List<Linkman>
	 */
	public List<Linkman> findbyclientid(long clientid);
	/**
	 * 返回hql的所有记录
	 * @param hql
	 * @return int
	 */
	public int getAllRowCount(String hql);
}
