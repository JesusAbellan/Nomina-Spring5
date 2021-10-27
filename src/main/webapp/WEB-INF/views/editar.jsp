<%@ include file="/WEB-INF/views/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Empleado</title>
</head>
<body>
<h1>Editar Empleado</h1>
	<form:form method="post" action="editar.htm">
		<c:set var="empleado" value="${model.empleado}"></c:set>
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
				<td><input type="number" name="categoria" min="1" max="10" size="50" value="${empleado.categoria}"></td>
			</tr>
			<tr>
				<td>Años Trabajados:</td>
				<td><input type="number" min="1" name="anyos" size="50" value="${empleado.anyos}"></td>
			</tr>
		</table>
		<input type="submit" class="save" value="Guardar">
	</form:form>
	<br>
	<button type="button" name="back" class="back" onclick="history.back()">Volver</button>
</body>
</html>