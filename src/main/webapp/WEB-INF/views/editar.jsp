<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Empleado</title>
</head>
<body>
<h1>Editar Empleado</h1>
	<form:form method="post" action="editar">
		<c:set var="empleado" value="${empleado}"></c:set>
		<input type="hidden" name="dni" value="${empleado.dni}">
		<table border="1">
			<tr>
				<td>Nombre:</td>
				<td><input type="text" name="nombre" size="50" value="${empleado.nombre}"></td>
			</tr>
			<tr>
				<td>Sexo:</td>
				<td><input type="text" name="sexo" size="50" value="${empleado.sexo}"></td>
			</tr>
			<tr>
				<td>Categoria:</td>
				<td><input type="text" name="categoria" size="50" value="${empleado.categoria}"></td>
			</tr>
			<tr>
				<td>A�os Trabajados:</td>
				<td><input type="text" name="anyos" size="50" value="${empleado.anyos}"></td>
			</tr>
		</table>
		<input type="submit" class="save" value="Execute">
	</form:form>
	<br>
	<button type="button" name="back" class="back" onclick="history.back()">Volver</button>
</body>
</html>