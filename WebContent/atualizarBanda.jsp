<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Atualizar Banda</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<jsp:include page="cabecalho.jsp"></jsp:include>

	<div class="container">
		<div class="formulario1">
			<form class="form-horizontal" action="alteraBanda" role="form" method="post">
				<div class="form-group">
					<label class="control-label col-sm-2" for="nome">Nome</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="nome" id="nome" placeholder="informe o nome da banda" required />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="genero">Gênero</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" name="genero" id="genero" placeholder="estilo musical" required />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="qtdMembros">Qtd Membros</label>
					<div class="col-sm-9">
						<input type="number" class="form-control" name="qtdMembros" id="qtdMembros" min="1" placeholder="quantidade de membros" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="login">Telefone</label>
					<div class="col-sm-9">
						<input type="tel" class="form-control" name="telefone" id="telefone" placeholder="insira um nº de telefone" required />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="senha">Email</label>
					<div class="col-sm-9">
						<input type="email" class="form-control" name="email" id="email" placeholder="digite um email" required />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-9">
						<button type="submit" class="btn btn-primary btn-block" id="botao">Atualizar</button>
					</div>
				</div>

			</form>
		</div>
	</div>

</body>
</html>