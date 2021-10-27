<%@ include file="/WEB-INF/views/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salario Específico</title>
<link rel="stylesheet" href="styles/general.css"></link>
</head>
<body>
	<h1>Salario de ${model.empleado.nombre}</h1>
	<input type="hidden" name="volver" value="/index.jsp">
	<table border ="1">
		<tr>
			<th>Empleado</th>
			<th>Salario</th>
		</tr>
		<tr>
			<td><c:out value="${model.empleado.nombre}"></c:out></td>
			<td><c:out value="${model.nomina.sueldo}"></c:out></td>
		</tr>
	</table>
	<button type="button" name="back" class="back" onclick="history.back()">Volver</button>
</body>
</html>