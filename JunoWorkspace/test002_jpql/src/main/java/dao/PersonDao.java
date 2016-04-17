package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import beans.Person;

public class PersonDao {
	public void save() {

	}

	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		Person person = new Person(); // person为new状态
		person.setName("zhang san");
		em.persist(person); // 持久化实体
		em.getTransaction().commit();
		em.close();
		factory.close();
	}
}
