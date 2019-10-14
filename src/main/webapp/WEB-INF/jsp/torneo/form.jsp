<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
				<td>Disciplina</td>
				<td><form:select path="idDisciplina">
					<c:forEach items="${dropDownListDis }" var="listDis">
						<form:option value="${listDis.id }" label="${listDis.nombre }"></form:option>
					</c:forEach>
					</form:select></td>
			</tr>
			<tr>
				<td>Encargado</td>
				<td><form:select path="idDisciplina">
					<c:forEach items="${dropDownListDis }" var="listDis">
						<form:option value="${listDis.id }" label="${listDis.nombre }"></form:option>
					</c:forEach>
					</form:select></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">Guardar</button></td>
			</tr>
		</table>

	</form:form>
</body>
</html>