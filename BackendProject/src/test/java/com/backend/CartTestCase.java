package com.backend;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.config.DBConfig;
import com.backend.dao.CartDao;
import com.backend.dao.UserDao;
import com.backend.model.Cart;
import com.backend.model.User;

public class CartTestCase {
	
	static CartDao cartDao;
	static UserDao userDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.register(DBConfig.class);
		context.refresh();
	
		cartDao=context.getBean("cartDao",CartDao.class);
	    userDao=context.getBean("userDao",UserDao.class);
		
		
	}
	
	@Test
	@Ignore
	public void addCart()
	{
		Cart c=new Cart();
		c.setCartId(1);
		c.setCustomerId("2");
		c.setUser(userDao.getUser("rahul"));
		
		assertTrue("Problem in adding cart",cartDao.addCart(c));
		
		
	}
}
