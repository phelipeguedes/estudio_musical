<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta charset="utf-8"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body id="corpo-login">
	
	<div class="container">
			<header><h2 id="subtitulo">ESTUDIO VAMO TIRAR UM SOM!</h2></header>
			<section id="secao">
				<div class="formulario_login">				
					<form class="form-horizontal" id="formLogin" role="form">
						<div class="form-group" id="login">
							<label class="control-label col-sm-2" id="lblLogin" for="email">Email</label>
							<div class="col-sm-3">
								<input type="email" class="form-control" name="email" placeholder="Entre com email" />
							</div>
						</div>	
						<div class="form-group" id="login">
							<label class="control-label col-sm-2" id="lblLogin" for="senha">Senha</label>
							<div class="col-sm-3">
								<input type="password" class="form-control" name="senha" id="senha" placeholder="Senha">
							</div>
						</div>
						<div class="form-group" id="login">
							<div class="col-sm-offset-2 col-sm-3">
								<button type="submit" class="btn btn-primary btn-block">Login</button>
							</div>					
						</div>
					</form>
			 	</div>
		 	</section>	
	</div>
	
</body>
</html>