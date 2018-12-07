package com.frontend.controller;

import java.util.List;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.backend.dao.CategoryDao;
import com.backend.model.Category;


@Controller
public class PageController {
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping(value={"/","/home"},method=RequestMethod.GET)
    public String getHomePage()
	{
		
	
		List<Category> catList=categoryDao.listCategories();
		session.setAttribute("categories",catList);
   
        return "Home";
        
	
	}
	
	@RequestMapping(value="/aboutUs",method=RequestMethod.GET)
   public String getAboutUsPage()
   {
	   return "AboutUs";
   }
	
	@RequestMapping(value="/contactUs",method=RequestMethod.GET)
	public String getContactUsPage(){
		return "ContactUs";
	}
	
	@RequestMapping(value="/Msg",method=RequestMethod.GET)
	public String getMsg(){
		return "Msg";
		
		
	
	
	}	
	
}
