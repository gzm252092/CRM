package com.crm.action;

import java.io.Serializable;
import java.util.List;

import com.crm.po.Step;
import com.crm.service.IPlnService;
import com.crm.service.IStepService;
import com.crm.vo.PlanVo;
import com.crm.vo.StepVo;
import com.opensymphony.xwork2.ActionSupport;

public class StepAction extends ActionSupport{

	private String pid;
    private PlanVo pvo;
    private StepVo svo;
    private IStepService stepService;
    private IPlnService planService;
    private List<Step> steps;
    private String sid;
 private String result;
	public String getPid() {
		return pid;
	}

	public StepVo getSvo() {
		return svo;
	}


	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public List<Step> getSteps() {
		return steps;
	}

	public void setSteps(List<Step> steps) {
		this.steps = steps;
	}

	public void setPlanService(IPlnService planService) {
		this.planService = planService;
	}

	public void setSvo(StepVo svo) {
		this.svo = svo;
	}

	public void setStepService(IStepService stepService) {
		this.stepService = stepService;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public PlanVo getPvo() {
		return pvo;
	}

	public void setPvo(PlanVo pvo) {
		this.pvo = pvo;
	}
	
	public String findbyid() throws Exception {	
		pvo=planService.getbyid(Long.parseLong(pid));
		this.steps=stepService.findbyplanid(Long.parseLong(pid));
		return "json";
	}
	public String save()throws Exception {
		svo.setPid(pvo.getId());
		Serializable  id =stepService.addStep(svo);
		sid=id.toString();
		pvo.setRead("0");
		pvo.setStatus("执行中");
		planService.modPlan(pvo);
		return "json";
	}
	public String del()throws Exception {
		stepService.delStep(svo.getId());
		pvo.setRead("0");
		planService.modPlan(pvo);
		return "json";
	}
      public String editresult()throws Exception {
  
		stepService.modResult(Long.parseLong(sid), result);
    	pvo.setRead("0");
		planService.modPlan(pvo);
		this.steps=stepService.findbyplanid(Long.parseLong(pid));
		return "json";
      }
  
      
	
	
}
