package com.backend.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.config.DBConfig;
import com.backend.dao.SupplierDao;
import com.backend.model.Supplier;

public class SupplierTestCase {
	
	static SupplierDao supplierDao;
	
	@BeforeClass
	public static void intitialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.register(DBConfig.class);
		context.refresh();
		supplierDao=context.getBean("supplierDao",SupplierDao.class);
	}
	
	@Test
	@Ignore
	public void addSupplier()
	{
		Supplier s=new Supplier();
		s.setSupplierName("Baggit");
		s.setSupplierAddr("New Delhi");
		
		assertTrue("Problem in adding Supplier",supplierDao.add(s));
	}

	@Test
	@Ignore
	public void getSupplier()
	{
		Supplier s=supplierDao.getSupplierById(3);
		System.out.println(s);
		assertNotNull("category not Found",s);
	}
	
	@Test
	public void deleteSupplier()
	{
	  Supplier s=supplierDao.getSupplierById(7);
	  assertTrue("Supplier Not Found",supplierDao.delete(s));
	  
	}
}
