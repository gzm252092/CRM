package com.crm.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.crm.dao.IRightDao;
import com.crm.dao.IRoleDao;
import com.crm.po.Right;
import com.crm.po.RoleRight;
import com.crm.service.INaviService;
import com.crm.vo.OneMenuVo;
import com.crm.vo.OneNaviVo;
import com.crm.vo.TwoMenuVo;
import com.crm.vo.TwoNaviVo;

public class NaviService implements INaviService {
	private IRightDao rightdao;
	private IRoleDao roledao;
	public static final int ONEMENUPID = 0;

	
	public List<OneNaviVo> getNaviData(long roleid) {
		// TODO Auto-generated method stub
		List<OneNaviVo> lonvs = new ArrayList<OneNaviVo>();
		Set<RoleRight> roleRights = roledao.findbyid(roleid).getRoleRights();
		List<Right> lrs = this.rightdao.findbypid(ONEMENUPID);
		for(int i=0;i<lrs.size();i++){
			OneNaviVo onv = new OneNaviVo();
			onv.setName(lrs.get(i).getName());
			onv.setLtnvs(getLtnvsById(lrs.get(i).getId(),roleRights));
			lonvs.add(onv);
		}
		List<OneNaviVo> temp = new ArrayList<OneNaviVo>();
		for(OneNaviVo onv:lonvs){
			if(onv.getLtnvs()==null || onv.getLtnvs().size()==0){
				temp.add(onv);
			}
		}
		boolean r = lonvs.removeAll(temp);
		return lonvs;	
	}

	private List<TwoNaviVo> getLtnvsById(long onemenuid, Set<RoleRight> roleRights) {
		// TODO Auto-generated method stub
		List<TwoNaviVo> ltnvs = new ArrayList<TwoNaviVo>();
		List<Right> lrs = this.rightdao.findbypid(onemenuid);
		for(int i=0;i<lrs.size();i++){
			for(RoleRight rr:roleRights){
				if(rr.getRight().getId() == lrs.get(i).getId()){//如果该角色的权利项出现在总权限列表中
					TwoNaviVo tnv = new TwoNaviVo();
					tnv.setName(lrs.get(i).getName());
					tnv.setUrl(lrs.get(i).getUrl());
					ltnvs.add(tnv);
					break;
				}
			}
		}
		return ltnvs;
	}

	public void setRightdao(IRightDao rightdao) {
		this.rightdao = rightdao;
	}

	public void setRoledao(IRoleDao roledao) {
		this.roledao = roledao;
	}
}
