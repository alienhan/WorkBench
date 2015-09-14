package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import beans.MyUser;

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
	 * save
	 * 
	 * @param user
	 */
	public void saveUser2(MyUser myUser) {

	}

	/**
	 * 
	 * select
	 * 
	 * @param myUser
	 */
	public void getUser(MyUser myUser) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		MyUser user2 = em.find(MyUser.class, myUser.getUserid());
		// System.out.println("mark1" +user2.getUsername());
	}

	public void getUser2(MyUser myUser) {
		System.out.println(myUser.getUserid());
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
		System.out.println("user" + user2.getUsername());
	}

}
