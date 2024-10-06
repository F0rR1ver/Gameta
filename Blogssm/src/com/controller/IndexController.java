package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

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


import com.bean.Img;
import com.bean.Liuyan;
import com.bean.Member;
import com.bean.Type;
import com.bean.Wenzhang;
import com.dao.ImgDAO;
import com.dao.LiuyanDAO;
import com.dao.MemberDAO;
import com.dao.TypeDAO;
import com.dao.WenzhangDAO;

import java.util.*;

@Controller
public class IndexController{
	@Resource
	ImgDAO imgDAO;
	@Resource
	WenzhangDAO wenzhangDAO;
	@Resource
	Saveobject saveobject;
	@Resource
	TypeDAO typeDAO;
	@Resource
	LiuyanDAO liuyanDAO;
	@Resource
	MemberDAO memberDAO;
	
	//首页显示
	@RequestMapping("index")
	public String index(HttpServletRequest request){
		HashMap map = new HashMap();
		List<Img> imglist = imgDAO.selectAll(map);
		map.put("shstatus", "通过");
		List<Wenzhang> wenzhanglist = wenzhangDAO.selectAll(map);
		for (Wenzhang wenzhang : wenzhanglist) {
			Type type = typeDAO.findByid(wenzhang.getTypeid());
			wenzhang.setType(type);
		}
		request.setAttribute("imglist", imglist);
		request.setAttribute("wenzhanglist", wenzhanglist);
		saveobject.getTypeObject(request);
		return "index";
	}
	
	//文章信息查看
	@RequestMapping("wenzhangcx.do")
	public String wenzhangcx(int id,HttpServletRequest request){
		HashMap map = new HashMap();
		Wenzhang wenzhang = wenzhangDAO.findById(id);
		map.put("xwid", wenzhang.getId());
		List<Liuyan> lylist = liuyanDAO.selectAll(map);
		for(Liuyan liuyan:lylist){
			Member member = memberDAO.findById(liuyan.getMid());
			liuyan.setMember(member);
		}
		request.setAttribute("lylist", lylist);
		request.setAttribute("wenzhang", wenzhang);
		saveobject.getTypeObject(request);
		return "wenzhangcx";
	}
	

}
