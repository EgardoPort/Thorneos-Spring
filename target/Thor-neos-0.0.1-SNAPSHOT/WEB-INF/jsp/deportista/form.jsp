<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar / editar</title>
</head>
<body>
	<br>
	<spring:url value="/deportista/save" var="saveURL"></spring:url>
	<form:form action="${saveURL }" method="POST"
		modelAttribute="participante">
		<form:hidden path="id" />
		<table>
			<tr>
				<td>Nombre</td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td>Apellido</td>
				<td><form:input path="apellido" /></td>
			</tr>
			<tr>
				<td>Fecha de nacimiento</td>
				<td><form:input path="fechaNac" /></td>
			</tr>
			<tr>
				<td>Peso</td>
				<td><form:input path="peso" /></td>
			</tr>
			<tr>
				<td colspan="2">Fecha de nacimiento
					<button type=submit>Guardar</button>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>