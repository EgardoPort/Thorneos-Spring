<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Torneos</title>
</head>
<body>
	<br>
	<spring:url value="/torneo/add" var="addUrl"></spring:url>
	<a href="${addUrl }">Nuevo</a>
	<hr>
	<table border="1">
		<tr>
			<th>Código</th>
			<th>Nombre</th>
			<th>Fecha inicio</th>
			<th>Fecha fin</th>
			<th>Disciplina</th>
			<th>Encargado</th>
		</tr>
		<c:forEach items="${list }" var="tor">
			<tr>
				<td>${tor.id}</td>
				<td>${tor.nombre}</td>
				<td>${tor.fechaInicio}</td>
				<td>${tor.fechaFin}</td>
				<td>${tor.idDisciplina}</td>
				<td>${tor.idEncargado}</td>
				<td>
					<spring:url value="/torneo/update/${tor.id }" var="updateURL" /> 
					<a href="${updateURL }">Actualizar</a>
				</td>
				<td>
					<spring:url value="/torneo/delete/${tor.id }" var="deleteURL" /> 
					<a href="${deleteURL }">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>