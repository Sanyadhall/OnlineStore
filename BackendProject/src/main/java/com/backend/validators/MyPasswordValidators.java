package com.backend.validators;

import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.backend.model.User;


@Component
public class MyPasswordValidators implements Validator {

	@Override
	public boolean supports(Class clazz) {
		return User.class.isAssignableFrom(clazz);
		
		
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password","required.password");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password2","required.confirmPassword");
		
		User user= (User)target;
		
		if(!(user.getPassword().equals(user.getPassword2())))
		{
			errors.rejectValue("password", "notmatch.password");
		}
		
		
	}

	

}
