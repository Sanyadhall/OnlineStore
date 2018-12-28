package com.backend.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="SupplierTable_04")
public class Supplier {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private int supplierId;
	
	@NotEmpty(message="Supplier name Required")
	private String supplierName;
	
	@NotEmpty(message="Supplier address is required")
	private String supplierAddr;
	
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="supplier",cascade=CascadeType.ALL)
	private Set<Product> products=new HashSet<Product>();
	
	
	
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierAddr() {
		return supplierAddr;
	}
	public void setSupplierAddr(String supplierAddr) {
		this.supplierAddr = supplierAddr;
	}

}
