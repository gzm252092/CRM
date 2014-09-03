package com.crm.action;

import java.io.Serializable;
import java.util.List;
import java.util.Map;


import com.crm.service.IPlnService;
import com.crm.util.Page;
import com.crm.vo.PlanVo;
import com.crm.vo.RoleVo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class PlanAction extends ActionSupport{
	private PlanVo pvo=new PlanVo() ;
	private IPlnService plnService;
	private int page;// �ڼ�ҳ
	private String status;
	private Page pageBean;// ��ֲ���Ϣ��bean
	private String result="操作失败";
	private String planid;
	private List<PlanVo> lpvs;
	private String query;

	public List<PlanVo> getLpvs() {
		return lpvs;
	}

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public PlanVo getPvo() {
		return pvo;
	}

	public void setPvo(PlanVo pvo) {
		this.pvo = pvo;
	}

	public String getPlanid() {
		return planid;
	}
	
	public void setPlnService(IPlnService plnService) {
		this.plnService = plnService;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Page getPageBean() {
		return pageBean;
	}

	public void setPageBean(Page pageBean) {
		this.pageBean = pageBean;
	}

	public String list() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		String roid=session.get("roleid").toString();
		String username="'"+session.get("user").toString()+"'";
		String styleid="0";
		if("1".equals(roid)){
			styleid="1";
			this.pageBean = plnService.findall(6, page,styleid);
		}else if ("2".equals(roid)||"4".equals(roid)||"6".equals(roid)) {
			this.pageBean=plnService.findByCreator(6,page,username);
		}else if("3".equals(roid)){
			styleid="2";
			this.pageBean = plnService.findall(6, page,styleid);
		}else if("5".equals(roid)){
			styleid="3";
			this.pageBean = plnService.findall(6, page,styleid);
		}
		return "json";
	}
	
	public String listByStatus() throws Exception {
		String styleid="0";
		Map<String, Object> session = ActionContext.getContext().getSession();
		String roid=session.get("roleid").toString();
		if("1".equals(roid)){
			styleid="1";
		}else if("3".equals(roid)){
			styleid="2";
		}else if("5".equals(roid)){
			styleid="3";
		}
		this.pageBean = plnService.findByStatus(6, page,status,styleid);
		return "json";
	}
	public String add() throws Exception {
		Serializable id = plnService.addPlan(pvo);
		planid=id.toString();
		return "json";
	}
	public String del() throws Exception {
		try {
			plnService.delPlan(pvo.getId());
			result = "操作成功";
		} catch (Exception e) {
			result = "操作失败";
		}
		return "json";
	}
	
	public String upd()throws Exception{
		try {
			plnService.modPlan(pvo);			
			result = "操作成功";
			
		} catch (Exception e) {
			System.out.println(e);
			result = "操作失败";
		}
		return "json";
	}
	public String updWorker()throws Exception{
		try {
			plnService.modPlanWorker(pvo);			
			result = "操作成功";
			
		} catch (Exception e) {
			System.out.println(e);
			result = "操作失败";
		}
		return "json";
	}
	
	public String listById(){
		try {
			plnService.getbyid(pvo.getId());
			result = "操作成功";
		} catch (Exception e) {
			result = "操作失败";
		}
		return "json";
	}

	public String find(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		String roid=session.get("roleid").toString();
		String username="'"+session.get("user").toString()+"'";
		String styleid="0";
		if("1".equals(roid)){
			styleid="1";
			this.pageBean = plnService.findByKeyword(6, page,styleid,query);
		}else if ("2".equals(roid)||"4".equals(roid)||"6".equals(roid)) {
			this.pageBean=plnService.findByCreator(6,page,username,query);
		}else if("3".equals(roid)){
			styleid="2";
			this.pageBean = plnService.findByKeyword(6, page,styleid,query);
		}else if("5".equals(roid)){
			styleid="3";
			this.pageBean = plnService.findByKeyword(6, page,styleid,query);
		}
		return "json";
	}

	public String findByName(){
		query="'"+query+"'";
		this.pageBean=plnService.findByCreator(6,page,query);
		return "json";
	}
	public String getResult() {
		return result;
	}

	
}
