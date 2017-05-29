<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<h1>Hola ${idUsuario}</h1>
		<h2>Lista de Maquillajes</h2>
		
		<table>	
		  <td>
		      <tr>CODIGO</tr><tr>MARCA</tr>
		  </td>	
		<ul>
			<c:forEach var="maq"  items="${listaMaquillajesAMostrar}" varStatus="counter">
				<li>
					<span>${maq.codigo}</span> -
					<span>${maq.marca}</span> -
					<span>${maq.tipo}</span> -
					<span>${maq.precio}EUR</span>
				</li>
			</c:forEach>
		</ul>
		</table>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>