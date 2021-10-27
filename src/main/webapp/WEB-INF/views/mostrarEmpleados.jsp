<%@ include file="/WEB-INF/views/include.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mostrar todos los empleados</title>
<link rel="stylesheet" href="resources/general.css"></link>

</head>
<body>
	<h1>Empleados</h1>
	<c:set var="tamanio" value="${model.empleados.size()}"></c:set>
	<c:choose>
		<c:when test="${tamanio > 0}">
			<table border="1">
				<tr>
					<th>Nombre Completo</th>
					<th>DNI</th>
					<th>Sexo</th>
					<th>Categoria</th>
					<th>Años Trabajados</th>
					<th>Acción</th>
				</tr>
				<c:forEach var="empleado" items="${model.empleados}">
					<tr>
						<td><c:out value="${empleado.nombre}"></c:out></td>
						<td><a
							href="<c:url value ="meditar.htm?dni=${empleado.dni}"/>"><c:out 
									value="${empleado.dni}"></c:out></a></td>
						<td><c:out value="${empleado.sexo}"></c:out></td>
						<td><c:out value="${empleado.categoria}"></c:out></td>
						<td><c:out value="${empleado.anyos}"></c:out></td>
						<td><a
							href="<c:url value ="eliminar.htm?dni=${empleado.dni}"/>"><c:out 
									value="Borrar Empleado"></c:out></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${tamanio <= 0}">
			<p>¡Error! Empleados No encontrados, prueba a cambiar el valor de
				la búsqueda.</p>
		</c:when>
	</c:choose>
	<br>
	<button type="button" name="back" class="back" onclick="history.back()">Volver</button>
</body>
</html>