<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<title>Controle de Bandas</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
	
	<jsp:include page="cabecalho.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>		
			<a class="navbar-brand" href="#">#</a>
		</div>	
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav nav-tabs nav-pills"  role="tablist">
				<li class="active"><a href="#">Ações</a></li>
				<li><a href="cadastrarBanda.jsp">Cadastrar Banda</a></li>
				<li><a href="pesquisarBanda.jsp">Pesquisar Banda</a></li>
				<li><a href="atualizarBanda.jsp">Atualizar Banda</a></li>
				<li><a href="removerBanda.jsp">Remover Banda</a></li>
				<li><a href="bandasCadastradas.jsp">Bandas Cadastradas</a></li>
			</ul>
		</div>													
	</div>	
	
</body>
</html>