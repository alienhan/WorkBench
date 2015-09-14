package com.jh.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/** 
 * 参数
 * 前后台，相互传递参数	
 *
 * @ClassName: ParamController 
 * @author jh 
 * @date 2015-9-11 下午1:46:47 
 *  
 */
@Controller
@RequestMapping("/param")
public class ParamController {
	
	@RequestMapping("/paramlogin")
	public String paramLogin() {
		return "param/param_request";
	}
	
	/** 
	 *前台向后台传参
	 *
	 *前台通过name属性绑定参数传递给后台
	 *
	 *通过request获取前台的传的参数
	 *
	 *测试限制提交的方式（使用post限制）
	 *HTTP Status 405 - Request method 'GET' not supported
	 *
	 * @Title: userParam 
	 * @Author: jianghan 
	 * @return
	 */
	@RequestMapping(value = "/paramrequest" , method = RequestMethod.POST )
	public String paramRequest(String paramId,String paramClass,String paramName,HttpServletRequest request){
		System.out.println("request" + request.getParameter("paramName"));
		System.out.println("paramId" + paramId);
		System.out.println("paramClass" + paramClass);
		return "param/param_response";
	}
	
	/** 
	 *RequestParam
	 *提取和解析请求参数
	 *
	 *可以通过required=false或者true来要求@RequestParam配置的前端参数是否一定要传 
	 *@RequestParam(value="setupForm", required=true)
	 *
	 *error
	 *	如果用@RequestMapping注解的参数是int基本类型，但是required=false，
	 *	这时如果不传参数值会报错，因为不传值，会赋值为null给int，这个不可以 
	 *solution
	 *	使用Integer代替int
	 *
	 * @Title: paramForm 
	 * @Author: jianghan 
	 * @param paramId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/paramform", method = RequestMethod.GET)
    public String paramForm(@RequestParam("paramId") int paramId, ModelMap model) {
        System.out.println("paramId:" + paramId);
        return "param/param_response";
    }
}
