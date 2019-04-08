package com.backend.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.backend.model.Product;

@Component
public class ProductValidation implements Validator {

	@Override
	public boolean supports(Class clazz) {
		
		return Product.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Product pro=(Product)target;
		
		if(pro.getCategoryId()==0)
		{
			errors.rejectValue("categoryId", "cat.Id");
		}
		
		if(pro.getSupplierId()==0)
		{
			errors.rejectValue("supplierId","supp.Id");
		}
		
	}

}
