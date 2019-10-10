<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
  <spring:url value="/escenario/add" var="addUrl"></spring:url>
  <a href="${addUrl}">Agregar Escenario</a>
  <hr>
  <table border="1">
  <tr>
    
    <th>Direccion</th>
    <th>Nombre</th>
    <th>Hora Reserva</th>
    <th>Fecha de Reserva</th>
    <th>Estado</th>
    <th colspan="2">Opciones</th>
    
  </tr>
  
   <c:forEach items="${list}" var="es">
  <tr>
    
    <td>${es.direccion}</td>
    <td>${es.nombre}</td>
    <td>${es.hora_reserva}</td>
    <td>${es.fecha_reserva}</td>
    <td>${es.estadoesce}</td>
    <td>
	    <spring:url value="/escenario/update/${es.id}" var="updateURL"/>
	     <a href="${updateURL}">Actualizar</a>
	 </td>
	 <td>
	    <spring:url value="/escenario/delete/${es.id}" var="deleteURL"/>
	    <a href="${deleteURL}">Eliminar</a>
	    	
	 </td>
  </tr>
  
   </c:forEach>
</table>
</body>
</html>