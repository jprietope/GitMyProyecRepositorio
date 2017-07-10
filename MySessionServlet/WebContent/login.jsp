<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>

<html lang="en">
<jsp:include page="head.jsp"></jsp:include>

<c:set var="errorclass" value="" />

<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<section class="container">
		<h1>Formulario de login</h1>
		<!-- esto es un comentario -->
		<c:if test="${not empty mierror}">
			<div class="alert alert-danger">${mierror}</div>
		</c:if>
		<form action="login" method="POST">
			<input type="email" name="email" class="${errorclass}" placeholder="Email"> 
			<input
				type="password" name="password" class="${errorclass}" placeholder="Contraseña">
			<button>Enviar</button>
		</form>
	</section>
	<!-- comment -->
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>