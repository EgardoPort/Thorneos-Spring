<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<spring:url value="/persona/add" var="addUrl"></spring:url>
	<a href="${adUrl}">Agregar</a>
	<hr>
	<table>
		<tr>
			<th>Código</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Teléfono</th>
			<th>DUI</th>
			<th>Fecha de Nacimiento</th>
			<th>Dirección</th>
			<th>Usuario</th>
			<th>Tipo de usuario</th>
			<th colspan="2">Acciones</th>
		</tr>
		<c:forEach items="${list}" var="per">
			<tr>
				<td>${per.id}</td>
				<td>${per.nombres}</td>
				<td>${per.apellidos}</td>
				<td>${per.telefono}</td>
				<td>${per.dui}</td>
				<td>${per.fechaNacimiento}</td>
				<td>${per.direccion}</td>
				<td>${per.usuario}</td>
				<td>${per.tipo_Usuario}</td>
				<td>
					<spring:url value="/persona/update/${per.id}" var="updateUrl"></spring:url>
					<a href="${updateUrl}">Actualizar</a>
				</td>
				<td>
					<spring:url value="/persona/delete/${per.id}" var="deleteUrl"></spring:url>
					<a href="${deleteUrl}"></a>
				</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>