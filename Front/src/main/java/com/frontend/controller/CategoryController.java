package com.frontend.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.*;
import com.backend.model.Category;


@Controller
public class CategoryController {

@Autowired
CategoryDao categoryDao;

@Autowired
HttpSession session;

 @RequestMapping(value="addCategory",method=RequestMethod.GET)
 public ModelAndView getCategoryForm()
{
    
	ModelAndView mv=new ModelAndView("CategoryForm");
	Category cat=new Category();
	mv.addObject("catObj", cat);
	mv.addObject("formLabel","Add Category Form");
	mv.addObject("btnLabel","Add Category");
	return mv;
	
}

 @RequestMapping(value="addCategoryProcess",method=RequestMethod.POST)
 public ModelAndView addCategoryProcess(@Valid @ModelAttribute("catObj")Category obj,BindingResult result)
 {

		if(result.hasErrors()){
			
			 ModelAndView mv=new ModelAndView("CategoryForm");
				mv.addObject("formLabel","Add Category Form");
				mv.addObject("btnLabel","Add Category");
				
				return mv;
		}
	 
	
	ModelAndView mv=new ModelAndView("ViewCategories");
	if(obj.getCategoryId()==0)
	{
		mv.addObject("msg","Category Added Successfully");
		categoryDao.add(obj);
	}
	else
	{
		mv.addObject("msg","Category Updated Successfully");
		categoryDao.update(obj);
	}
	 List<Category> catList=categoryDao.listCategories();
	 mv.addObject("categories",catList);
	 session.setAttribute("categories",catList);
	return mv;
	
}
 
 @RequestMapping(value="viewAllCategories",method=RequestMethod.GET)
 public ModelAndView getAllCategories()
 {
	 List<Category> catList=categoryDao.listCategories();
	 ModelAndView mv=new ModelAndView("ViewCategories");
	 mv.addObject("categories",catList);
	 return mv;
	 
 }

 @RequestMapping(value="delete/{catId}")
 public ModelAndView deleteCategory(@PathVariable("catId")int categoryId)
 {
	 Category cat=categoryDao.getCategory(categoryId);
	 categoryDao.delete(cat);
	 
	 List<Category> catList=categoryDao.listCategories();
	 ModelAndView mv=new ModelAndView("ViewCategories");
	 mv.addObject("categories",catList);
	 mv.addObject("msg","Category Deleted Successfully");
	 session.setAttribute("categories",catList);
	 return mv;
 }
 
 @RequestMapping(value="edit/{catId}")
 public ModelAndView editCategory(@PathVariable("catId")int categoryId)
 {
	 Category category=categoryDao.getCategory(categoryId);
	 ModelAndView mv=new ModelAndView("CategoryForm");
	 mv.addObject("catObj",category);
	 mv.addObject("operation","Update");
	 mv.addObject("formLabel","Update Category Form");
	 mv.addObject("btnLabel","Update Category");


	 return mv;
 }
 
 
}
