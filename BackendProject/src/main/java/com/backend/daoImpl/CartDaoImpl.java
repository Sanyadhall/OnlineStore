package com.backend.daoImpl;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.CartDao;
import com.backend.model.Cart;


@Repository("cartDao")
@Transactional

public class CartDaoImpl implements CartDao {

	
	@Autowired
	SessionFactory sessionFactory;
	public boolean addCart(Cart cart) {
		try
		{
			
			Session session=sessionFactory.getCurrentSession();
			session.save(cart);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	
	public Cart getCartByCustomer(String customerId) {
		try
		{
			
			Session session=sessionFactory.getCurrentSession();
			Cart cart=(Cart)session.get(Cart.class, customerId);
			return cart;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	
	public boolean deleteCart(int cartId) {
		try
		{
			
			Session session=sessionFactory.getCurrentSession();
			session.delete(cartId);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	

}
