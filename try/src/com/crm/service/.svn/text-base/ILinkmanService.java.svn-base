package com.crm.service;

import java.io.Serializable;
import java.util.List;


import com.crm.po.Client;
import com.crm.po.Linkman;
import com.crm.util.Page;
import com.crm.vo.LinkmanVo;

public interface ILinkmanService {
	
	/**
	 * 返回客户的所有联系人
	 * @param clientid
	 * @return List<Linkman>
	 */
	public  List<Linkman> findbyclientid(long clientid);
	/**
	 * 增加联系人
	 * @param linkman
	 * @param cid
	 * @return Serializable
	 */
	public Serializable addLinkman(Linkman linkman,long cid);
	/**
	 * 删除联系人
	 * @param linkmanid
	 */
	public void delLinkman(long linkmanid);
	/**
	 * 修改联系人
	 * @param linkman
	 */
	public void modLinkman(Linkman linkman);
	/**
	 * 通过id返回联系人
	 * @param linkmanid
	 * @return Linkman
	 */
	public Linkman findbyid(long linkmanid);
}
