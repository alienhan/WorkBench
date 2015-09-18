/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com 
 * 创建时间：2015-9-13 下午12:49:51 
 * 版本号：v1.0 
 * 本类主要用途描述： 
 * 
-------------------------------------------------------------------------*/
package com.jh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jh.beans.Person;
import com.jh.dao.PersonDao;
import com.jh.util.Condition;

/**
 * 在service类前加上@Transactional， 声明这个service所有方法需要事务管理。 每一个业务方法开始时都会打开一个事务。
 * 事务是相对于方法调用的
 * 
 * @Transactional 需要pom单独引用
 * 
 * @ClassName: PersonService
 * @author jh
 * @date 2015-9-16 下午11:30:47
 * 
 */

@Transactional
@Service
public class PersonService{

	/**
	 * error: Error creating bean with name 'personController' expected at least
	 * 1 bean which qualifies as autowire candidate for this depe do:
	 * 没有加载spring-context.xml，在web.xml中加入context-param即可
	 * 
	 * 同<bean id class></bean>作用相同
	 * 
	 * spring帮助实现
	 * 
	 * 自动连接
	 */
	@Autowired
	private PersonDao personDao;

	public void savePerson(Person person) {
		personDao.savePerson(person);
	}

	public Person testEm(Person person) {
		return personDao.testEm(person);
	}
	
	public List<Person> selectPersonJPQL(){
		return personDao.selectPersonJPQL();
	}
	
	public Condition<Person> selectPersonWithPage(Condition<Person> condition){
		return personDao.selectPersonWithPage(condition);
	}

}
