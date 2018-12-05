package com.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.SupplierDao;
import com.backend.model.Supplier;


@Controller
public class SupplierController {

	@Autowired
	SupplierDao supplierDao;
	
	
	@RequestMapping(value="addSupplier",method=RequestMethod.GET)
	public ModelAndView getSupplierForm()
	{
		ModelAndView mv=new ModelAndView("SupplierForm");
		Supplier s=new Supplier();
		mv.addObject("supObj",s);
		return mv;
	}
	
	@RequestMapping(value="addSupplierProcess",method=RequestMethod.POST)
  public ModelAndView addSupplierProcess(@ModelAttribute("supObj")Supplier obj1)
  {
	  
	  ModelAndView mv=new ModelAndView("ViewSuppliers");
	  if(obj1.getSupplierId()==0)
	  {
		  mv.addObject("msgs","Supplier Added Successfully");
		  supplierDao.add(obj1);
	  }
	  else
	  {
		  mv.addObject("msgs","Supplier Updated Successfully");
		  supplierDao.update(obj1);
	  }
	  List<Supplier> supplierList= supplierDao.listSuppliers();
	  mv.addObject("suppliers",supplierList);
	  return mv;
  }
	
	@RequestMapping(value="viewAllSuppliers",method=RequestMethod.GET)
  public ModelAndView getAllSuppliers()
  {
	List<Supplier>supplierList=supplierDao.listSuppliers();
	ModelAndView mv=new ModelAndView("ViewSuppliers");
	mv.addObject("suppliers",supplierList);
	return mv;
	
  }
	
	@RequestMapping(value="deleteSupplier/{sId}")
   public ModelAndView deleteSupplier(@PathVariable("sId")int supplierId)
	{
	   Supplier supplier= supplierDao.getSupplierById(supplierId);
	    supplierDao.delete(supplier);
	   
	   List<Supplier> supplierList= supplierDao.listSuppliers();
	   ModelAndView mv=new ModelAndView("ViewSuppliers");
	   mv.addObject("suppliers",supplierList);
	   mv.addObject("msgs","Supplier Deleted");
	   return mv;
		
	}
	
	@RequestMapping(value="editSupplier/{sId}")
	public ModelAndView updateSupplier(@PathVariable("sId")int supplierId)
	{
		Supplier supplier=supplierDao.getSupplierById(supplierId);
		ModelAndView mv=new ModelAndView("SupplierForm");
		mv.addObject("supObj",supplier);
		mv.addObject("operations","Update");
		return mv;
	}
}
