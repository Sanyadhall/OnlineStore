package com.backend.daoImpl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.ProductDao;
import com.backend.model.Product;

@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public boolean addProduct(Product product) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(product);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteProduct(Product product)
	{
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.delete(product);
		    return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateProduct(Product product) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.update(product);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Product> listProducts() {
		try
		{
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Product");
			List<Product> listProducts=query.list();
			session.close();
			return listProducts;
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Product getProduct(int productId) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Product product=(Product)session.get(Product.class,productId);
			return product;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getAllProductsByCategory(int categoryId) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Query query=session.createQuery("from Product where categoryId=:x");
			query.setInteger("x",categoryId);
			List<Product> listProducts=query.list();
			return listProducts;
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}
