package com.backend;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.config.DBConfig;
import com.backend.dao.CartDao;
import com.backend.dao.UserDao;
import com.backend.model.Cart;

public class CartTestCase {
	
	static CartDao cartDao;
	static UserDao userDao;
	
	@BeforeClass
	public static void initialiaze()
	
	{
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.register(DBConfig.class);
		context.refresh();
		
		cartDao =context.getBean("cartDao",CartDao.class);
		userDao=context.getBean("userDao",UserDao.class);
	}

	@Test
	public void addCart()
	{
		Cart c=new Cart();
		c.setUser(userDao.getUser("sanyadhall@gmail.com"));
		c.setCustomerId("1");
		
		assertTrue("Problem in adding Cart",cartDao.addCart(c));
		
		
		
		
	}
}
