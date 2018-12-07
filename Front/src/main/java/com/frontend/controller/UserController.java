package com.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.UserDao;
import com.backend.model.User;




@Controller
public class UserController {

	
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value="/signUpForm",method=RequestMethod.GET)
	public ModelAndView getSignUpForm(){
		
		ModelAndView mv=new ModelAndView("SignUpForm");
		User u=new User();
		mv.addObject("rObj",u);
		
	   return mv;
}
	
	
	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("rObj")User object)
	{
		ModelAndView mv=new ModelAndView("Msg");
		userDao.registerUser(object);
		return mv;
		
	}
	
	@RequestMapping(value="/loginForm",method=RequestMethod.GET)
	public ModelAndView getLoginForm(){
		
		ModelAndView mv=new ModelAndView("Login");
		User u=new User();
		mv.addObject("loginObj",u);
		 return mv;
	}
	
	
}
