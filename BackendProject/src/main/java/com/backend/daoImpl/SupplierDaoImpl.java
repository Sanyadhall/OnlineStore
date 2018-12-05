package com.backend.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.backend.dao.SupplierDao;
import com.backend.model.Supplier;


@Repository("supplierDao")
@Transactional
public class SupplierDaoImpl implements SupplierDao {

	@Autowired
	SessionFactory sessionFactory;
	public boolean add(Supplier supplier) {
		
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.save(supplier);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean delete(Supplier supplier) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.delete(supplier);
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				return false;
	}

	@Override
	public boolean update(Supplier supplier) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			session.update(supplier);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				return false;
	}

	@Override
	public List<Supplier> listSuppliers() {
		try
		{
			Session session=sessionFactory.openSession();
	    	Query query=session.createQuery("from Supplier");
	        List<Supplier>listSuppliers=query.list();
	        session.close();
	        return listSuppliers;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				return null;
	}

	@Override
	public Supplier getSupplierById(int supplierId) {
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Supplier supplier=(Supplier)session.get(Supplier.class, supplierId);
                return supplier;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				return null;
	}

}
