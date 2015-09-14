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

public class PersonDaoTest {

	//@Test
	public void testSavePerson() {
		//fail("Not yet implemented");
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		
		person.setName("张三");
		personDao.savePerson(person);
	}
	
	@Test
	public void testUpdatePerson(){
		Person person = new Person();
		PersonDao personDao = new PersonDao();
		person.setId(1);
		person.setName("李四");
		personDao.savePerson(person);
		
	}
	
	
	

}
