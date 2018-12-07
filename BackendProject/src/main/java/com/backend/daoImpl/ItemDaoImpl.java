package com.backend.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.ItemDao;
import com.backend.model.Cart;
import com.backend.model.Item;

@Repository("itemDao")
@Transactional
public class ItemDaoImpl implements ItemDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean addItem(Item item) 
	{
		
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(item);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean updateItem(Item item) {
		
		
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.update(item);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean deleteItem(int itemId) {
		
		
		try
		{
			
			Session session=sessionFactory.getCurrentSession();
			session.delete(itemId);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public Item getItemByProductIdAndCustomerId(int productId, String customerId) 
	{
		
		try
		{
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<Item> getItemsListByCart(int cartId) 
	{
		
		try
		{
			
			Session session=sessionFactory.getCurrentSession();
			Query query=session.createQuery("from Item where cartId=:x");
			query.setInteger("x",cartId);
			List<Item> getItemsListByCart=query.list();
			return getItemsListByCart;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public boolean increaseQuantity(int itemId)
	{
		
		try
		{
			
			Session session=sessionFactory.getCurrentSession();
			session.update(session);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean decreaseQuantity(int itemId)
	{
		
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.update(session);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

}
