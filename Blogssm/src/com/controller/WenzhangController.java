package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javafx.scene.control.Cell;

import javax.annotation.Resource;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bean.Member;
import com.bean.Type;
import com.bean.Wenzhang;
import com.dao.MemberDAO;
import com.dao.TypeDAO;
import com.dao.WenzhangDAO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.mysql.jdbc.ResultSet;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.util.Info;

@Controller
public class WenzhangController{
	@Resource
	WenzhangDAO wenzhangDAO;
	@Resource
	Saveobject saveobject;
	@Resource
	TypeDAO typeDAO;
	@Resource
	MemberDAO memberDAO;
	
	
	//文章列表
	@RequestMapping("admin/wenzhanglist")
	public String listAll(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map){
		String key = request.getParameter("key");
		String key1 = request.getParameter("key1");
		map.put("key", key);
		map.put("key1", key1);
		PageHelper.startPage(pageNum, 10);
		List<Wenzhang> list = wenzhangDAO.selectAll(map);	
		for (Wenzhang wenzhang : list) {
			Type type = typeDAO.findByid(wenzhang.getTypeid());
			wenzhang.setType(type);
			Member member = memberDAO.findById(wenzhang.getMid());
			wenzhang.setMember(member);
		}
		PageInfo<Wenzhang> pageInfo = new PageInfo<Wenzhang>(list);
		request.setAttribute("key", key);
		request.setAttribute("key1", key1);
		request.setAttribute("pageInfo", pageInfo);
		saveobject.getTypeObject(request);
		return "admin/wenzhanglist";
	}
	
	//文章审核通过
	@RequestMapping("admin/wenzhangshTG")
	public String wenzhangshTG(Wenzhang wenzhang,RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		wenzhang.setShstatus("通过");
		wenzhangDAO.update(wenzhang);
		return "redirect:wenzhanglist.do";
	}
	//文章审核未通过
	@RequestMapping("admin/wenzhangshJJ")
	public String wenzhangshJJ(Wenzhang wenzhang,RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		wenzhang.setShstatus("未通过");
		wenzhangDAO.update(wenzhang);
		return "redirect:wenzhanglist.do";
	}
	
	
	//个人文章列表
	@RequestMapping("wenzhanglistqt")
	public String wenzhanglb(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map){
		Member mmm = (Member)request.getSession().getAttribute("sessionmember");
		String key = request.getParameter("key");
		String key1 = request.getParameter("key1");
		map.put("key", key);
		map.put("key1", key1);
		map.put("mid", mmm.getId());
		PageHelper.startPage(pageNum, 10);
		List<Wenzhang> list = wenzhangDAO.selectAll(map);	
		for (Wenzhang wenzhang : list) {
			Type type = typeDAO.findByid(wenzhang.getTypeid());
			wenzhang.setType(type);
			Member member = memberDAO.findById(wenzhang.getMid());
			wenzhang.setMember(member);
		}
		PageInfo<Wenzhang> pageInfo = new PageInfo<Wenzhang>(list);
		request.setAttribute("key", key);
		request.setAttribute("key1", key1);
		request.setAttribute("pageInfo", pageInfo);
		saveobject.getTypeObject(request);
		return "wenzhanglistqt";
	}
	
	//文章前台列表
	@RequestMapping("wenzhanglb")
	public String qtlist(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map){
		String key = request.getParameter("key");
		String key1 = request.getParameter("key1");
		map.put("key", key);
		map.put("key1", key1);
		map.put("shstatus", "通过");
		PageHelper.startPage(pageNum, 12);
		List<Wenzhang> list = wenzhangDAO.selectAll(map);	
		for (Wenzhang wenzhang : list) {
			Type type = typeDAO.findByid(wenzhang.getTypeid());
			wenzhang.setType(type);
		}
		PageInfo<Wenzhang> pageInfo = new PageInfo<Wenzhang>(list);
		request.setAttribute("key", key);
		request.setAttribute("key1", key1);
		request.setAttribute("pageInfo", pageInfo);
		saveobject.getTypeObject(request);
		return "wenzhanglb";
	}
	
	
	
	
	
	//文章类型查询
	@RequestMapping("wenzhangaddshow")
	public String wenzhangaddshow(RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		saveobject.getTypeObject(request);
		return "wenzhangadd";
	}
	//文章新增
	@RequestMapping("wenzhangAdd")
	public String add(Wenzhang wenzhang,RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
		Member mmm = (Member)request.getSession().getAttribute("sessionmember");
		String savetime = Info.getDateStr();
		wenzhang.setSavetime(savetime);
		wenzhang.setMid(mmm.getId());
		wenzhangDAO.add(wenzhang);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:wenzhanglistqt.do";
	}
	
	//跳转至编辑页面
	@RequestMapping("wenzhangshow")
	public String show(int id,HttpServletRequest request){
		Wenzhang wenzhang = wenzhangDAO.findById(id);
		request.setAttribute("wenzhang", wenzhang);
		saveobject.getTypeObject(request);
		return "wenzhangedit";
	}
	
	
	//文章编辑
	@RequestMapping("wenzhangEdit")
	public String edit(Wenzhang wenzhang,RedirectAttributes redirectAttributes){
		wenzhang.setSavetime(Info.getDateStr());
		wenzhangDAO.update(wenzhang);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:wenzhanglistqt.do";
	}
	
	//删除
	@RequestMapping("wenzhangSC")
	public String wenzhangSC(int id,RedirectAttributes redirectAttributes){
		wenzhangDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:wenzhanglistqt.do";
	}	
	
	//删除
	@RequestMapping("admin/wenzhangDel")
	public String del(int id,RedirectAttributes redirectAttributes){
		wenzhangDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:wenzhanglist.do";
	}	
	
	
	
	

}
