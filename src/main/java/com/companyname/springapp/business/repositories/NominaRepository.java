package com.companyname.springapp.business.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.companyname.springapp.business.entities.Nomina;

public interface NominaRepository extends CrudRepository<Nomina, Integer> {
	
	@Query(value = "SELECT * FROM Nominas.nominas as n WHERE n.DNI = :dni", nativeQuery=true)
	Nomina findByDNI(@Param("dni") String dni);
}
