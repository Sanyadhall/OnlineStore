package com.backend.daoImpl;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.AddressDao;
import com.backend.model.Address;


@Repository("addressDao")
@Transactional
public class AddressDaoImpl implements AddressDao
{
	@Autowired
	SessionFactory sessionFactory;
	public boolean insertAddress(Address address)
	
	{
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(address);
			return true;
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
		
	}

	@Override
	public Address getAddressById(int addressId)
	{
		try
		{
			
			Session session=sessionFactory.getCurrentSession();
			Address address=(Address)session.get(Address.class, addressId);
			return address;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		
		
	}

	@Override
	public void updateAddress(Address address) 
	{
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.update(address);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void deleteAddress(Address address)
	{
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.delete(address);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

	
}
