package com.backend;




import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.config.DBConfig;
import com.backend.dao.AddressDao;
import com.backend.dao.UserDao;
import com.backend.model.Address;



public class AddressDaoTestCase {
	static AddressDao addressDao;
	static UserDao userDao;

	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new  AnnotationConfigApplicationContext();
		context.register(DBConfig.class);
		context.refresh();
		addressDao =context.getBean("addressDao",AddressDao.class);
		userDao =context.getBean("userDao",UserDao.class);
	}
	

	
	@Test
	@Ignore
	public void insertAddress()
	{
		Address a=new Address();
		a.setHouseNumber(134);
		a.setLocality("GEETA COLONY");
		a.setCity("DELHI");
		a.setState("NEW DELHI");
		a.setUser(userDao.getUser("sanyadhall@gmail.com"));
		
		assertTrue("Problem in adding address",addressDao.insertAddress(a));
		
	}	
	
}
