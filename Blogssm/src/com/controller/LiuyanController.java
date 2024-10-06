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

import com.bean.Liuyan;
import com.bean.Member;
import com.bean.Type;
import com.dao.LiuyanDAO;
import com.dao.MemberDAO;
import com.dao.TypeDAO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.mysql.jdbc.ResultSet;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.util.Info;

@Controller
public class LiuyanController{
	@Resource
	Saveobject saveobject;
	@Resource
	TypeDAO typeDAO;
	@Resource
	LiuyanDAO liuyanDAO;
	@Resource
	MemberDAO memberDAO;
	
	//评论后台列表
	@RequestMapping("admin/liuyanlist")
	public String listAll(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map,int xwid){
		String key = request.getParameter("key");
		map.put("key", key);
		map.put("xwid", xwid);
		PageHelper.startPage(pageNum, 10);
		List<Liuyan> list = liuyanDAO.selectAll(map);	
		PageInfo<Liuyan> pageInfo = new PageInfo<Liuyan>(list);
		for(Liuyan liuyan:list){
			Member member = memberDAO.findById(liuyan.getMid());
			liuyan.setMember(member);
		}
		request.setAttribute("key", key);
		request.setAttribute("xwid", xwid);
		request.setAttribute("pageInfo", pageInfo);
		return "admin/liuyanlist";
	}
	//评论列表用户
	@RequestMapping("pinglunlb")
	public String pinglunlb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map,int xwid){
		String key = request.getParameter("key");
		map.put("key", key);
		map.put("xwid", xwid);
		PageHelper.startPage(pageNum, 10);
		List<Liuyan> list = liuyanDAO.selectAll(map);	
		PageInfo<Liuyan> pageInfo = new PageInfo<Liuyan>(list);
		for(Liuyan liuyan:list){
			Member member = memberDAO.findById(liuyan.getMid());
			liuyan.setMember(member);
		}
		request.setAttribute("key", key);
		request.setAttribute("xwid", xwid);
		request.setAttribute("pageInfo", pageInfo);
		return "pinglunlb";
	}
	
	
	
	//评论新增
	@RequestMapping("liuyanAdd")
	public String lyadd(Liuyan liuyan,HttpServletRequest request,RedirectAttributes redirectAttributes,int xwid){
		Member member = (Member)request.getSession().getAttribute("sessionmember");
		liuyan.setMid(member.getId());
		liuyan.setSavetime(Info.getDateStr());
		liuyanDAO.add(liuyan);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:wenzhangcx.do?id="+xwid;
	}
	
	
	//评论删除
	@RequestMapping("admin/liuyanDel")
	public String del(int id,int xwid,HttpServletRequest request,RedirectAttributes redirectAttributes){
		liuyanDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc", "操作成功");
		return "redirect:liuyanlist.do?xwid="+xwid;
	}
	//评论删除用户
	@RequestMapping("pinglunSC")
	public String pinglunSC(int id,int xwid,HttpServletRequest request,RedirectAttributes redirectAttributes){
		liuyanDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc", "操作成功");
		return "redirect:pinglunlb.do?xwid="+xwid;
	}
	
	

}
