/*------------------------------------------------------------------------- 
 * 版权所有：
 * 作者：姜晗
 * 联系方式：tonghuajianghan@gmail.com 
 * 创建时间：2015-9-16 下午11:10:05 
 * 版本号：v1.0 
 * 本类主要用途描述： 
 * 
-------------------------------------------------------------------------*/
package com.jh.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jh.beans.Person;
import com.jh.service.PersonService;
import com.jh.util.Condition;
import com.jh.util.Page;

@Controller
public class PersonController {
	
	private final Logger logger = Logger.getLogger(PersonController.class);
	
	@Autowired
	PersonService personService;

	@RequestMapping("person/person_request")
	public void person_request() {

	}
	
	@RequestMapping("person/person_response")
	public Model person_response(Model model){
		return model;
	}
	
	/** 
	 * 当将person的值传给后台的时候，
	 * 虽然没有显示用model写入person
	 * 但是person的状态已经在request上了
	 * 因此当返回页面用el表达式获取person的属性时，依旧有值
	 *
	 * @Title: save_person 
	 * @Author: jianghan
	 * @param person
	 * @param model
	 * @return
	 *    
	 */
	@RequestMapping("person/save_person")
	public String save_person(Person person,Model model){
		personService.savePerson(person);
		return "person/person_response";
	}
	
	@RequestMapping("person/testEm")
	public String testEm(Person person,Model model){
		Person personParam = personService.testEm(person);
		model.addAttribute("person", personParam);
		return "person/person_response";
	}
	
	@RequestMapping("person/select_person_JPQL")
	public String selectPersonJPQL(Model model){
		List<Person> listPerson = personService.selectPersonJPQL();
		model.addAttribute("listPerson",listPerson);
		return "person/person_response";
	}
	
	/** 
	 * page
	 *
	 * @Title: page 
	 * @Author: jianghan
	 * @return
	 *    
	 */
	@RequestMapping("person/page")
	public String page(Page page, Model model){
		
		Condition<Person> condition = new Condition<Person>();
		condition.setPage(page);
		Condition<Person> conditionParam = personService.selectPersonWithPage(condition);
		System.out.println("PageNo: " + conditionParam.getPage().getPageNo());
		model.addAttribute("conditionParam", conditionParam);
		return "person/person_page";
	}
	
	@RequestMapping("person/testLog")
	public String testLog(Model model){
		logger.info("-------------------------------page");
		return "person/person_response";
	}
	
	@RequestMapping("person/testTiles")
	public String testTiles(){
		return "person/testTiles";
	}
	
}












