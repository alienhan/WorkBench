package dao;

import junit.framework.TestCase;

import org.junit.Test;

import beans.MyUser;

public class UserDaoTest {

	/**
	 * 不new报错 java.lang.NullPointerException
	 */
	private UserDao userDao = new UserDao();

	/**
	 * 
	 * 检查主键是否是自动生成的，若是自动生成的，但是你又在程序中制定了该字段的值，也会出现这种错误
	 * org.hibernate.PersistentObjectException: detached entity passed to
	 * persist:
	 * 
	 * java.lang.NullPointerException
	 * 
	 */
	//@Test
	public void testSaveUser() {
		// fail("Not yet implemented");
		MyUser user = new MyUser();
		// user.setUserid(13);
		user.setUsername("jianghan2");
		user.setUserage("13144");
		userDao.saveUser(user);
	}

	@Test
	public void testGetUser() {
		System.out.println("marktestGetUser");
		MyUser user = new MyUser();
		user.setUserid(1);
		userDao.getUser(user);
	}

}
