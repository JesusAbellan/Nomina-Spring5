<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buscar Salario</title>
<link rel="stylesheet" href="styles/general.css"></link>
</head>
<body>
	<h1>Buscar Salario</h1>
	<p>Introduce un DNI para ver el salario del Empleado</p>
	<form:form method="GET" action="salarioEspecifico.htm">
		<input type="text" name="dni">
		<input type="submit" value = "Buscar Empleado">
	</form:form>
	<br>
	<button type="button" name="back" class="back" onclick="history.back()">Volver</button>
</body>
</html>