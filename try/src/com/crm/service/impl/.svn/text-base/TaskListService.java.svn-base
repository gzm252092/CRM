package com.crm.service.impl;

import com.crm.dao.ITaskListDao;
import com.crm.po.Code;
import com.crm.service.ITaskListService;

public class TaskListService implements ITaskListService{

	private ITaskListDao taskListDao;
	
	public ITaskListDao getTaskListDao() {
		return taskListDao;
	}

	public void setTaskListDao(ITaskListDao taskListDao) {
		this.taskListDao = taskListDao;
	}

	public String getTaskList(String name) {
		return this.taskListDao.getTaskList(name).getLength();
	}

	public void add(Code c) {
		this.taskListDao.SaveorUpdate(c);
		
	}

}
