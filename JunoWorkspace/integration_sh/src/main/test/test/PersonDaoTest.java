/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com 
 * 创建时间：2015-9-14 下午1:19:49 
 * 版本号：v1.0 
 * 本类主要用途描述： 
 * 
-------------------------------------------------------------------------*/
package test;

import java.util.List;

import org.junit.Test;

import com.jh.beans.Person;
import com.jh.dao.PersonDao;

/** 
 * 	增 删 改 查
 *
 * @ClassName: PersonDaoTest 
 * @author jh 
 * @date 2015-9-14 下午3:00:40 
 *  
 */
public class PersonDaoTest {

	//@Test
	public void testSavePerson() {
		//save
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		
		person.setName("张三");
		personDao.savePerson(person);
	}
	
	//@Test
	public void testUpdatePersonByMerge(){
		//update -merge
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(1);
		person.setName("李四2");
		personDao.updatePersonByMerge(person);
		
	}
	
	//@Test
	public void testUpdatePerson(){
		//update - in transaction
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(1);
		person.setName("李四5");
		personDao.updatePerson(person);
	}
	
	//@Test
	public void testDeletePerson(){
		//delete
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(1);
		personDao.deletePerson(person);
	}
	
	//@Test
	public void testSelectPersonByIdAndFind(){
		// select - find
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(2);
		Person personParam = personDao.selectPersonByIdAndFind(person);
		System.out.println("person name: " + personParam.getName());
	}
	
	//@Test
	public void testSelectPersonByIdAndgetReference(){
		//select -getReference
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(2);
		Person personParam = personDao.selectPersonByIdAndgetReference(person);
		System.out.println("person name: " + personParam.getName());
	}
	
	//@Test
//	public void testTestEm(){
//		// @PersistenceContext
//		Person person = new Person();
//		PersonDao personDao = new PersonDao();
//		person.setId(2);
//		Person personParam = personDao.testEm(person);
//		System.out.println("person name: " + personParam.getName());
//	}
	
	//@Test
	public void testSavePersonByJPQL(){
		// insert by Jpql 
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setName("haha");
		int countRecord = personDao.savePersonByJPQL(person);
		System.out.println("countRecord: " + countRecord);
	}
	
	//@Test
	public void testUpdatePersonByJPQL(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(13);
		person.setName("haha");
		int countRecord = personDao.updatePersonByJPQL(person);
		System.out.println("countRecord: " + countRecord);
	}
	
	//@Test
	public void testDeletePersonByJPQL(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(13);
		person.setName("haha");
		int countRecord = personDao.deletePersonByJPQL(person);
		System.out.println("countRecord: " + countRecord);
	}
	
	@Test
	public void testSelectPersonJPQL(){
		PersonDao personDao = new PersonDao();
		List<Person> listPerson = personDao.selectPersonJPQL();
		for(Person person:listPerson){
			System.out.println("name: " + person.getName());
		}
	}

}
