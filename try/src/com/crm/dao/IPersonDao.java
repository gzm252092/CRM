package com.crm.dao;

import java.io.Serializable;
import java.util.List;

import sun.util.logging.resources.logging;

import com.crm.po.Person;

public interface IPersonDao {
	/**
	 * 返回所有的用户信息
	 * @return List<Person>
	 */
	public List<Person> findall();
	/**
	 * 添加用户
	 * @param Person
	 * @return Serializable
	 */
	Serializable addPerson(Person Person);
	/**
	 * 修改用户信息
	 * @param Person
	 */
	public void modPerson(Person Person );
	/**
	 * 删除用户
	 * @param Personid
	 */
	public void delPerson(long Personid );
	/**
	 * 通过id找到用户
	 * @param Personid
	 * @return Person
	 */
	public Person getbyid(long Personid );
	/**
	 * 通过角色找到所对应的人员
	 * @param roleid
	 * @return List<Person>
	 */
	public List<Person> getsamerolePersons(long roleid);
	/**
	 * 用户登录
	 * @param person
	 * @return List<Person>
	 */
	public List<Person> login(final Person person);
}
