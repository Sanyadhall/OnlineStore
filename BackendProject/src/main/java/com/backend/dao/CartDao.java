package com.backend.dao;



import com.backend.model.Cart;

public interface CartDao {
	
	
	public boolean addCart(Cart cart);
	public Cart getCartByCustomer(String customerId);
    public boolean deleteCart(int cartId);
	
	

}
