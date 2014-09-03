package com.crm.service;

import java.io.Serializable;

import com.crm.po.Role;
import com.crm.vo.RoleManagementVo;

public interface IRoleManagementService {
	/**
	 * 得到角色管理的数据
	 * @return RoleManagementVo
	 */
	public RoleManagementVo getRoleData();
	/**
	 * 增加角色
	 * @param r
	 * @return Serializable
	 */
	public Serializable addRole(Role r);
	/**
	 * 修改角色
	 * @param roleid
	 * @param rolename
	 */
	public void modRole(long roleid,String rolename);
	/**
	 * 修改角色
	 * @param roleid
	 */
	public void delRole(long roleid);
}
