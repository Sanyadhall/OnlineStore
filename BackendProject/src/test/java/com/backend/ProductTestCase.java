package com.backend;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.config.DBConfig;
import com.backend.dao.ProductDao;
import com.backend.model.Category;
import com.backend.model.Product;

public class ProductTestCase {
	
	static ProductDao productDao;
	@BeforeClass
	public static void intiatize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.backend");
		context.refresh();
		productDao=context.getBean("productDao",ProductDao.class);
     }
	
	@Test
	@Ignore
	public void addProductTestCase()
	{
		Product product=new Product();
		product.setProductName("Sling bag");
		product.setProductDesc("ladies sling bag");
		product.setPrice(4556.90);
		product.setStock(100);
		product.setSupplierId(1);
		product.setCategoryId(8);
		
		assertTrue("Problem in adding Product",productDao.addProduct(product));
	}
	
	@Test
	@Ignore
     public void getProductByCategory(){
    	 List<Product> product=productDao.getAllProductsByCategory(8);
 		for(Product pObj:product){
 			System.out.println(pObj.getProductId()+" "+pObj.getProductName()+" "+pObj.getProductDesc()+" "+pObj.getPrice()+" "+pObj.getStock());
 		}
		assertTrue("No products found",product.size()>0);
 		}

}


