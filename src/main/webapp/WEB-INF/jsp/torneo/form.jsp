<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<spring:url value="/torneo/save" var="${saveURL}"></spring:url>
	<form:form action="${saveURL}" method="POST" modelAttribute="torneo">
		<form:hidden path="id" />
		<table>
			<tr>
				<td>Nombre</td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td>Fecha de inicio</td>
				<td><form:input path="fechaInicio" /></td>
			</tr>
			<tr>
				<td>Fecha fin</td>
				<td><form:input path="fechaFin" /></td>
			</tr>
			<tr>
				<td>Fecha fin</td>
				<td><form:select path="idDisciplina">

					</form:select></td>
			</tr>
		</table>

	</form:form>
</body>
</html>