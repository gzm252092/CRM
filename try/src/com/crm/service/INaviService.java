package com.crm.service;

import java.util.List;

import com.crm.vo.OneNaviVo;

public interface INaviService {
	/**
	 * 返回所有的目录
	 * @param roleid
	 * @return
	 */
	public List<OneNaviVo> getNaviData(long roleid);
}
