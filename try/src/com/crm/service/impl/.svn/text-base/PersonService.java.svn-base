package com.crm.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.BeanUtils;

import com.crm.dao.IPersonDao;
import com.crm.dao.IPlanDao;
import com.crm.po.Person;
import com.crm.po.Role;
import com.crm.service.IPersonService;
import com.crm.service.IPlnService;
import com.crm.vo.PersonVo;
import com.crm.vo.RoleVo;

public class PersonService implements IPersonService {
	
	private IPersonDao personDao;
	private IPlanDao planDao;

	public List<PersonVo> findall() {
		List<Person> lpps=personDao.findall();
		List<PersonVo> lpvs=p2v(lpps);
		return lpvs;
	}
	
	public IPlanDao getPlanDao() {
		return planDao;
	}

	public void setPlanDao(IPlanDao planDao) {
		this.planDao = planDao;
	}

	private List<PersonVo> p2v(List<Person> lpps) {
		List<PersonVo> lpvs = new ArrayList<PersonVo>();
		for (Iterator iterator = lpps.iterator(); iterator.hasNext();) {
			Person ppo = (Person) iterator.next();
			PersonVo pvo = p2v(ppo);
			lpvs.add(pvo);
		}
		return lpvs;
	}

	private PersonVo p2v(Person ppo) {
		PersonVo pVo = new PersonVo();
		BeanUtils.copyProperties(ppo, pVo);
		pVo.setRolevo(p2v1(ppo.getRole()));
		return pVo;
	}

	private RoleVo p2v1(Role role){
		RoleVo rVo=new RoleVo();
		BeanUtils.copyProperties(role, rVo);
		return rVo;
	}
	public IPersonDao getPersonDao() {
		return personDao;
	}

	public void setPersonDao(IPersonDao personDao) {
		this.personDao = personDao;
	}

	public List<PersonVo> findrightperson(String roid) {
		//List<PersonVo> pVos;
		List<Person> ps=new ArrayList<Person>();
		if(roid.equals("1")){
			ps=personDao.getsamerolePersons(2);
		}
		if(roid.equals("3")){
			ps=personDao.getsamerolePersons(4);
		}
		if(roid.equals("5")){
			ps=personDao.getsamerolePersons(6);
		}
		//return p2v(ps);
		List<PersonVo> pVos=p2v(ps);
		return pVos;
		
	}

	public List<PersonVo> login(PersonVo pVo) {
		Person person=new Person();
		BeanUtils.copyProperties(pVo,person);
		List<Person> lps=personDao.login(person);
		return p2v(lps);		
	}
}
