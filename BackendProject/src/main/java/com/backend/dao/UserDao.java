package com.backend.dao;

import com.backend.model.User;

public interface UserDao {
	
	public boolean registerUser(User user);
	public boolean updateUser(User user);
	public User getUser(String userName);

}
