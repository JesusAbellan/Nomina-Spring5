package com.companyname.springapp.business.services;

import java.util.Optional;

import com.companyname.springapp.business.entities.Nomina;

public interface NominaManager {
	
	public Nomina getNominaDNI(String dni);
	
	public void actualizarNomina(Nomina nom);
	
	public void eliminar(Nomina nom);
}
