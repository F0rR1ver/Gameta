package com.bean;

import java.io.Serializable;
import java.util.*;

public class Img implements Serializable {
	private Integer id;
	private String filename;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
