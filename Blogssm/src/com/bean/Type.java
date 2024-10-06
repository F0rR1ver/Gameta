package com.bean;

import java.io.Serializable;
import java.util.*;

public class Type implements Serializable {
	private Integer id;
	private String name;
	private String delstatus;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDelstatus() {
		return delstatus;
	}
	public void setDelstatus(String delstatus) {
		this.delstatus = delstatus;
	}
	
	
	
	
	
}
