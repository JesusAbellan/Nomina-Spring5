package com.companyname.springapp.exception;

public class DatosNoCorrectosException extends Exception {
	public DatosNoCorrectosException(String errorMessage) {
		super(errorMessage);
	}
}
