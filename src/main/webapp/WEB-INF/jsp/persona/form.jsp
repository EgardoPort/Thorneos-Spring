<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar</title>
</head>
<body>
	<br>
	<spring:url value="/persona/save" var="saveURL"></spring:url>
	<form:form action="${saveURL}" method="POST" modelAttribute="persona">
		<form:hidden path="id" />
		<table>
			<tr>
				<td>Nombre</td>
				<td><form:input path="nombres" /></td>
			</tr>
			<tr>
				<td>Apellido</td>
				<td><form:input path="apellidos" /></td>
			</tr>
			<tr>
				<td>Teléfono</td>
				<td><form:input path="telefono" /></td>
			</tr>
			<tr>
				<td>DUI</td>
				<td><form:input path="dui" /></td>
			</tr>
			<tr>
				<td>Fecha de Nacimiento</td>
				<td><form:input path="fechaNacimiento" /></td>
			</tr>
			<tr>
				<td>Dirección</td>
				<td><form:input path="direccion" /></td>
			</tr>
			<tr>
				<td>Usuario</td>
				<td><form:input path="usuario" /></td>
			</tr>
			<tr>
				<td>Contraseña</td>
				<td><form:input path="clave" /></td>
			</tr>
			<tr>
				<td>Tipo de usuario</td>
				<td><form:select path="tipoUsuario">
						<form:option value="Administrador">Administrador</form:option>
						<form:option value="Encargado">Encargado</form:option>
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