<%@ include file="/WEB-INF/views/include.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Nominas Spring</title>
		<link rel="stylesheet" href="styles/general.css"></link>
	</head>
	<body>
		<h1>Menu de Nominas Spring</h1>
		<ul>
			<li class="firstli"><a href ="<c:url value ="mostrarEmpleados.htm"/>">Mostrar Empleados</a></li>
			<li><a href ="<c:url value ="mostrarSalario.htm"/>">Mostrar Salario</a></li>
			<li><a href ="<c:url value ="buscarEmpleados.htm"/>">Buscar Empleados</a></li>
		</ul>
	</body>
</html>