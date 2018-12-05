package com.backend.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.UserDao;
import com.backend.model.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;
	public boolean registerUser(User user) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(user);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateUser(User user) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.update(user);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public User getUser(String userName) {
		try
		{
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class,userName);
		return user;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

}
