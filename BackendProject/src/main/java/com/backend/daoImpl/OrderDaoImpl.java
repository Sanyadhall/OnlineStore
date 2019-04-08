package com.backend.daoImpl;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.OrderDao;
import com.backend.model.Order;


@Repository("orderDao")
@Transactional
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public int makeOrder(Order order) {
		
		Session session= sessionFactory.getCurrentSession();
		return (int)session.save(order);
	}

}
