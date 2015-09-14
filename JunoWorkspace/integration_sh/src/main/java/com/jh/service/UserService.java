/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com 
 * 创建时间：2015-9-13 下午12:49:37 
 * 版本号：v1.0 
 * 本类主要用途描述： 
 * 
-------------------------------------------------------------------------*/
package com.jh.service;

import com.jh.beans.MyUser;
import com.jh.dao.UserDao;

public class UserService {

	private UserDao userDao = new UserDao();

	public MyUser getUser(int userId) {
		MyUser myUser = new MyUser();
		myUser.setUserid(userId);
		myUser = userDao.getUser(myUser);
		System.out.println("myuser:" + myUser.getUsername());
		return myUser;
	}
}
