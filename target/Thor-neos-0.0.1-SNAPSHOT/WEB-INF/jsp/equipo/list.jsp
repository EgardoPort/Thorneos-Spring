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
  <spring:url value="/equipo/add" var="addUrl"></spring:url>
  <a href="${addUrl}">Agregar equipo</a>
  <hr>
  <table border="1">
  <tr>
    
    <th>Nombre</th>
    <th>Numero de integrantes</th>
    <th colspan="2">Opciones</th>
    
  </tr>
  
   <c:forEach items="${list}" var="equ">
  <tr>
    
    <td>${equ.nombre}</td>
    <td>${equ.num_integrantes}</td>
    <td>
	    <spring:url value="/equipo/update/${equ.id}" var="updateURL"/>
	     <a href="${updateURL}">Actualizar</a>
	 </td>
	 <td>
	    <spring:url value="/equipo/delete/${equ.id}" var="deleteURL"/>
	    <a href="${deleteURL}">Eliminar</a>
	    	
	 </td>
  </tr>
  
   </c:forEach>
</table>
</body>
</html>