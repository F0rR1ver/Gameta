package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import org.apache.poi.hssf.record.formula.MemErrPtg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.regexp.internal.recompile;
import com.util.Info;
import com.util.MD5;


import com.bean.Liuyan;
import com.bean.Member;
import com.dao.MemberDAO;

import java.util.*;

@Controller
public class MemberController{
	@Resource
	MemberDAO memberDAO;
	@Resource
	Saveobject saveobject;
	
	
	//用户列表
	@RequestMapping("admin/memberlist")
	public String listAll(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map){
		String key = request.getParameter("key");
		map.put("key", key);
		PageHelper.startPage(pageNum, 10);
		List<Member> list = memberDAO.selectAll(map);	
		PageInfo<Member> pageInfo = new PageInfo<Member>(list);
		request.setAttribute("key", key);
		request.setAttribute("pageInfo", pageInfo);
		return "admin/memberlist";
	}
	
	//用户信息删除
	@RequestMapping("admin/memberDel")
	public String del(int id,RedirectAttributes redirectAttributes){
		memberDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc", "操作成功");
		return "redirect:memberlist.do";
	}
	
	//前台登录
	@RequestMapping("Login")
	public String qtLogin(Member member,String upass,HttpServletRequest request) {
		
		   upass = MD5.getDigest(upass);
			member.setUpass(upass);
		    List<Member> list = memberDAO.selectOne(member);
		    if(list.size()==0){
		    	request.setAttribute("suc", "用户名或密码错误");
		    	return "login";
		    }else{
		    	request.getSession().setAttribute("sessionmember",list.get(0));
		    	return "redirect:index.do";
		    }

	}
	
	
	//退出登录
	@RequestMapping("memebrtuichu")
	public String adminExit(HttpServletRequest request) {
		request.getSession().removeAttribute("sessionmember");
		return "redirect:index.do";
	}
	
	//查找个人信息
	@RequestMapping("memberinfoEditshow")
	public String show(HttpServletRequest request,String msg){
		//String msg = request.getParameter("msg");
		Member member = (Member)request.getSession().getAttribute("sessionmember");
		Member mmm = memberDAO.findById(member.getId());
		request.setAttribute("member", mmm);
		saveobject.getTypeObject(request);
		if(msg.equals("gr")){
			return "mgrinfo";
		}else {
			return "mupassedit";
		}
		
		
		
	}
	//修改个人信息
	@RequestMapping("mgrinfo")
	public String gredit(Member member,RedirectAttributes redirectAttributes,HttpServletRequest request){
		memberDAO.update(member);
		redirectAttributes.addFlashAttribute("suc", "操作成功");
	
		return "redirect:memberinfoEditshow.do?msg=gr";
	}
	
	//修改密码
	@RequestMapping("upassedit")
	public String updatepwd(int id,String newpassword, HttpServletRequest request,RedirectAttributes redirectAttributes) {
		String oldpassword = MD5.getDigest(request.getParameter("oldpassword")) ;
		Member member = memberDAO.findById(id);
		saveobject.getTypeObject(request);
		if(oldpassword.equals(member.getUpass())){
			memberDAO.updatepwd(id,MD5.getDigest(newpassword));
			redirectAttributes.addFlashAttribute("suc", "操作成功");
		}else{
			redirectAttributes.addFlashAttribute("suc", "原密码错误");
		}
		
		return "redirect:memberinfoEditshow.do?msg=mm";
	}

	
	
	
	//用户注册
	@RequestMapping("register")
	public String reg(Member member,HttpServletRequest request,RedirectAttributes redirectAttributes){
		member.setUpass(MD5.getDigest(member.getUpass()));
		member.setUtype("用户");
		member.setSavetime(Info.getDateStr());
		memberDAO.add(member);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "login";
	}
	
	//检查用户名的唯一性
	@RequestMapping("checkUname")
	public void checkUname(String uname, HttpServletRequest request, HttpServletResponse response){
		try {
			PrintWriter out = response.getWriter();
			List<Member> list = memberDAO.checkUname(uname);
			if(list.size()==0){
				out.print(0);
			}else{
				out.print(1);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	

}
