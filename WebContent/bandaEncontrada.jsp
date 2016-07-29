<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="br.com.empresa.modelo.*"%>
<%@page import="java.util.List"%>
<%@page import="br.com.empresa.dao.*"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Banda Encontrada</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<jsp:include page="cabecalho.jsp"></jsp:include>

	<jsp:useBean id="dao" class="br.com.empresa.dao.BandaDao"></jsp:useBean>
	<jsp:useBean id="modelo" class="br.com.empresa.modelo.Banda"></jsp:useBean>
	<h3 id="bandaEncontrada">A banda ${param.nomeDaBanda} foi encontrada! :)</h3>

	<br/>
	<br/>

	<table class="table">
		<tr>
			<th>Id</th>
			<th>Banda</th>
			<th>Gênero</th>
			<th>Quantidade de Membros</th>
			<th>Login</th>
		</tr>

		<c:forEach var="banda" items="${bandaPesquisada}">

			<tr>
				<td>${modelo.id}</td>
				<td>${modelo.nome}</td>
				<td>${banda.genero}</td>
				<td>${banda.qtdMembros}</td>
				<td>${banda.nome}</td>
			</tr>

		</c:forEach>
	</table>


</body>
</html>