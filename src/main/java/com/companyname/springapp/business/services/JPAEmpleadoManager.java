package com.companyname.springapp.business.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.companyname.springapp.business.entities.Empleado;
import com.companyname.springapp.business.repositories.EmpleadoRepository;

@Service
public class JPAEmpleadoManager implements EmpleadoManager {

	@Autowired
	private EmpleadoRepository empleadoRepository;
	
	@Override
	public List<Empleado> getEmpleados() {
		return (List<Empleado>) empleadoRepository.findAll();
	}

	@Override
	public Empleado getEmpleadoDNI(String dni) {
		return empleadoRepository.findById(dni).get();
	}

	@Override
	public List<Empleado> getEmpleadoNombre(String nombre) {
		return empleadoRepository.findByNombre(nombre);
	}

	@Override
	public List<Empleado> getEmpleadoSexo(String sexo) {
		return empleadoRepository.findBySexo(sexo);
	}

	@Override
	public List<Empleado> getEmpleadoCategoria(int categoria) {
		return  empleadoRepository.findByCategoria(categoria);
	}

	@Override
	public List<Empleado> getEmpleadoAnyos(int anyos) {
		return  empleadoRepository.findByAnyos(anyos);
	}

	@Override
	public List<String> getDNIs() {
		return  empleadoRepository.findDNIs();
	}
	
	public void actualizarEmpleado(Empleado emp) {
		empleadoRepository.save(emp);
	}
	
	public void eliminar(Empleado emp) {
		empleadoRepository.delete(emp);
	}

}
