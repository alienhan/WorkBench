package com.jh.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 参数 前后台，相互传递参数
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
	 * 前台向后台传参
	 * 
	 * 前台通过name属性绑定参数传递给后台
	 * 
	 * 通过request获取前台的传的参数
	 * 
	 * 测试限制提交的方式（使用post限制） HTTP Status 405 - Request method 'GET' not supported
	 * 
	 * @Title: userParam
	 * @Author: jianghan
	 * @return
	 */
	@RequestMapping(value = "/paramrequest", method = RequestMethod.POST)
	public String paramRequest(String paramId, String paramClass,
			String paramName, HttpServletRequest request) {
		System.out.println("request" + request.getParameter("paramName"));
		System.out.println("paramId" + paramId);
		System.out.println("paramClass" + paramClass);
		return "param/param_response";
	}

	/**
	 * RequestParam 提取和解析请求参数
	 * 
	 * 可以通过required=false或者true来要求@RequestParam配置的前端参数是否一定要传
	 * 
	 * @RequestParam(value="setupForm", required=true)
	 * 
	 *  error
	 *  如果用@RequestMapping注解的参数是int基本类型，但是required=false，
     *  这时如果不传参数值会报错，因为不传值，会赋值为null给int，这个不可以
	 *                                  
	 *  solution 使用Integer代替int
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

	/** 
	 * Model 返回参数
	 * 
	 * Model 是一个接口， 其实现类为ExtendedModelMap，继承了ModelMap类。
	 *
	 * @Title: paramResponse 
	 * @Author: jianghan
	 * @param model
	 * @return
	 *    
	 */
	@RequestMapping("/paramresponse")
	public String paramResponse(Model model) {
		model.addAttribute("userId", 1);
		
		return "param/param_response";
	}
	
	//@RequestMapping("/param_response")
	public Model param_response(Model model){
		//Modle 是一个接口
		//Model model = null;  model不能自己定义？
		Map<String, Object> map  = new HashMap<String, Object>();
		map.put("userId", 34);
		map.put("userName", "姜晗");
		model.addAllAttributes(map);
		return model;
	}
	
	
	/** 
	 * 返回空值
	 *
	 * @Title: param_response_void 
	 * @Author: jianghan
	 * @param model
	 *    
	 */
	//@RequestMapping("/param_response")
	public void param_response_void(Model model){
		model.addAttribute("jh","jhjh");
	}
	
	/** 
	 * 返回List
	 * 前台不知道怎样接受
	 *
	 * @Title: param_response_list 
	 * @Author: jianghan
	 * @param model
	 * @return
	 *    
	 */
	//@RequestMapping("/param_response")
	public List<String> param_response_list(Model model){
		List<String> list = new ArrayList<String>();
		list.add(0, "www");
		list.add(1,"我的");
		return list;
		
	}
	
	/** 
	 *ModelMap
	 *
	 *ModelMap对象主要用于传递控制方法处理数据到结果页面，
	 *也就是说我们把结果页面上需要的数据放到ModelMap对象中即可，
	 *他的作用类似于request对象的setAttribute方法的作用，
	 *用来在一个请求过程中传递处理的数据。
	 *
	 * @Title: param_response_ModelMap 
	 * @Author: jianghan
	 *    
	 */
	//@RequestMapping("/param_response")
	public void param_response_ModelMap(ModelMap model){
		model.addAttribute("userName", "张三");
	}
	
	/** 
	 * ModelAndView
	 * 
	 * 作用一 设置转向地址
	 * 作用二 用于传递控制方法处理结果数据到结果页面
	 *
	 * @Title: param_response_ModelAndView 
	 * @Author: jianghan
	 * @return
	 *    
	 */
	@RequestMapping("/param_response")
	public ModelAndView param_response_ModelAndView(){
		//路径要写绝对路径
		ModelAndView view = new ModelAndView("param/model_and_view_response");
		view.addObject("userName", "赵武");
		return view;
	}
	
}
