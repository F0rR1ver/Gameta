package com.bean;

import java.io.Serializable;
import java.util.*;

public class Liuyan implements Serializable {
	private Integer id;
	private Integer mid;
	private Integer xwid;
	private String content;
	private String savetime;
	
	
	private Member member;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public Integer getXwid() {
		return xwid;
	}
	public void setXwid(Integer xwid) {
		this.xwid = xwid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSavetime() {
		return savetime;
	}
	public void setSavetime(String savetime) {
		this.savetime = savetime;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}

	
	
	
	
	
	
}
