<%@ include file="/WEB-INF/views/include.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buscar Empleados</title>
<link rel="stylesheet" href="styles/general.css"></link>
</head>
<body>
<h1>Buscar Empleados</h1>
	<form:form modelAttribute="buscarNombre.htm">
		<input type="text" name="nombre"> 
		<input type="submit" value="Execute"style="width:150px">
	</form:form>
	<form:form modelAttribute="buscarDNI.htm">
		<input type="text" name="dni"> 
		<input type="submit" value="Execute" style="width:150px">
	</form:form>
	<form:form modelAttribute="buscarSexo.htm">
		<input type="text" name="sexo" pattern="[FM]" oninvalid="this.setCustomValidity('Introduce F o M')"> 
		<input type="submit" value="Execute" style="width:150px">
	</form:form>
	<form:form modelAttribute="buscarCategoria.htm">
		<input type="text" name="categoria" pattern="[0-9]+" oninvalid="this.setCustomValidity('Introduce un número')"> 
		<input type="submit" value="Execute" style="width:150px">
	</form:form>
	<form:form modelAttribute="buscarAnyos.htm">
		<input type="text" name="anyos" pattern="[0-9]+" oninvalid="this.setCustomValidity('Introduce un número')"> 
		<input type="submit" value="Execute" style="width:150px">
	</form:form>
	<br>
	<button type="button" name="back" class="back" onclick="history.back()">Volver</button>
</body>
</html>