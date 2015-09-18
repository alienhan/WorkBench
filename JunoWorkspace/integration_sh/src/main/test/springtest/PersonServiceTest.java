/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com 
 * 创建时间：2015-9-18 下午2:13:27 
 * 版本号：v1.0 
 * 本类主要用途描述： 
 * 
-------------------------------------------------------------------------*/
package springtest;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.test.context.transaction.TransactionalTestExecutionListener;
import org.springframework.transaction.annotation.Transactional;

import com.jh.beans.Person;
import com.jh.controller.PersonController;
import com.jh.service.PersonService;


/**
 * error: 
 * 		java.lang.UnsupportedClassVersionError: javax/servlet/ServletContext :
 * 		Unsupported major.minor version 51.0	
 * solution:
 * 		添加@TestExecutionListeners
 * 
 *	error:
 *		当em 非spring生成，transaction会报错 
 *		
 *
 * @ClassName: PersonServiceTest 
 * @author jh 
 * @date 2015-9-18 下午4:33:33 
 *  
 */
//加载spring 配置文件
@ContextConfiguration(locations = { "classpath:spring-context.xml",
		"classpath:spring-servlet.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
// 加载事务管理类，可以省略
@TransactionConfiguration(transactionManager = "txManager", defaultRollback = true)
// 测试执行的类
@TestExecutionListeners(listeners = {
		DependencyInjectionTestExecutionListener.class,
		DirtiesContextTestExecutionListener.class,
		TransactionalTestExecutionListener.class })
public class PersonServiceTest {

	private final Logger logger = Logger.getLogger(PersonServiceTest.class);
	
	@Autowired
	private PersonService personService;

	// @Test
	public void testSavePerson() {
		// save
		Person person = new Person();
		person.setName("穆六");
		personService.savePerson(person);
	}

	// @Test
	public void testTestEm() {
		Person person = new Person();
		person.setId(9);
		person.setName("穆5");
		Person personParam = personService.testEm(person);
		System.out.println("------------------------");
		System.out.println(personParam.getName());
	}

	@Test
	public void testTestJunit() {
		System.out.println("------------------------");
		logger.info("mark1");
		logger.debug("debug mark2");
		Person person = new Person();
		person.setName("穆19六");
		personService.savePerson(person);
	}

	// @Test
	public void testSelectPersonJPQL() {

	}

	// @Test
	public void testSelectPersonWithPage() {

	}

}
