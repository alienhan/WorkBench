package dao;

import org.junit.Test;

import beans.MyUser;

public class UserDaoTest2 {
	private UserDao userDao = new UserDao();
	
	
	/**
	 * 
	 * java.lang.NullPointerException
	 * 
	 */
	@Test
	public void testGetUser2() {
		//fail("Not yet implemented");
		MyUser user = new MyUser();
		user.setUserid(1);
		//user.setUsername("jianghan2");
		//user.setUserage("13");
		userDao.getUser2(user);
	}

}
