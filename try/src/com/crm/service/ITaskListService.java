package com.crm.service;

import com.crm.po.Code;

public interface ITaskListService {
	/**
	 * 得到任务的个数
	 * @param name
	 * @return String
	 */
	public String getTaskList(String name);
	/**
	 * 更新或增加任务的个数
	 * @param c
	 */
	public void add(Code c);
}
