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
	<spring:url value="/disciplina/save" var="saveUrl"></spring:url>
	<form:form action="${saveUrl}" method="POST"
		modelAttribute="disciplina">
		<form:hidden path="id" />
		<table>
			<tr>
				<td>Nombre</td>
				<td><form:input path="nombre"/></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">Guardar</button></td>
			</tr>
		</table>

	</form:form>
</body>
</html>