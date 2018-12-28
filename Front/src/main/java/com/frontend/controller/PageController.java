
package com.frontend.controller;

import java.security.Principal;
import java.util.List;







import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.backend.dao.CategoryDao;
import com.backend.dao.UserDao;
import com.backend.model.Category;
import com.backend.model.User;


@Controller
public class PageController {
	
	
    @Autowired
    UserDao userDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping(value={"/","/home"},method=RequestMethod.GET)
    public String getHomePage()
	{
		
	
		List<Category> catList=categoryDao.listCategories();
		
		session.setAttribute("categories",catList);

		Principal p=request.getUserPrincipal();
		if(p!=null){
		System.out.println("Principal is not null");
		String email=p.getName();
		User userObj=userDao.getUser(email);
		
		session.setAttribute("userEmail", email);
		session.setAttribute("userObject",userObj);
		}
		else {
			System.out.println("Principal is  null");
		}
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
