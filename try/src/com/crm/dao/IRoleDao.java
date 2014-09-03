package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Role;

public interface IRoleDao {

	 /**
	  * 增加一个角色
	  * @param role
	  * @return Serializable
	  */
	Serializable addRole(Role role);
	/**
	 * 修改角色
	 * @param role
	 */
	public void modRole(Role role);
	/**
	 * 删除角色
	 * @param roleid
	 */
	public void delRole(long roleid);

	/**
	 * 得到所有的角色
	 * @return List<Role>
	 */
	List<Role> findall();

	/**
	 * 通过角色id 返回角色
	 * @param roleid
	 * @return Role
	 */
	Role findbyid(long roleid);
}
