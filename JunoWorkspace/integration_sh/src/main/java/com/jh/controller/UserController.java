/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com 
 * 创建时间：2015-9-13 下午12:57:27 
 * 版本号：v1.0 
 * 本类主要用途描述： 
 * 
-------------------------------------------------------------------------*/
package com.jh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jh.beans.MyUser;
import com.jh.service.UserService;

@Controller
public class UserController {
	private UserService userService = new UserService();
	
	@RequestMapping("user/user_request")
	private void user_request(){
		
	}
	
	@RequestMapping("user/user_response")
	private Model getUser(Model model,Integer userId){
		MyUser myUser = userService.getUser(userId);
		model.addAttribute("user", myUser);
		
		return model;
	}
}
