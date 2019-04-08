package com.frontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.UserDao;
import com.backend.model.User;
import com.backend.validators.MyPasswordValidators;




@Controller
public class UserController {

	
	@Autowired
	UserDao userDao;
	
	@Autowired
	MyPasswordValidators myPasswordValidators;
	
	@RequestMapping(value="/signUpForm",method=RequestMethod.GET)
	public ModelAndView getSignUpForm(){
		
		ModelAndView mv=new ModelAndView("SignUpForm");
		User u=new User();
		mv.addObject("rObj",u);
		
	   return mv;
}
	
	
	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute("rObj")User object, BindingResult result)
	{
		myPasswordValidators.validate(object, result);
			
		if(result.hasErrors()){		
		ModelAndView mv=new ModelAndView("SignUpForm");
		return mv;
		}
		object.setEnabled(true);
		object.setRole("USER");
		userDao.registerUser(object);
		
		ModelAndView mv=new ModelAndView("Msg");
		return mv;
						
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView getLoginForm(@RequestParam(name="error",required=false)String error,@RequestParam(name="logout",required=false)String logout){
		
		ModelAndView mv=new ModelAndView("Login");
		if(error!=null){
			//when error will come
			mv.addObject("message","Email or password is incorrect");
		}
		
		if(logout!=null)
		{
			mv.addObject("message2","User has been logged successfully");
		}
		
		 return mv;
	}
	
	@RequestMapping(value="/access-denied",method=RequestMethod.GET)
	public String getAccessDenied()
	{
		return "ErrorPage";
		
	}

	
	@RequestMapping(value="/perform-logout")
	public String logout(HttpServletRequest request, HttpServletResponse response)
	
	{
		Authentication auth= SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null)
		{
			new SecurityContextLogoutHandler().logout(request,response,auth); 
		}
		return "redirect:/login?logout";
	}

	
}
