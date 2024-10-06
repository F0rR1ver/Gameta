package com.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Type;
import com.dao.TypeDAO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.mysql.jdbc.ResultSet;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.util.Info;

@Controller
public class TypeController{
	@Resource
	TypeDAO typeDAO;
	@Resource
	Saveobject saveobject;
	
	
	//类别列表
	@RequestMapping("admin/typelist")
	public String listAll(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map){
		String key = request.getParameter("key");
		map.put("key", key);
		PageHelper.startPage(pageNum, 10);
		List<Type> list = typeDAO.selectAll(map);	
		PageInfo<Type> pageInfo = new PageInfo<Type>(list);
		request.setAttribute("key", key);
		request.setAttribute("pageInfo", pageInfo);
		return "admin/typelist";
	}
	
	//类别前台列表
	@RequestMapping("typelistqt")
	public String typelistqt(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map){
		String key = request.getParameter("key");
		map.put("key", key);
		PageHelper.startPage(pageNum, 10);
		List<Type> list = typeDAO.selectAll(map);	
		PageInfo<Type> pageInfo = new PageInfo<Type>(list);
		request.setAttribute("key", key);
		request.setAttribute("pageInfo", pageInfo);
		saveobject.getTypeObject(request);
		return "typelistqt";
	}
	
	
	//分类信息查询
	@RequestMapping("typeaddshow")
	public String typeaddshow(RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		saveobject.getTypeObject(request);
		return "typeadd";
	}
	
	
	//类别新增
	@RequestMapping("typeAdd")
	public String yhadd(Type type,RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		typeDAO.add(type);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:typelistqt.do";
	}
	
	//分类信息查询
	@RequestMapping("typeeditshow")
	public String typeeditshow(int id,RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		Type type = typeDAO.findByid(id);
		request.setAttribute("type", type);
		saveobject.getTypeObject(request);
		return "typeedit";
	}
	
	//文章编辑用户
	@RequestMapping("typeEdit")
	public String yhedit(Type type,RedirectAttributes redirectAttributes){
		typeDAO.update(type);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:typelistqt.do";
	}
	
	
	
	
	//类别新增
	@RequestMapping("admin/typeAdd")
	public String add(Type type,RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		typeDAO.add(type);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:typelist.do";
	}
	
	
	//跳转至编辑页面
	@RequestMapping("admin/typeshow")
	public String show(int id,HttpServletRequest request){
		Type type = typeDAO.findByid(id);
		request.setAttribute("type", type);
		return "admin/typeedit";
	}
	
	//文章编辑
	@RequestMapping("admin/typeEdit")
	public String edit(Type type,RedirectAttributes redirectAttributes){
		typeDAO.update(type);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:typelist.do";
	}
	
	
	//删除
	@RequestMapping("admin/typeDel")
	public String del(int id,RedirectAttributes redirectAttributes){
		typeDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:typelist.do";
	}
	
	//删除
	@RequestMapping("typeSC")
	public String typeSC(int id,RedirectAttributes redirectAttributes){
		typeDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:typelistqt.do";
	}
	
	
	
	
	

}
