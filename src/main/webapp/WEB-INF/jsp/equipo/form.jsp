<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guardar Equipo</title>
</head>
<body>
	<br>
	<spring:url value="/equipo/save" var="saveURL"></spring:url>

	<form:form action="${saveURL}" method="POST" modelAttribute="equipo">
	
		<form:hidden path="id" />
		<table border="1">
			<tr>
				<td>Nombre</td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td>Numero de integrantes</td>
				<td><form:input path="num_integrantes" /></td>
			</tr>

			<tr>
				<td colspan="2"><button type="submit">Guardar</button></td>

			</tr>
		</table>

	</form:form>
</body>
</html>