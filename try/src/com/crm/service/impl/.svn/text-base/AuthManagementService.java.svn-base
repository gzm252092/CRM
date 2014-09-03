package com.crm.service.impl;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.crm.dao.IRightDao;
import com.crm.dao.IRoleDao;
import com.crm.dao.IRoleRightDao;
import com.crm.po.Right;
import com.crm.po.Role;
import com.crm.po.RoleRight;
import com.crm.service.IAuthManagementService;
import com.crm.vo.AuthManagementVo;
import com.crm.vo.OneMenuVo;
import com.crm.vo.RoleAuthVo;
import com.crm.vo.RoleVo;
import com.crm.vo.TwoMenuVo;

public class AuthManagementService implements IAuthManagementService {
	private IRoleDao roledao;
	private IRightDao rightdao;
	private IRoleRightDao rolerightdao;
	
	public static final int ONEMENUPID = 0;
	public static final String YES = "yes";
	public static final String NO = "no";
	
	public AuthManagementVo getAuthData() {
		// TODO Auto-generated method stub
		AuthManagementVo amv = new AuthManagementVo();
		amv.setLravs(this.findall());
		return amv;
	}

	private List<RoleAuthVo> findall(){
		List<RoleAuthVo> lravs = null;
		List<RoleVo> lrvs = this.findallRole();
		if(lrvs==null || lrvs.size()==0){
			return lravs;
		}
		lravs = new ArrayList<RoleAuthVo>();
		for(int i=0;i<lrvs.size();i++){
			RoleAuthVo rav = new RoleAuthVo();
			rav.setRoleid(lrvs.get(i).getRoleid());
			rav.setRolename(lrvs.get(i).getRolename());
			rav.setLomvs(getLomvsById(lrvs.get(i).getRoleid()));
			lravs.add(rav);
		}
		return lravs;
	}
	

	private List<OneMenuVo> getLomvsById(long roleid) {
		// TODO Auto-generated method stub
		List<OneMenuVo> lomvs = new ArrayList<OneMenuVo>();
		Set<RoleRight> roleRights = roledao.findbyid(roleid).getRoleRights();
		
		List<Right> lrs = this.rightdao.findbypid(ONEMENUPID);
		for(int i=0;i<lrs.size();i++){
			OneMenuVo omv = new OneMenuVo();
			omv.setName(lrs.get(i).getName());
			omv.setId(lrs.get(i).getId());
			omv.setLtmvs(getLtmvsById(omv.getId(),roleRights));
			lomvs.add(omv);
		}
		return lomvs;
	}

	private List<TwoMenuVo> getLtmvsById(long onemenuid, Set<RoleRight> roleRights) {
		// TODO Auto-generated method stub
		List<TwoMenuVo> ltmvs = new ArrayList<TwoMenuVo>();
		List<Right> lrs = this.rightdao.findbypid(onemenuid);
		for(int i=0;i<lrs.size();i++){
			TwoMenuVo tmv = new TwoMenuVo();
			tmv.setId(lrs.get(i).getId());
			tmv.setName(lrs.get(i).getName());
			boolean denyed = true;
			for(RoleRight rr:roleRights){
				if(rr.getRight().getId() == tmv.getId()){//如果该角色的权利项出现在总权限列表中
					denyed = false;
					break;
				}
			}
			tmv.setDenyed(denyed==true?YES:NO);
			ltmvs.add(tmv);
		}
		return ltmvs;
	}

	private List<RoleVo> findallRole(){
		List<RoleVo> lrvs = null;
		List<Role> lrs = roledao.findall();
		if(lrs == null || lrs.size()==0){
			return lrvs;
		}
		lrvs = p2v2(lrs);
		return lrvs;
		
	}
	
	private List<RoleVo> p2v2(List<Role> lrs) {
		// TODO Auto-generated method stub
		List<RoleVo> lrvs = new ArrayList<RoleVo>();
		for(int i=0;i<lrs.size();i++){
			Role r = lrs.get(i);
			RoleVo rv = new RoleVo();
			rv = p2v2(r);
			lrvs.add(rv);
		}
		return lrvs;
	}

	private RoleVo p2v2(Role r) {
		// TODO Auto-generated method stub
		RoleVo rv = new RoleVo();
		rv.setRoleid(r.getRoleid());
		rv.setRolename(r.getRolename());
		return rv;
	}

	public void setRoledao(IRoleDao roledao) {
		this.roledao = roledao;
	}

	public void setRightdao(IRightDao rightdao) {
		this.rightdao = rightdao;
	}

	
	public void setRolerightdao(IRoleRightDao rolerightdao) {
		this.rolerightdao = rolerightdao;
	}

	public void modAuth(long roleid, long[] rightid) {
		// TODO Auto-generated method stub
		Role role = roledao.findbyid(roleid);
		
		List<RoleRight> lrrs = rolerightdao.findbyroleid(roleid);
		for(RoleRight rr:lrrs){
			rolerightdao.delRoleRight(rr);
		}
		for(int i=0;i<rightid.length;i++){
			RoleRight rr = new RoleRight(rightdao.getbyid(rightid[i]),role); 
			Serializable s = rolerightdao.addRoleRight(rr);
		}
	}
	
	
}
