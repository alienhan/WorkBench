package dao;

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
	 * javax.persistence.PersistenceException: org.hibernate.exception.GenericJDBCException: 
	 * could not insert: [beans.MyUser]
	 * 
	 * 
	 */
	@Test
	public void testSaveUser() {
		MyUser user = new MyUser();
		//user.setUserid(13);
		user.setUsername("jia");
		user.setUserage("13144");
		userDao.saveUser(user);
	}

	//@Test
	public void testGetUser() {
		System.out.println("mark1");
		System.out.println("marktestGetUser");
		MyUser user = new MyUser();
		user.setUserid(1);
		userDao.getUser(user);
	}

}
