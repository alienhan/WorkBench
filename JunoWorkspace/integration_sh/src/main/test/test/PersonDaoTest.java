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
		//fail("Not yet implemented");
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		
		person.setName("张三");
		personDao.savePerson(person);
	}
	
	//@Test
	public void testUpdatePersonByMerge(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(1);
		person.setName("李四2");
		personDao.updatePersonByMerge(person);
		
	}
	
	//@Test
	public void testUpdatePerson(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(1);
		person.setName("李四5");
		personDao.updatePerson(person);
	}
	
	//@Test
	public void testDeletePerson(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(1);
		personDao.deletePerson(person);
	}
	
	//@Test
	public void testSelectPersonByIdAndFind(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(2);
		Person personParam = personDao.selectPersonByIdAndFind(person);
		System.out.println("person name: " + personParam.getName());
	}
	
	//@Test
	public void testSelectPersonByIdAndgetReference(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(2);
		Person personParam = personDao.selectPersonByIdAndgetReference(person);
		System.out.println("person name: " + personParam.getName());
	}
	
	@Test
	public void testTestEm(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(2);
		Person personParam = personDao.testEm(person);
		System.out.println("person name: " + personParam.getName());
	}

}
