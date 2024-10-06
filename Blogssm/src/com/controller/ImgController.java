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

import com.bean.Img;
import com.dao.ImgDAO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.mysql.jdbc.ResultSet;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.util.Info;

@Controller
public class ImgController{
	@Resource
	ImgDAO imgDAO;
	
	
	//轮播图片列表
	@RequestMapping("admin/imglist")
	public String listAll(@RequestParam(defaultValue = "1",value = "pageNum") Integer pageNum,HttpServletRequest request,HashMap map){
		String key = request.getParameter("key");
		map.put("key", key);
		PageHelper.startPage(pageNum, 10);
		List<Img> list = imgDAO.selectAll(map);	
		PageInfo<Img> pageInfo = new PageInfo<Img>(list);
		request.setAttribute("key", key);
		request.setAttribute("pageInfo", pageInfo);
		return "admin/imglist";
	}
	
	//信息新增
	@RequestMapping("admin/imgAdd")
	public String add(Img img,RedirectAttributes redirectAttributes,HttpServletRequest request,HashMap map){
			imgDAO.add(img);
			redirectAttributes.addFlashAttribute("suc","操作成功");
			return "redirect:imglist.do";
	}
	
	//删除
	@RequestMapping("admin/imgDel")
	public String del(int id,RedirectAttributes redirectAttributes){
		imgDAO.delete(id);
		redirectAttributes.addFlashAttribute("suc","操作成功");
		return "redirect:imglist.do";
	}	
	
	
	
	
	

}
