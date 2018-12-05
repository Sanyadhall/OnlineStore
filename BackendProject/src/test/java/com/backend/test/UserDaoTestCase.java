package com.backend.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.dao.UserDao;
import com.backend.model.User;

public class UserDaoTestCase {
	static UserDao userDao;
	
	@BeforeClass
	public static void intialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.backend");
		context.refresh();
		
		userDao=context.getBean("userDao",UserDao.class);
	}
	
	@Test
	@Ignore
	public void registerUserTestCase()
	{
		User u=new User();
		
		u.setUserName("Ramesh");
		u.setPassword("12344");
		u.setCustomerName("Ramesh Dhall");
		u.setEnabled(true);
		u.setAddress("Krishna Nagar");
		u.setMobileNo("9810467890");
		u.setEmailId("ramesh@gmail.com");
		u.setRole("Role_User");
		
		assertTrue("Problem in Registering User",userDao.registerUser(u));
		
		
	}
	
}