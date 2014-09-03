package com.crm.action;

import java.util.List;
import java.util.Map;

import com.crm.service.INaviService;
import com.crm.vo.OneMenuVo;
import com.crm.vo.OneNaviVo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class NaviAction extends ActionSupport {
	private INaviService naviservice;
	private List<OneNaviVo> lonvs;
	/*
	  <s:property value="exception"/>

	    <h3>Stack trace:</h3>
	    <pre>
	        <s:property value="exceptionStack"/>
	    </pre>
	*/
	public String load(){
		
		Map<String, Object> session = ActionContext.getContext().getSession();
		long roleid = -1;
		try{
			roleid = Long.parseLong(session.get("roleid").toString());
		}catch(Exception e){
			System.err.println("用户未登录！");
			e.printStackTrace();
		}
		lonvs = naviservice.getNaviData(roleid);
		return "json";
	}
	
	
	public List<OneNaviVo> getLonvs() {
		return lonvs;
	}

	public void setNaviservice(INaviService naviservice) {
		this.naviservice = naviservice;
	}
}
