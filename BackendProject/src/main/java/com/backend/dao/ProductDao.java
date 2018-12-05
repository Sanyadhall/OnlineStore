package com.backend.dao;

import java.util.List;

import com.backend.model.Product;

public interface ProductDao {

	public boolean addProduct(Product product);
	public boolean deleteProduct(Product product);
	public boolean updateProduct(Product product);
	public List<Product> listProducts();
	public Product getProduct(int productId);
	public List<Product> getAllProductsByCategory(int categoryId);
	
	
}
