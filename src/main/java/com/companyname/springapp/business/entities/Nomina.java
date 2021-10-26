package com.companyname.springapp.business.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.companyname.springapp.business.entities.Empleado;

@Entity
@Table(name="nominas")
public class Nomina {
	@Id
	@Column(name="ID")
	private int id;
	
	private String dni;
	private String sueldo;
	private static final int SUELDO_BASE[] = { 50000, 70000, 90000, 110000, 130000, 150000, 170000, 190000, 210000,
			230000 };

	public int ueldo(Empleado emp) {
		int sueldo = SUELDO_BASE[emp.getCategoria() - 1] + 5000 * emp.getAnyos();
		return sueldo;
	}
	
	public String getSueldo() {
		return sueldo;
	}
}
