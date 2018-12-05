package com.backend.dao;

import java.util.List;

import com.backend.model.Cart;

public interface CartDao {
	
	
	public boolean addCartItems(Cart cart);
	public boolean deleteCartItems(Cart cart);
	public boolean updateCartItems(Cart cart);
	public Cart getCartItem (int cartId);
	public List<Cart> ListCartItems();
	
	

}
