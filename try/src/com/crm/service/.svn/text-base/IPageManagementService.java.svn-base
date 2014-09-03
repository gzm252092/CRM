package com.crm.service;

import java.io.Serializable;

import com.crm.po.Right;
import com.crm.vo.PageManagementVo;

public interface IPageManagementService {
	/**
	 * 返回页面管理的数据
	 * @return PageManagementVo
	 */
	public PageManagementVo getPageData();
	/**
	 * 删除权限
	 * @param rightid
	 */
	public void delRight(long rightid);
	/**
	 * 增加一条权限
	 * @param r
	 * @return Serializable
	 */
	public Serializable addRight(Right r);
	/**
	 * 修改权限
	 * @param r
	 * @param rightid
	 */
	public void modRight(Right r,long rightid);
}
