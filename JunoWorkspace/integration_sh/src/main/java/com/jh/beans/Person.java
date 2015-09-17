package com.jh.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/** 
 * 标注通常用于软件框架为用户定义的类和方法提供引用外部资源的情形，
 * 如XML配置文件、事务环境等。以下是一个标注过的EJB 3.0的类：
 * 
 * 代码中标注不执行任何特定行为，而是为在运行时，
 * EJB容器获得足够的信息，生成对象到关系数据库的映射。
 *
 * @ClassName: Person 
 * @author jh 
 * @date 2015-9-16 下午4:27:00 
 *  
 */
@Entity
@Table(name="person")
public class Person implements Serializable { 
    private static final long serialVersionUID = 1L; 
	private int id;
	private String name;
	
	@Id @GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(length=12)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}

