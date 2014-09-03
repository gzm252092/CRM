package com.crm.service;

import java.io.Serializable;

import com.crm.po.Person;
import com.crm.vo.HrManagementVo;

public interface IHrManagementService {
	/**
	 * 得到人员管理的数据
	 * @return HrManagementVo
	 */
	public HrManagementVo getHrData();
	/**
	 * 删除人员
	 * @param personid
	 */
	public void delPerson(long personid);
	/**
	 * 增加人员
	 * @param person
	 * @param roleid
	 * @return Serializable
	 */
	public Serializable addPerson(Person person,long roleid);
	/**
	 * 修改客户
	 * @param cid
	 * @param pid
	 */
	public void modClient(long cid,long pid);
	/**
	 * 修改人员
	 * @param person
	 * @param roleid
	 */
	public void modPerson(Person person,long roleid);
}
