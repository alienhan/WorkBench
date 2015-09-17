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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jh.beans.Person;
import com.jh.service.PersonService;

@Controller
public class PersonController {
	
	@Autowired
	PersonService personService;

	@RequestMapping("person/person_request")
	public void person_request() {

	}
	
	@RequestMapping("person/person_response")
	public Model person_response(Model model){
		return model;
	}
	
	@RequestMapping("person/save_person")
	public String save_person(Person person,Model model){
		personService.savePerson(person);
		return "person/person_response";
	}
}
