package com.jh.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import com.jh.beans.Person;
import com.jh.util.Condition;
import com.jh.util.Page;

/**
 * 增 删 改 查
 * 
 * @Repository spring 用于注解数据访问层 用于标注数据访问组件，即DAO组件
 * 
 *             在JPA中，所有的Entity都是通过javax.persistence.EntityManager的API来管理和操纵的
 *             当EntityManager管理Entity时，所有的Entity都会有一个唯一标识（这个标识通常是主键列），
 *             Entity的状态将会和数据库同步。当Entity脱离EntityManager的管理时，
 *             Entity就变成了一个普通的Java对象实例，这时它的状态是detached(分离的)。
 * 
 *             当我们用new关键字创建一个新Entity时，这个Entity对象存在于内存中，JPA对它没有任何了解。
 *             只有当EntityManager开始管理它时，它的状态才会和数据库同步。当调用了EntityManager.remove方法后，
 *             它就会从数据库中删除掉，但Java对象还会在内存中存在，直到被垃圾回收掉。
 * 
 *             每个事物用户都有自己的Persistence Context，多个Persistence Context访问同一个数据库的实例
 * 
 *             如果我们想将对Persistence Context中数据改变立刻反映到数据库中，
 *             可以通过调用flush方法实现。或者我们想将数据库中的数据重新同步回Persistence Context，
 *             可以调用refresh方法。当应用程序在叫用了flush方法后，又调用了rollback方法，所有同步到数据库的数据又会都被回滚。
 *             在调用flush方法时，变化已经被同步到数据库中了，即SQL语句已经被执行了。
 * 
 * 
 * @ClassName: PersonDao
 * @author jh
 * @date 2015-9-14 下午3:01:21
 * 
 */
@Repository
public class PersonDao {

	/**
	 * error: An entity manager can only be injected in classes running inside a
	 * transaction. In other words, it can only be injected in a EJB. Other
	 * classe must use an EntityManagerFactory to create and destroy an
	 * EntityManager.
	 */
	@PersistenceContext(unitName = "itcast")
	protected EntityManager em;

	// But when using spring's transaction and entity manager support,
	// you don't need the EntityManagerFactory at all.
	/*
	 * @PersistenceContext(unitName = "itcast") private EntityManagerFactory
	 * entityManagerFactory;
	 */

	private EntityManager entityManager = Persistence
			.createEntityManagerFactory("itcast").createEntityManager();

	/**
	 * insert - persist save
	 * 
	 * Caused by: java.sql.SQLException: Field 'id' doesn't have a default value
	 * persistence 设置了id自增长，mysql没有设置相同的属性，报错
	 * 
	 * Caused by: java.lang.ClassNotFoundException: dao.PersonDao
	 * 没有解决，就是将编译位置改成mvn默认的编译路径。 但是在tmocat下启动的时候，不影响加载类文件
	 * 
	 * 如果传递进persist()方法的参数不是实体Bean，会引发IllegalArgumentException
	 * 
	 * @Title: savePerson
	 * @Author: jianghan
	 * 
	 */
	public void savePerson(Person person) {
		System.out.println("----------------" + person.getName());
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
	 * update - merge
	 * 
	 * 当实体正在被容器管理时，调用实体的set方法对数据进行修改， 在容器决定flush时（这个由container自行判断），更新的数据
	 * 才会同步到数据库， 而不是在调用了set方法对数据进行修改后马上同步到数据库。 如果希望修改后的数据马上同步到数据库，可以调用
	 * EntityManager.flush()方法。
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
		try {
			em.getTransaction().begin();
			Person personParam = em.find(Person.class, person.getId());
			personParam.setName(person.getName());
			em.flush();
			em.getTransaction().commit();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
			factory.close();
		}
	}

	/**
	 * update - merge
	 * 
	 * 实体Bean已经脱离了EntityManager的管理时， 调用实体的set方法对数据进行修改是无法同步更改到数据库的。 必须调用
	 * EntityManager.merge()方法。调用之后， 在容器决定flush时（这个由container自行判断）， 更新的数据才会同步到数据
	 * 库。如果希望修改后的数据马上同步到数据库， 可以调用EntityManager.flush()方法。
	 * 
	 * 执行em.merge(person)方法时，容器的工作规则： 1>如果此时容器中已经存在一个受容器管理的具有相同ID的person实例，
	 * 容器将会把参数person的内容拷贝进这个受管理的实例，merge()方法 返回受管理的实例，
	 * 但参数person仍然是分离的不受管理的。容器在决定Flush时把实例同步到数据库中。 2>容器中不存在具有相同ID的person实例。
	 * 容器根据传进的person参数Copy出一个受容器管理的person实例， 同时
	 * merge()方法会返回出这个受管理的实例，但参数person仍然是分离的不受管理的。 容器在决定Flush时把实例同步到数据库中。
	 * 
	 * @Title: updatePerson
	 * @Author: jianghan
	 * @param person
	 * 
	 */
	public void updatePersonByMerge(Person person) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		em.merge(person);
		em.getTransaction().commit();
		em.close();
		factory.close();
	}

	/**
	 * delete - remove
	 * 
	 * 如果级联关系cascade=CascadeType.ALL，在删除person 时候，也会把级联对象删除
	 * 把cascade属性设为cascade=CascadeType.REMOVE 有同样的效果
	 * 
	 * em调用remove时，Hibernate仍然还处于“detach”状态，在Hibernate文档中关于detach叙述： Detached -
	 * a detached instance is an object that has been persistent, but its
	 * Session has been closed. The reference to the object is still valid, of
	 * course, and the detached instance might even be modified in this state. A
	 * detached instance can be reattached to a new Session at a later point in
	 * time, making it (and all the modifications) persistent again.
	 * 此时，Session已经关闭，但引用仍然存在（换句话说，heap里的对象没有了）。所以此时必须再次产生一个Session（在heap里产生对象）：
	 * 解决方法之一 ——在删除之前把这个Detached instance绑定到当前的Sesssion，
	 * 在用当前Sesssion删除此instance。getEntityManager()提供merge方法实现
	 * 
	 * @Title: deletePerson
	 * @Author: jianghan
	 * @param person
	 * 
	 */
	public void deletePerson(Person person) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		em.remove(em.merge(person));
		em.getTransaction().commit();
		em.close();
		factory.close();
	}

	/**
	 * select - find
	 * 
	 * @Title: selectPersonById
	 * @Author: jianghan
	 * @param person
	 * 
	 */
	public Person selectPersonByIdAndFind(Person person) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		Person personParam = em.find(Person.class, person.getId());
		em.getTransaction().commit();
		em.close();
		factory.close();
		return personParam;
	}

	/**
	 * select by getRefercence
	 * 
	 * @Title: selectPersonByIdAndgetReference
	 * @Author: jianghan
	 * @param person
	 * @return
	 * 
	 */
	public Person selectPersonByIdAndgetReference(Person person) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("itcast");
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		Person personParam = em.getReference(Person.class, person.getId());
		em.getTransaction().commit();
		em.close();
		factory.close();
		return personParam;
	}

	/**
	 * no pass 通过jpql语句添加数据
	 * 
	 * @Title: savePersonByJPQL
	 * @Author: jianghan
	 * @param person
	 * @return
	 * 
	 */
	public int savePersonByJPQL(Person person) {
		String insertJpqlNoParam = "insert into Person(name) values('savePersonByJPQL')";
		entityManager.getTransaction().begin();
		Query query = entityManager.createQuery(insertJpqlNoParam);
		int countRecord = query.executeUpdate();// 返回影响的记录数
		entityManager.getTransaction().commit();
		return countRecord;
	}

	/**
	 * update by jpql
	 * 
	 * @Title: updatePersonByJPQL
	 * @Author: jianghan
	 * @param person
	 * @return
	 * 
	 */
	public int updatePersonByJPQL(Person person) {
		String updateJpql = "update Person p set p.name='124532' where p.id=12";
		String uodateJpqlByParam = "update Person p set p.name=?1 where p.id=?2";
		entityManager.getTransaction().begin();
		// no param
		Query query = entityManager.createQuery(updateJpql);
		int countRecord = query.executeUpdate();

		// param
		Query query2 = entityManager.createQuery(uodateJpqlByParam);
		query2.setParameter(1, person.getName());
		query2.setParameter(2, person.getId());
		// int countRecord2 = query2.executeUpdate();
		entityManager.getTransaction().commit();
		return countRecord;

	}

	/**
	 * delete by jpql param
	 * 
	 * error: javax.persistence.TransactionRequiredException: Executing an
	 * update/delete query 没有开启事务
	 * 
	 * @Title: deletePersonByJPQL
	 * @Author: jianghan
	 * @param person
	 * @return
	 * 
	 */
	public int deletePersonByJPQL(Person person) {
		String deleteJpql = "delete from Person p where p.name=?1";
		entityManager.getTransaction().begin();
		Query query = entityManager.createQuery(deleteJpql);
		query.setParameter(1, person.getName());
		int countRecord = query.executeUpdate();
		entityManager.getTransaction().commit();
		return countRecord;
	}

	/**
	 * select list
	 * 
	 * @Title: selectPersonJPQL
	 * @Author: jianghan
	 * @return
	 * 
	 */
	@SuppressWarnings("unchecked")
	public List<Person> selectPersonJPQL() {
		String selectJpql = "from Person p";
		entityManager.getTransaction().begin();
		Query query = entityManager.createQuery(selectJpql);
		List<Person> personList = query.getResultList();
		entityManager.getTransaction().commit();
		return personList;

	}

	/**
	 * 分页
	 * 
	 * @Title: selectPersonWithPage
	 * @Author: jianghan
	 * @param condition
	 * @return
	 * 
	 */
	@SuppressWarnings("unchecked")
	public Condition<Person> selectPersonWithPage(Condition<Person> condition) {
		Condition<Person> conditionParam = new Condition<Person>();
		int pageNo = condition.getPage().getPageNo();
		int pageSize = condition.getPage().getPageSize();

		// String jpqlparam = condition.getJpql();
		// if(StringUtils.isEmpty(jpqlparam)){
		// condition.setStatus(false);
		// return condition;
		// }
		if (pageNo < 1) {
			pageNo = 1;
		}
		if (pageSize < 1) {
			pageSize = Page.DEFAULT_PAGE_SIZE;
		}

		String jpql = "select p from Person p order by p.id";
		Query query = entityManager.createQuery(jpql);

		// 设置查询结果的开始记录数（从0开始计数）
		int firstResult = (pageNo - 1) * pageSize;
		query.setFirstResult(firstResult);
		// 设置查询结果的结束记录数
		query.setMaxResults(pageSize);

		List<Person> personList = query.getResultList();
		conditionParam.setList(personList);
		Page page = new Page(personList.size(), pageNo, pageSize);
		conditionParam.setPage(page);

		return conditionParam;
	}

	
	/** 
	 * 
	 *
	 * @Title: testEm 
	 * @Author: jianghan
	 * @param person
	 * @return
	 *    
	 */
	public Person testEm(Person person) {
		Person personParam = new Person();
		// 当使用spring 事务管理就不能再用em的事务管理了
		// em.getTransaction().begin();
		personParam = em.find(Person.class, person.getId());
		return personParam;
	}

	/**
	 * test Junit spring 整合 Junit 单元测试
	 * 
	 * 一个事务最好不要对一个表进行多次insert等操作。
	 * 
	 * @Title: testJunit
	 * @Author: jianghan
	 * @param person
	 * 
	 */
	public void testJunit(Person person) {
		em.persist(person); // 持久化实体
	}
}
