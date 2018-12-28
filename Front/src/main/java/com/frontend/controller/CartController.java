package com.frontend.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.CartDao;
import com.backend.dao.CategoryDao;
import com.backend.dao.ItemDao;
import com.backend.dao.ProductDao;
import com.backend.dao.UserDao;
import com.backend.model.Cart;
import com.backend.model.Category;
import com.backend.model.Item;
import com.backend.model.Product;




@Controller
public class CartController {
	
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	ItemDao itemDao;
	
	@Autowired
	HttpSession session;

	
	@Autowired
	UserDao userDao;
	
	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="addToCart/{proId}",method=RequestMethod.GET)
	public String addToCart(@PathVariable("proId")int pId){
		Principal p=request.getUserPrincipal();
		String userEmail=p.getName();
		
		Cart cart=cartDao.getCartByCustomer(userEmail);
		if(cart==null){
			System.out.println("No Cart existed. we will create new cart ");
			cart=new Cart();
			cart.setCustomerId(userEmail);
			
			
			Product pro=productDao.getProduct(pId);
			Item itemObj=new Item();
			itemObj.setPrice(pro.getPrice());
			itemObj.setQuantity(1);
			itemObj.setProduct(pro);
			itemObj.setCustomerId(userEmail);
			itemObj.setCart(cart);
			
			cart.getItems().add(itemObj);
			
			cartDao.addCart(cart);
			itemDao.addItem(itemObj);
		}
		else {
			System.out.println("Cart already exist");
		
			Item itemObj=itemDao.getItemByProductIdAndCustomerId(pId, userEmail);
			if(itemObj==null){
				Product pro=productDao.getProduct(pId);
				itemObj=new Item();
				itemObj.setPrice(pro.getPrice());
				itemObj.setQuantity(1);
				itemObj.setProduct(pro);
				itemObj.setCustomerId(userEmail);
				itemObj.setCart(cart);
			
				cart.getItems().add(itemObj);
				
				itemDao.addItem(itemObj);
			
			}
			else {
				itemObj.setQuantity(itemObj.getQuantity()+1);
				itemDao.updateItem(itemObj);
			}
			 	
		}
		
		return "redirect:viewCart?uEmail="+userEmail;
	}
	
	@RequestMapping(value="addToCart/viewCart",method=RequestMethod.GET)
	public ModelAndView viewCart(@RequestParam("uEmail")String email){
		
		
		Cart obj=cartDao.getCartByCustomer(email);
		List<Item> items=itemDao.getItemsListByCart(obj.getCartId());
		
		double total=0;
		for(Item item:items){
			double price=item.getPrice()*item.getQuantity();
			total=total+price;
		}
		
		
		ModelAndView mv=new ModelAndView("CartDisplay");
		mv.addObject("cartItems",items);
		mv.addObject("cartObject",obj);
		mv.addObject("total",total);
		
		
		List<Category> cats=(List<Category>)session.getAttribute("categories");
		for(Category cat:cats){
			System.out.println(cat.getCategoryName());
		}
		
/*		session.setAttribute("categories",categoryDao.listCategories());
		session.setAttribute("userEmail",email);
		session.setAttribute("userObject",userDao.getUser(email));
*/		return mv;
		
	}
	
}


