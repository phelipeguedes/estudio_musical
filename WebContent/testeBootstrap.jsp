<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Teste Bootstrap Com Java EE</title>
<style type="text/css">
.container {
	width: 100%;
}

img {
	width: 700px;
	margin: 50px auto;
}
</style>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h3>Testando Bootstrap com JSP</h3>
		</div>
	</div>

	<nav class="navbar navbar-default">
		<%-- Para fixar a barra no topo usa-se 'navbar-fixed-top' --%>
		<div class="container-fluid">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Estudio do Phelipe</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Página 1<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Página1-1</a></li>
							<li><a href="#">Página1-2</a></li>
							<li><a href="#">Página1-3</a></li>
						</ul></li>
					<li><a href="#">Bandas</a></li>
					<li><a href="#">Instrumentos</a></li>
					<li><a href="#">Preços</a></li>
				</ul>
			</div>

		</div>
	</nav>

	<img alt="Home studio do Phelipe" src="imagens/estudio-foto.jpg"
		class="img-responsive">

</body>
</html>