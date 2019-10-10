<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guardar Escenario</title>
</head>
<body>
	<br>
	<spring:url value="/escenario/save" var="saveURL"></spring:url>

	<form:form action="${saveURL}" method="POST" modelAttribute="escenario">
		<form:hidden path="id" />
		<table border="1">
			<tr>
				<td>Direccion</td>
				<td><form:input path="direccion" /></td>
			</tr>
			<tr>
				<td>Nombre</td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td>Hora Reserva</td>
				<td><form:input  path="hora_reserva" /></td>
			</tr>
			<tr>
				<td>fecha Reserva</td>
				<td><form:input type="date" path="fecha_reserva" /></td>
			</tr>
			<tr>
				<td>Estado</td>
				<td>
					<form:select path="estadoesce">
						<form:option value="Disponible">Disponible</form:option>
						<form:option value="Reservado">Reservado</form:option>
						<form:option value="En mantenimiento">En mantenimiento</form:option>
					</form:select>
				</td>
			</tr>

			<tr>
				<td colspan="2"><button type="submit">Guardar</button></td>

			</tr>
		</table>

	</form:form>
</body>
</html>