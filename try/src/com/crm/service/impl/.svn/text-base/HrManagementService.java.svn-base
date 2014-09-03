package com.crm.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.crm.dao.IClientDao;
import com.crm.dao.IPersonDao;
import com.crm.dao.IRoleDao;
import com.crm.po.Client;
import com.crm.po.Person;
import com.crm.po.Role;
import com.crm.service.IHrManagementService;
import com.crm.vo.HrManagementVo;
import com.crm.vo.NewClientVo;
import com.crm.vo.PersonVo;
import com.crm.vo.RoleVo;

public class HrManagementService implements IHrManagementService {
	
	private IPersonDao persondao;
	private IRoleDao roledao;
	private IClientDao clientdao;
	
	public HrManagementVo getHrData() {
		// TODO Auto-generated method stub
		HrManagementVo hmv = new HrManagementVo();
		hmv.setLncvs(this.findnewClient());
		hmv.setLpvs(this.findallPerson());
		hmv.setLrvs(this.findallRole());
		return hmv;
	}
	
	private List<NewClientVo> findnewClient(){
		List<NewClientVo> lncvs = null;
		List<Client> lcs = clientdao.findNewClient();
		if(lcs==null || lcs.size()==0){
			return lncvs;
		}
		lncvs = p2v3(lcs);
		return lncvs;
	}
	
	private List<NewClientVo> p2v3(List<Client> lcs) {
		// TODO Auto-generated method stub
		List<NewClientVo> lncvs = new ArrayList<NewClientVo>();
		for(int i=0;i<lcs.size();i++){
			Client c = lcs.get(i);
			NewClientVo ncv = new NewClientVo();
			ncv = p2v3(c);
			lncvs.add(ncv);
		}
		return lncvs;
	}

	private NewClientVo p2v3(Client c) {
		// TODO Auto-generated method stub
		NewClientVo ncv = new NewClientVo();
		ncv.setName(c.getName());
		ncv.setCid(c.getId());
		return ncv;
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

	private List<PersonVo> findallPerson(){
		List<PersonVo> lpvs = null;
		List<Person> lps = persondao.findall();
		if(lps==null || lps.size()==0)
			return lpvs;
		lpvs = p2v1(lps);
		return lpvs;
		
	}
	private List<PersonVo> p2v1(List<Person> lps) {
		// TODO Auto-generated method stub
		List<PersonVo> lpvs = new ArrayList<PersonVo>();
		for(int i=0;i<lps.size();i++){
			Person p = lps.get(i);
			PersonVo pv = new PersonVo();
			pv = p2v1(p);
			lpvs.add(pv);
		}
		return lpvs;
	}
	private PersonVo p2v1(Person p) {
		// TODO Auto-generated method stub
		PersonVo pv = new PersonVo();
		pv.setId(p.getId());
		pv.setName(p.getName());
		pv.setPwd(p.getPwd());
		pv.setRolename(p.getRole().getRolename());
		return pv;
	}

	

	public void setPersondao(IPersonDao persondao) {
		this.persondao = persondao;
	}

	public void setRoledao(IRoleDao roledao) {
		this.roledao = roledao;
	}

	public void setClientdao(IClientDao clientdao) {
		this.clientdao = clientdao;
	}

	public void delPerson(long personid) {
		// TODO Auto-generated method stub
		Person p = this.persondao.getbyid(personid);
		if(p.getRole().getRoleid() == 7){
			Client c = this.clientdao.findbypersionid(personid);
			c.setPersonid(0l);
			this.clientdao.modClient(c);
		}
		persondao.delPerson(personid);
	}

	public Serializable addPerson(Person person,long roleid) {
		// TODO Auto-generated method stub
		Role r = roledao.findbyid(roleid);
		person.setRole(r);
		return persondao.addPerson(person);
	}

	public void modClient(long cid, long pid) {
		// TODO Auto-generated method stub
		Client c = clientdao.getbyid(cid);
		c.setPersonid(pid);
		clientdao.modClient(c);
	}

	public void modPerson(Person person, long roleid) {
		// TODO Auto-generated method stub
		Role r = roledao.findbyid(roleid);
		Person p =persondao.getbyid(person.getId());
		p.setName(person.getName());
		p.setPwd(person.getPwd());
		p.setRole(r);
		persondao.modPerson(p);
	}
	
	
}
