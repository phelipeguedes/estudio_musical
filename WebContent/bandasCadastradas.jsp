<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.empresa.modelo.*"%>
<%@ page import="br.com.empresa.dao.*"%>
<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Bandas Cadastradas</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>

<body>

	<jsp:useBean id="dao" class="br.com.empresa.dao.BandaDao" />

	<div class="container">
		<div class="table-responsive">
			<table
				class="table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr class="danger">
						<th>Id</th>
						<th>Banda</th>
						<th>Gênero</th>
						<th>Quantidade de Membros</th>
						<th>Telefone</th>
						<th>Email</th>
					</tr>
				</thead>
				<c:forEach var="banda" items="${dao.lista}">
					<tbody>
						<tr class="info">
							<td>${banda.id}</td>
							<td>${banda.nome}</td>
							<td>${banda.genero}</td>
							<td>${banda.qtdMembros}</td>
							<td>${banda.telefone}</td>
							<td>${banda.email}</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		<a href="home.jsp"><button type="button" class="btn btn-primary">Página	Inicial</button></a>
	</div>

</body>
</html>