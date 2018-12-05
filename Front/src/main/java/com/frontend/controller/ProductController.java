package com.frontend.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.CategoryDao;
import com.backend.dao.ProductDao;
import com.backend.dao.SupplierDao;
import com.backend.model.Category;
import com.backend.model.Product;
import com.backend.model.Supplier;
import com.backend.daoImpl.ProductDaoImpl;




@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	SupplierDao supplierDao;
    
	@Autowired
	HttpSession session;
	
	
	@RequestMapping(value="addProducts", method=RequestMethod.GET)
	public ModelAndView getProductForm()
	{
		
		 
		ModelAndView mv=new ModelAndView("ProductForm");
		
		
		Product p=new Product();
		mv.addObject("productObj", p );
		
		List<Category> catList=categoryDao.listCategories();
		List<Supplier> sList=supplierDao.listSuppliers();
		
		mv.addObject("categoryList",catList);
		mv.addObject("supplierList",sList);
		mv.addObject("formLabel","Add Product Form");
		mv.addObject("btnLabel","Add Product");
		return mv;
		
	}
	
	@RequestMapping(value="addProductProcess", method=RequestMethod.POST)
	public ModelAndView addProductProcess(@ModelAttribute("productObj")Product productObj)
	{
		System.out.println("Product Obj = "+productObj);
		ModelAndView mv=new ModelAndView("ViewProducts");
		
		if(productObj.getProductId()==null)
		{
			
			String filePathString =session.getServletContext().getRealPath("/");
			System.out.println("filePathString : "+filePathString);
			
			
			System.out.println("pimage : "+productObj.getPimage());
			
			String fileName=productObj.getPimage().getOriginalFilename();
			System.out.println("filname  :"+fileName);
			
			productObj.setImgName(fileName);
			productDao.addProduct(productObj);
			
			try{
				
				byte[] imageBytes=productObj.getPimage().getBytes();
				FileOutputStream fos=new FileOutputStream(filePathString+"/resources/images/"+fileName);
				BufferedOutputStream bos= new BufferedOutputStream(fos);
				bos.write(imageBytes);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			mv.addObject("msg","Product Added Successfully");
		
			
		}
		else
		{
			mv.addObject("msg","Product Updated Successfully");
			productDao.updateProduct(productObj);
		}
		List<Product> pList=productDao.listProducts();
		mv.addObject("products", pList);
		return mv;
		
	}
	
	@RequestMapping(value="viewAllProducts",method=RequestMethod.GET)
	  public ModelAndView getAllProducts()
	{
		List<Product> pList=productDao.listProducts();
		ModelAndView mv = new ModelAndView("ViewProducts");
		mv.addObject("products",pList);
		return mv;
		
	}
	
	@RequestMapping(value="/deleteProduct/{pId}")
	public ModelAndView deleteProduct(@PathVariable("pId")int productId)
	{
		Product p=productDao.getProduct(productId);
		productDao.deleteProduct(p);
		
		List<Product> pList=productDao.listProducts();
		ModelAndView mv=new ModelAndView("ViewProducts");
		mv.addObject("products",pList);
		mv.addObject("msg","Product Deleted Successfully");
		return mv;
	}
	
	
	@RequestMapping(value="editProduct/{pId}")
	 public ModelAndView editProduct(@PathVariable("pId")int productId)
	 {
		
		
		 Product p=productDao.getProduct(productId);
		 ModelAndView mv=new ModelAndView("ProductForm");
		 mv.addObject("productObj",p);
		 mv.addObject("operation","Update");
		 mv.addObject("formLabel","Update Product Form");
		 mv.addObject("btnLabel","Update Product");
		 
		 List<Category> catList=categoryDao.listCategories();
			List<Supplier> sList=supplierDao.listSuppliers();
			
			mv.addObject("categoryList",catList);
			mv.addObject("supplierList",sList);
			
		 return mv;
	 }
	
	@RequestMapping(value="getAllProductsByCategory/{pId}")
	public ModelAndView getProductByCategory(@PathVariable("pId")int categoryId)
	{
		
		
		
		List<Product> pList=productDao.getAllProductsByCategory(categoryId);
		ModelAndView mv=new ModelAndView("ProductDisplay");
		
		mv.addObject("products",pList);
		mv.addObject("formLabel","${pId.categoryName}");
		return mv;
	}

}
	            
		
	
