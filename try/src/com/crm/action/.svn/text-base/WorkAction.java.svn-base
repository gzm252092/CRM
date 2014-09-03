package com.crm.action;

import java.util.List;
import java.util.Map;

import com.crm.po.Code;
import com.crm.service.IClientService;
import com.crm.service.IPlnService;
import com.crm.service.ITaskListService;
import com.crm.service.IWorkService;
import com.crm.util.Page;
import com.crm.vo.PlanVo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class WorkAction extends ActionSupport{
	private IWorkService workservice;
	private List<PlanVo> unassigned;
	private List<PlanVo> unhandle;
	private List<PlanVo> unread;
  private PlanVo pvo;
  private String pid;
  private String worker;
private String chance;
private String feedback;
private IPlnService plnService;
private IClientService clientService;
private ITaskListService taskListService;
private String personname;
private String mlength;
private String plength;
private String moldlength;
private String poldlength;
private String roid;
private String user;
	public PlanVo getPvo() {
	return pvo;
}

public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

public String getRoid() {
		return roid;
	}

	public void setRoid(String roid) {
		this.roid = roid;
	}

public String getMlength() {
		return mlength;
	}

	public void setMlength(String mlength) {
		this.mlength = mlength;
	}




public String getMoldlength() {
		return moldlength;
	}

	public void setMoldlength(String moldlength) {
		this.moldlength = moldlength;
	}

	public String getPoldlength() {
		return poldlength;
	}

	public void setPoldlength(String poldlength) {
		this.poldlength = poldlength;
	}

public String getPlength() {
		return plength;
	}

	public void setPlength(String plength) {
		this.plength = plength;
	}

public String getPersonname() {
		return personname;
	}

	public void setPersonname(String personname) {
		this.personname = personname;
	}

public void setTaskListService(ITaskListService taskListService) {
		this.taskListService = taskListService;
	}

public void setClientService(IClientService clientService) {
		this.clientService = clientService;
	}

public String getChance() {
		return chance;
	}

	public void setChance(String chance) {
		this.chance = chance;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

public String getWorker() {
		return worker;
	}

public void setWorker(String worker) {
	this.worker = worker;
}

public List<PlanVo> getUnhandle() {
		return unhandle;
	}

	public void setUnhandle(List<PlanVo> unhandle) {
		this.unhandle = unhandle;
	}


	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public void setUnassigned(List<PlanVo> unassigned) {
		this.unassigned = unassigned;
	}
	public void setPlnService(IPlnService plnService) {
		this.plnService = plnService;
	}


public List<PlanVo> getUnread() {
		return unread;
	}

	public void setUnread(List<PlanVo> unread) {
		this.unread = unread;
	}

public void setPvo(PlanVo pvo) {
	this.pvo = pvo;
}

	public List<PlanVo> getUnassigned() {
		return unassigned;
	}

	public void setWorkservice(IWorkService workservice) {
		this.workservice = workservice;
	}

	public String listunreadplan() throws Exception {
	//	Map<String, Object> session = ActionContext.getContext().getSession();
	//	String roid=session.get("roleid").toString();
		unread = workservice.getUnreadPlan(roid);
	
		return "json";
	}	
	public String listpersontask() throws Exception {
		//Map<String, Object> session = ActionContext.getContext().getSession();
		//String name=session.get("user").toString();
		
		unhandle = workservice.getTasktoPerson(user);
		 Code c=new Code();
			
			c.setLength(unhandle.size()+"");
			c.setWorker(user);
			taskListService.add(c);
		return "json";
	}
	public String listunassignedplan() throws Exception {
		//Map<String, Object> session = ActionContext.getContext().getSession();
	//	String roid=session.get("roleid").toString();
		unassigned = workservice.getUnassignedPlan(roid);
		 Code c=new Code();
	
		c.setLength(unassigned.size()+unread.size()+"");
		c.setWorker(roid);
		taskListService.add(c);
		return "json";
	}	
	public String update() throws Exception {
	
		plnService.modPlanWorker(Long.parseLong(pid), worker);
		return "json";
	}	
	public String updateread() throws Exception {
		plnService.modPlanStstus(Long.parseLong(pid));
		return "json";
	}
    public String changtofinish()throws Exception {
    	plnService.modPlantoFinish(Long.parseLong(pid));
		return "json";
    }
    public String writeFeedback()throws Exception {
    	PlanVo pvo=plnService.getbyid(Long.parseLong(pid));
    		long styleid=pvo.getStyleid();
    		if(styleid==3){
    			clientService.modChance(pvo.getClientname(), chance);
    		}
    	plnService.modPlanFeedback(Long.parseLong(pid),chance,feedback);
		return "json";
    }
    public String findTaskList(){
    	
		if(personname.equals("1")||personname.equals("3")||personname.equals("5")){
			mlength=workservice.getUnassignedPlan(personname).size()+workservice.getUnreadPlan(personname).size()+"";
			moldlength=this.taskListService.getTaskList(personname);
		}
		else{
			plength=workservice.getTasktoPerson(personname).size()+"";
			poldlength=this.taskListService.getTaskList(personname);
		}
    	return "json";
    	
    }
	
	
}
