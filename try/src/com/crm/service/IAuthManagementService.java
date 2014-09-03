package com.crm.service;

import java.io.Serializable;

import com.crm.vo.AuthManagementVo;

public interface IAuthManagementService {
	/**
	 * 得到权限的数据
	 * @return AuthManagementVo
	 */
	public AuthManagementVo getAuthData();
	/**
	 * 修改权限
	 * @param roleid
	 * @param rightid
	 */
	public void modAuth(long roleid,long[] rightid);
}
