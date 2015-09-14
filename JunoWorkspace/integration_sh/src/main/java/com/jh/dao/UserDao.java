package com.jh.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jh.beans.MyUser;


public class UserDao {

	/**
	 * persist save
	 * 
	 * 
	 * @param user
	 */
	public void saveUser(MyUser myUser) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		em.persist(myUser); // 持久化实体
		em.getTransaction().commit();
		em.close();
		factory.close();
	}

	/**
	 * 
	 * select 通过数据库中的主键获取一个返回值
	 * 
	 * @param myUser
	 */
	public MyUser getUser(MyUser myUser) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		MyUser user2 = em.find(MyUser.class, myUser.getUserid());
		return user2;
	}
	

	/**
	 * select 通过数据库中的主键获取一个返回值
	 * 添加 EntityTransaction
	 * 
	 * @param myUser
	 */
	public void getUser2(MyUser myUser) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		EntityTransaction tx = em.getTransaction();
		MyUser user2 = new MyUser();
		try {
			tx.begin();
			System.out.println("myUser.getUserid()" + myUser.getUserid());
			user2 = em.find(MyUser.class, myUser.getUserid());
			tx.commit();
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		} finally {
			em.close();
		}
	}

}
