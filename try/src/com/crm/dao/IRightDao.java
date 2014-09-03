package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Right;

public interface IRightDao {
	/**
	 * 得到所有的权限
	 * @return List<Right>
	 */
	public List<Right> findall();
	/**
	 * 增加权限
	 * @param Right
	 * @return Serializable
	 */
	Serializable addRight(Right Right);
	/**
	 * 修改权限
	 * @param Right
	 */
	public void modRight(Right Right );
	/**
	 * 删除权限
	 * @param Rightid
	 */
	public void delRight(long Rightid );
	/**
	 * 通过权限的id得到权限
	 * @param Rightid
	 * @return Right
	 */
	public Right getbyid(long Rightid );
	//public
	/**
	 * 得到所有的一级权限（菜单）
	 * @return List<Right>
	 */
	public List<Right> findbypid(long parentid);
}
