package com.companyname.springapp.business.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.companyname.springapp.business.entities.Nomina;
import com.companyname.springapp.business.repositories.NominaRepository;

@Service
public class JPANominaManager implements NominaManager {

	@Autowired
	private NominaRepository nominaRepository;
	
	@Override
	public Nomina getNominaDNI(String dni) {
		return nominaRepository.findByDNI(dni);
	}

	@Override
	public void actualizarNomina(Nomina nom) {
		nominaRepository.save(nom);
	}

}
