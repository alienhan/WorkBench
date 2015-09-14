package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import beans.Person;

public class PersonDao {
	public void save() {

	}

	/** 
	 * Caused by: java.sql.SQLException: Field 'id' doesn't have a default value
	 * persistence 设置了id自增长，mysql没有设置相同的属性，报错
	 *
	 * @Title: main 
	 * @Author: jianghan
	 * @param args
	 *    
	 */
	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		Person person = new Person(); // person为new状态
		//person.setId(1);
		person.setName("zhang san");
		em.persist(person); // 持久化实体
		em.getTransaction().commit();
		em.close();
		factory.close();
	}
}
