package com.companyname.springapp.business.services;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.companyname.springapp.business.entities.Empleado;

public interface EmpleadoManager {
	
	public List<Empleado> getEmpleados();
	
	public Empleado getEmpleadoDNI(String dni);
	
	public List<Empleado> getEmpleadoNombre(String nombre);
	
	public List<Empleado> getEmpleadoSexo(String sexo);
	
	public List<Empleado> getEmpleadoCategoria(int categoria);
	
	public List<Empleado> getEmpleadoAnyos(int anyos);
	
	public List<String> getDNIs();
	
	public void actualizarEmpleado(Empleado emp);
}
