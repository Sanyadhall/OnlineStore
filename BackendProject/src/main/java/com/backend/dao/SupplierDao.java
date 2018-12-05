package com.backend.dao;

import java.util.List;

import com.backend.model.Supplier;

public interface SupplierDao {
	public boolean add(Supplier supplier);
	public boolean delete(Supplier supplier);
	public boolean update(Supplier supplier);
	public List<Supplier> listSuppliers();
	public Supplier getSupplierById(int supplierId);

}
