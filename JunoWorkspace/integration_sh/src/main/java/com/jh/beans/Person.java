package com.jh.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

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

