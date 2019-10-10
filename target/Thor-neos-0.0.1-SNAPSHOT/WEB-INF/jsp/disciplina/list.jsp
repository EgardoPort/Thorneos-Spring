<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Disciplinas</title>
</head>
<body>
	<br>
	<spring:url value="/disciplina/add" var="addUrl"></spring:url>
	<a href="${addUrl}">Agregar Disciplina</a>
	<hr>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th colspan="2">Acciones</th>
		</tr>
		<c:forEach items="${list}" var="dis">
			<tr>
				<td>${dis.id}</td>
				<td>${dis.nombre}</td>
				<td>
					<spring:url value="/disciplina/update/${dis.id}" var="updateURL"></spring:url>
					<a href="${updateURL}">Actualizar</a>
				</td>
				<td>
					<spring:url value="/disciplina/delete/${dis.id}" var="deleteURL"></spring:url>
					<a href="${deleteURL}">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>