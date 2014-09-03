package com.crm.action;

import java.util.List;
import java.util.Map;



import com.crm.service.IPersonService;
import com.crm.vo.PersonVo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PersonAction extends ActionSupport{

	private IPersonService personService;
	private List<PersonVo> lpvs;
	private PersonVo pvo;
	private String planid;
	private String roleid;
	
	public List<PersonVo> getLpvs() {
		return lpvs;
	}


	public String getRoleid() {
		return roleid;
	}


	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}


	public String getPlanid() {
		return planid;
	}


	public void setPlanid(String planid) {
		this.planid = planid;
	}


	public void setPersonService(IPersonService personService) {
		this.personService = personService;
	}

	

	public PersonVo getPvo() {
		return pvo;
	}


	public void setPvo(PersonVo pvo) {
		this.pvo = pvo;
	}

	public String findrightperson() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		String roid=session.get("roleid").toString();
		lpvs=personService.findrightperson(roid);
		System.out.println("PersonAction.list()");
		return "json";
	}
	
	
	public String login(){
		lpvs=personService.login(pvo);
		if(lpvs.size()==1){
			String user=lpvs.get(0).getName();
			String roleid=lpvs.get(0).getRolevo().getRoleid()+"";
			Map<String, Object> session = ActionContext.getContext().getSession();
			session.put("user", user);
			session.put("roleid", roleid);
			System.out.println(roleid);
			if("7".equals(roleid)){
				return "client";
			}
			return "success";
		}
		return "failure";
	}
	
	public String logout(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("user");
		session.remove("roleid");
		return "logout";
	}
	public String list(){
		lpvs=personService.findall();
		return "json";
	}
}
