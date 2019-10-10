<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deportistas</title>
</head>
<body>
	<br>
	<spring:url value="/deportista/add" var="addUrl"></spring:url>
	<a href="${addUrl}">Nuevo</a>
	<hr>
	<table border="1">
		<tr>
			<th>Código</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Fecha de nacimiento</th>
			<th>Peso</th>
			<th colspan="2">Acciones</th>
		</tr>
		<c:forEach items="${list}" var="dep">
			<tr>
				<td>${dep.id}</td>
				<td>${dep.nombre}</td>
				<td>${dep.apellido}</td>
				<td>${dep.fechaNacimiento}</td>
				<td>${dep.peso}</td>
				<td>
					<spring:url value="/deportista/update/${dep.id }" var="updateURL"/> 
					<a href="${updateURL }">Actualizar</a>
				</td>
				<td>
					<spring:url value="/deportista/delete/${dep.id }" var="deleteURL" /> 
					<a href="${deleteURL }">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>