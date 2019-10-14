package com.thorneos.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.thorneos.entidades.Persona;

public class PersonaValidation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Persona.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
	}

}
