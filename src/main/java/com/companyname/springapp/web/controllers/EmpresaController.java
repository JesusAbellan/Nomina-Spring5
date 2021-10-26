package com.companyname.springapp.web.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.companyname.springapp.business.entities.Empleado;
import com.companyname.springapp.business.services.EmpleadoManager;
import com.companyname.springapp.business.services.NominaManager;
import com.companyname.springapp.exception.DatosNoCorrectosException;

@Controller
public class EmpresaController {

	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
	private EmpleadoManager empleadoManager;
	
	@Autowired
	private NominaManager nominaManager;
	
	@RequestMapping(value="/welcome.htm")
    public ModelAndView handleRequest() {
        return new ModelAndView("welcome");
    }
	
	@RequestMapping(value="/mostrarEmpleados.htm")
	public ModelAndView mostrarEmpleados() {
		Map<String,Object> myModel = new HashMap<String,Object>();
		
		myModel.put("empleados", this.empleadoManager.getEmpleados());
		
		return new ModelAndView("mostrarEmpleados","model", myModel);
	}
	
	@RequestMapping(value="/mostrarSalario.htm")
	public ModelAndView mostarSalario() {
		return new ModelAndView("mostrarSalario");
	}
	
	@RequestMapping(value="/salarioEspecifico.htm")
	public ModelAndView salarioEspecifico(@RequestParam String dni) {
		Map<String,Object> myModel = new HashMap<String,Object>();
		myModel.put("empleado", empleadoManager.getEmpleadoDNI(dni));
		myModel.put("nomina", nominaManager.getNominaDNI(dni));
		
		return new ModelAndView("salarioEspecifico","model",myModel);
	}
	
	@RequestMapping(value="/meditar.htm")
	public ModelAndView meditar(@RequestParam String dni) {
		Map<String,Object> myModel = new HashMap<String,Object>();
		myModel.put("empleado", empleadoManager.getEmpleadoDNI(dni));
		
		return new ModelAndView("editar","model",myModel);
	}
	
	@RequestMapping(value="/buscarEmpleados.htm")
	public ModelAndView buscarEmpleados() {
		return new ModelAndView("buscarEmpleados");
	}
	
	@RequestMapping(value="/buscarDNI.htm")
	public ModelAndView buscarDNI(@RequestParam String dni) {
		Map<String,Object> myModel = new HashMap<String,Object>();
		List<Empleado> empleados = new ArrayList<Empleado>();
		Object emp = empleadoManager.getEmpleadoDNI(dni);
		if(emp instanceof Empleado) {
			empleados.add((Empleado)emp);
		}
		myModel.put("empleados",empleados);
		
		return new ModelAndView("mostrarEmpleados","model",myModel);
	}
	
	@RequestMapping(value="/buscarNombre.htm")
	public ModelAndView buscarNombre(@RequestParam String nombre) {
		Map<String,Object> myModel = new HashMap<String,Object>();
		myModel.put("empleados", empleadoManager.getEmpleadoNombre(nombre));
		
		return new ModelAndView("mostrarEmpleados","model",myModel);
	}
	
	@RequestMapping(value="/buscarSexo.htm")
	public ModelAndView buscarSexo(@RequestParam String sexo) {
		Map<String,Object> myModel = new HashMap<String,Object>();
		myModel.put("empleados", empleadoManager.getEmpleadoSexo(sexo));
		
		return new ModelAndView("mostrarEmpleados","model",myModel);
	}
	
	@RequestMapping(value="/buscarCategoria.htm")
	public ModelAndView buscarSexo(@RequestParam int categoria) {
		Map<String,Object> myModel = new HashMap<String,Object>();
		myModel.put("empleados", empleadoManager.getEmpleadoCategoria(categoria));
		
		return new ModelAndView("mostrarEmpleados","model",myModel);
	}
	
	@RequestMapping(value="/buscarAnyos.htm")
	public ModelAndView buscarAnyos(@RequestParam int anyos) {
		Map<String,Object> myModel = new HashMap<String,Object>();
		myModel.put("empleados", empleadoManager.getEmpleadoAnyos(anyos));
		
		return new ModelAndView("mostrarEmpleados","model",myModel);
	}
	
	@RequestMapping(method = RequestMethod.POST, value ="/editar.htm")
	public ModelAndView editar(@RequestParam String nombre,@RequestParam String dni,@RequestParam String sexo,@RequestParam int categoria,@RequestParam int anyos) {
		Empleado emp = null;
		try {
			emp = new Empleado(nombre,dni,sexo,categoria,anyos);
		} catch (DatosNoCorrectosException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		empleadoManager.actualizarEmpleado(emp);
		
		return new ModelAndView("index");
	}
}
