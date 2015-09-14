package com.jh.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.jh.beans.Person;

public class PersonDao {

	/**
	 * save
	 * 
	 * Caused by: java.sql.SQLException: Field 'id' doesn't have a default value
	 * persistence 设置了id自增长，mysql没有设置相同的属性，报错
	 * 
	 * Caused by: java.lang.ClassNotFoundException: dao.PersonDao
	 * 没有解决，就是将编译位置改成mvn默认的编译路径。
	 * 
	 * @Title: savePerson
	 * @Author: jianghan
	 * 
	 */
	public void savePerson(Person person) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		em.persist(person); // 持久化实体
		em.getTransaction().commit();
		em.close();
		factory.close();
	}

	/** 
	 * update
	 *
	 * @Title: updatePerson 
	 * @Author: jianghan
	 * @param person
	 *    
	 */
	public void updatePerson(Person person) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.persist(person);
		em.getTransaction().commit();
		em.clear();
		factory.close();
	}
}
