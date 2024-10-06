package com.controller;
import org.springframework.stereotype.Component;

import com.bean.Member;
import com.bean.Type;
import com.dao.MemberDAO;
import com.dao.TypeDAO;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.HashMap;
import java.util.List;

@Component
public class Saveobject {
	@Resource
	TypeDAO typeDAO;
	@Resource
	MemberDAO memberDAO;
	
	
	public void getTypeObject(HttpServletRequest request) {
		HashMap map = new HashMap();
		List<Type> typelist = typeDAO.selectAll(map);// 一级分类
		request.setAttribute("typelist", typelist);
	}
	
}
