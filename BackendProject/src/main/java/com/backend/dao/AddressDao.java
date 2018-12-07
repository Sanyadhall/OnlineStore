package com.backend.dao;

import com.backend.model.Address;

public interface AddressDao 
{
	
	
	public boolean insertAddress(Address address);
	public Address getAddressById(int addressId);
	public void updateAddress(Address address);
	public void deleteAddress(Address address);
	
}
