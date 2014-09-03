package com.crm.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.BeanUtils;

import com.crm.dao.IPlanDao;
import com.crm.dao.IStepDao;
import com.crm.po.Pln;
import com.crm.po.Step;
import com.crm.service.IStepService;
import com.crm.vo.PlanVo;
import com.crm.vo.StepVo;

public class StepService implements IStepService{
private IStepDao stepDao;


	public IStepDao getStepDao() {
	return stepDao;
}

public void setStepDao(IStepDao stepDao) {
	this.stepDao = stepDao;
}



	public List<Step> findbyplanid(long id) {
		return stepDao.findbyplanid(id);
		
	}
	
	public Serializable addStep(StepVo svo) {
		Step s=new Step();
		Pln p=new Pln();
		p.setId(svo.getPid());
		BeanUtils.copyProperties(svo,s);
		s.setPln(p);
		return stepDao.addStep(s);
	}

	public void delStep(long stepid) {
		stepDao.delStep(stepid);
		
	}

	public void modStep(StepVo svo) {
		Step s=new Step();
		Pln p=new Pln();
		p.setId(svo.getId());
		s.setPln(p);
		BeanUtils.copyProperties(svo, s);
		stepDao.modStep(s);
		
	}
	public void modResult(long id, String result) {
		Step step=stepDao.getbyid(id);
		step.setResult(result);
		stepDao.modStep(step);
		
	}

}
