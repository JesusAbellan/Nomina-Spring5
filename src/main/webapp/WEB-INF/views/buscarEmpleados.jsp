<%@ include file="/WEB-INF/views/include.jsp" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buscar Empleados</title>
<link rel="stylesheet" href="styles/general.css"></link>
</head>
<body>
<h1>Buscar Empleados</h1>
	<form:form method="GET" action="buscarNombre.htm">
		<input type="text" name="nombre"> 
		<input type="submit" value="Buscar por Nombre"style="width:150px">
	</form:form>
	<form:form action="buscarDNI.htm">
		<input type="text" name="dni"> 
		<input type="submit" value="Buscar por DNI" style="width:150px">
	</form:form>
	<form:form action="buscarSexo.htm">
		<input type="text" name="sexo" pattern="[FM]" oninvalid="this.setCustomValidity('Introduce F o M')"> 
		<input type="submit" value="Buscar por Sexo" style="width:150px">
	</form:form>
	<form:form action="buscarCategoria.htm">
		<input type="number" name="categoria" min="1" max="10"> 
		<input type="submit" value="Buscar por Categoria" style="width:150px">
	</form:form>
	<form:form action="buscarAnyos.htm">
		<input type="number" name="anyos"> 
		<input type="submit" value="Buscar por Años" style="width:150px">
	</form:form>
	<br>
	<button type="button" name="back" class="back" onclick="history.back()">Volver</button>
</body>
</html>