package com.backend;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.backend.config.DBConfig;
import com.backend.dao.CategoryDao;
import com.backend.model.Category;

public class CategoryTestCase {
	static CategoryDao categoryDao;
	
	@BeforeClass
	public static void intitialize()
	{
      AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
      context.register(DBConfig.class);
      context.refresh();
      
      categoryDao =context.getBean("categoryDao",CategoryDao.class);
		
	}
	
	@Test
	@Ignore
	public void addCategoryTest()
    {
		Category cat=new Category();
		cat.setCategoryName("Women wear");
		cat.setCategoryDesc("Ethnic wear and casual wear");
		assertTrue("Problem in adding Category",categoryDao.add(cat));
	}
	
	@Test
	@Ignore
	public void getAllCategories(){
		List<Category> categories=categoryDao.listCategories();
		for(Category catObj:categories){
			System.out.println(catObj.getCategoryId()+" "+catObj.getCategoryName()+" "+catObj.getCategoryDesc());
			
		}
		assertTrue("No Categories found",categories.size()>0);
	}
	@Test
	@Ignore
    public void deleteCategoryTest(){
        Category cat=categoryDao.getCategory(5);
        assertTrue("Category Not Found",categoryDao.delete(cat));
	}
	
	@Test
	@Ignore
	public void getCategoryByIdTest(){
		Category obj=categoryDao.getCategory(1);
		System.out.println(obj);
		assertNotNull("Category Not found",obj);
	}
}
