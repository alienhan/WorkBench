/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com
 * 创建时间：2015-9-5 下午9:41:12 
 * 版本号：v1.0 
 * 本类主要用途描述： 
 * 
-------------------------------------------------------------------------*/
package com.jh.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * ajax
 * 
 * @ClassName: PersonController
 * @Description: TODO
 * @author jh
 * @date 2015-9-5 下午9:52:10
 */

@Controller
@RequestMapping("/ajax")
public class AjaxController {
	@RequestMapping("/ajaxlogin")
	public String ajaxLogin() {
		return "ajax/ajax_request";
	}

	/**
	 * 接受ajax传参
	 * 
	 * 当前台ajax data的格式出现问题得时候， 就会传参不到后台
	 * 
	 * Spring JSON request getting 406 (not Acceptable)
	 * 		引用spring-3.1.1.jar
	 * 
	 * 		your request accept header is application/json 
	 * 		and your controller is not able to return that. 
	 * 		This happens when the correct HTTPMessageConverter 
	 * 		can not be found to satisfy the @ResponseBody 
	 * 		annotated return value. HTTPMessageConverter 
	 * 		are automatically registered when you use the 
	 * 		<mvc:annotation-driven>, 
	 * 		given certain 3-d party libraries in the classpath.
	 * 
	 * @Title: ajaxPerson
	 * @Author: jianghan
	 * @return
	 */
	@ResponseBody 
	@RequestMapping(value = "/ajaxrequest",method=RequestMethod.POST)
	public Map<String, Object> ajaxRequest(HttpServletRequest request,
			HttpServletResponse response, String name){
		
		//ajax 获取前台传值
		System.out.println(request.getParameter("name"));
		System.out.println(name);
		
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("msg", "成功");
		map.put("success","true");
		
		System.out.println(map.get("msg"));
		return map;
	}
}
