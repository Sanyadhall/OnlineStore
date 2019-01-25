package com.frontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.backend.dao.CartDao;
import com.backend.dao.ItemDao;
import com.backend.dao.OrderDao;
import com.backend.dao.ProductDao;
import com.backend.model.Cart;
import com.backend.model.Item;
import com.backend.model.Order;
import com.backend.model.Product;


@Controller
public class OrderController {
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ItemDao itemDao;
	
	@Autowired
	OrderDao orderDao;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping(value="/order",method=RequestMethod.GET)
	public ModelAndView getPaymentPage(){
		ModelAndView mv = new ModelAndView("Payment");
		
		double price=(Double)session.getAttribute("total");
		
		Order order=new Order();
		order.setTotalPrice(price+100);
		
		mv.addObject("orderObj",order);
         return mv;
	}
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="/addToCart/processOrder",method=RequestMethod.POST)
	public ModelAndView processOrder(@ModelAttribute("orderObj")Order orderObj){
		String email=request.getUserPrincipal().getName();
		System.out.println("Email : "+email);
		
		Cart cartObj=cartDao.getCartByCustomer(email);
		List<Item> items=itemDao.getItemsListByCart(cartObj.getCartId());
		double sum=0;
		for(Item item:items){
			sum=sum+item.getPrice();
		}
	
		
		int orderId=orderDao.makeOrder(orderObj);
		System.out.println("Order Make");
		
		for(Item item:items){
			Product pro=item.getProduct();
			pro.setStock(pro.getStock()-item.getQuantity());
			productDao.updateProduct(pro);
		}
		
		
		cartDao.deleteCart(cartObj.getCartId());
		System.out.println("Deleting Cart");
		
		ModelAndView mv=new ModelAndView("PaymentSuccess");
		mv.addObject("totalAmountToPay",sum);
		mv.addObject("orderId",orderId);
		return mv;
	}
}












