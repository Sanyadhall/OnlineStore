package com.backend.daoImpl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.CategoryDao;
import com.backend.model.Category;
@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao {
	
@Autowired
SessionFactory sessionFactory;
	@Override
	public boolean add(Category category) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(category);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
		
		
	}

	@Override
	public boolean delete(Category category) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.delete(category);
			return true;
		}
		catch(Exception e)
		{
		e.printStackTrace();
	    }
		return false;
	}

	@Override
	public boolean update(Category category) {
		
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.update(category);
			return true;
		}
		catch(Exception e)
		{
		e.printStackTrace();
		
	    }
		return false;
	}
	

	@Override
	public List<Category> listCategories() {
		try{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> listCategories=query.list();
		session.close();
		return listCategories;
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	    
		return null;

	}
	@Override
	public Category getCategory(int categoryId) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
		     Category obj=session.get(Category.class, categoryId);
		     return obj;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
