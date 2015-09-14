/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com
 * 创建时间：2015-8-19 下午10:21:35 
 * 版本号：v1.0 
 * 本类主要用途描述： 测试spring 
 * 
-------------------------------------------------------------------------*/
package com.jh.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * 测试spring 访问路径
 * 
 * 练习RequestMapping的不同参数表示形式
 * 
 * @RequestMapping 参数说明
 *  value
 *		定义处理方法的请求的 URL 地址。
 *	method
 *		定义处理方法的 http method 类型，如 GET、POST 等。
 *	params
 *		定义请求的 URL 中必须包含的参数。
 *	headers
 *		定义请求中 Request Headers 必须包含的参数。
 * 
 * @ClassName: UserController
 * @author jh
 * @date 2015-8-19 下午10:21:41
 * 
 */
@Controller
@RequestMapping("/path")
public class PathController {

	/**
	 * 默认情况下，使用路径
	 * 
	 * return返回的参数可以只是文件的名， 不用使用路径，spring可以自动找到文件的位置
	 * 
	 * @Title: userManager
	 * @Author: jianghan
	 * @return 返回path_response
	 * 
	 */

	@RequestMapping("/pathlogin")
	public String pathLogin() {
		return "path/path_request";
	}

	/**
	 * value 定义url的访问路径
	 * 
	 * @Title: userLogin
	 * @Author: jianghan
	 * @return
	 */
	@RequestMapping(value = "/pathRequestValue")
	public String pathRequestValue() {
		return "path/path_response";
	}
	
	/** 
	 *传REST格式的参数
	 *
	 *重定向 返回路径 redirect
	 *通过redirect 将参数返回到controller的方法中
	 *
	 * @Title: pathREST 
	 * @Author: jianghan
	 * @return
	 *    
	 */
	@RequestMapping(value="/pathrest/{pathId}/{pathName}")  
	public String pathRest(@PathVariable String pathId,@PathVariable String pathName){  
	  //也可以用 @PathVariable("pathId")来绑定参数
	  System.out.println("Find pathId with ID: " + pathId);  
	  System.out.println("Find pathName with NAME: " + pathName);  
	  return "redirect:/path/pathRequestValue";  
	  
	}  
	
	/** 
	 *当RequestMapping的value值等于jsp文件路径名时
	 *（上级文件夹名与controller的值相同）
	 *自动返回到相同名字的jsp文件
	 *
	 *因此文件路径中的文件夹名与controller文件名相互影响
	 *
	 * @Title: pathSame 
	 * @Author: jianghan
	 *    
	 */
	@RequestMapping("path_response")
	public void pathSame(){
		
	}
	
	
	
	
	
}
