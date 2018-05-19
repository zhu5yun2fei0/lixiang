package com.lixiang.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.filters.AddDefaultCharsetFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lixiang.dao.Userdao;
import com.lixiang.model.User;


@Controller
public class Usercontroller {
	@Autowired
	Userdao userdao;
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		User user=userdao.findUserById("1");
		//System.out.println(user);
		ModelAndView mav=new ModelAndView("index");
		mav.addObject(user);
		return mav;
	}
	
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("index");
		List<User> list=userdao.finAll();
		//request.getSession().setAttribute("users", list);
		//System.out.println(list);
		mav.addObject("users",list);
		return mav;
	}
	@RequestMapping("/tomodify")
	public ModelAndView tomodify(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("modify");
		String id=request.getParameter("id");
		User user=userdao.findUserById(id);
		//System.out.println(user);
		mav.addObject("user",user);
		return mav;
	}
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		System.out.println(name);
		String age=request.getParameter("age");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String menu=request.getParameter("menu");
		String password=request.getParameter("password");
		String openernum=request.getParameter("openernum");
		String note=request.getParameter("note");
		User user=new User();
		user.setId(id);
		user.setName(name);
		user.setAge(age);
		user.setPhone(phone);
		user.setAddress(address);
		user.setMenu(menu);
		user.setPassword(password);
		user.setOpenernum(openernum);
		user.setNote(note);
		//System.out.println(user);
		userdao.updateUser(user);
		return "redirect:/index";
	}
	@RequestMapping("/toadd")
	public String toadd() {
		return "add";
	}
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request) {
		String id = UUID.randomUUID().toString().replaceAll("-", "");
		String to=request.getParameter("to");
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String menu=request.getParameter("menu");
		String password=request.getParameter("password");
		String openernum=request.getParameter("openernum");
		String note=request.getParameter("note");
		User user=new User();
		user.setId(id);
		user.setName(name);
		user.setAge(age);
		user.setPhone(phone);
		user.setAddress(address);
		user.setMenu(menu);
		user.setPassword(password);
		user.setOpenernum(openernum);
		user.setNote(note);
		//System.out.println(user);
		userdao.saveUser(user);
		if("1".equals(to)) {
			return "redirect:/index";
		}else {
			return "redirect:/toadd";
		}
		
	}
	@RequestMapping("/error")
	public String xtoadd() {
		return "error";
	}
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request) {
		String id=request.getParameter("id");
		userdao.deleteUserById(id);
		return "redirect:/index";
	}
	@RequestMapping("/findbyname")
	public ModelAndView findname(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("index");
		String name=request.getParameter("name");
		List<User> list=userdao.findByUsername(name);
		mav.addObject("users",list);
		return mav;
	}
	@RequestMapping("/findbymenu")
	public ModelAndView findbymenu(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("index");
		String menu=request.getParameter("menu");
		List<User> list=userdao.findmenu(menu);
		mav.addObject("users",list);
		return mav;
	}
	@RequestMapping("/findbyphone")
	public ModelAndView findbyphone(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("index");
		String phone=request.getParameter("phone");
		//System.out.println(phone);
		List<User> list=userdao.findByphone(phone);
		mav.addObject("users",list);
		return mav;
	}
	@RequestMapping("/findbyopenernum")
	public ModelAndView findbyopenernum(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("index");
		String openernum=request.getParameter("openernum");
		List<User> list=userdao.findopenernum(openernum);
		mav.addObject("users",list);
		return mav;
	}
}
