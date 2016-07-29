<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cadastrar Banda</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>

	<jsp:include page="cabecalho.jsp" />

	<div class="container">
		<section>
			<div class="formulario1">
				<form class="form-horizontal" action="adicionaBanda" role="form" method="post">
						<div class="form-group">
							<label class="control-label col-sm-2" for="nome">Nome</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="nome" id="nome"placeholder="informe o nome da banda" required />
							</div>
						</div>
	
						<div class="form-group">
							<label class="control-label col-sm-2" for="genero">Gênero</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="genero" id="genero"placeholder="estilo musical" required />
							</div>
						</div>
	
						<div class="form-group">
							<label class="control-label col-sm-2" for="qtdmembros">Qtd Membros</label>
							<div class="col-sm-9">
								<input type="number" class="form-control" name="qtdMembros" id="qtdMembros" placeholder="quantidade de membros" min="1">
							</div>
						</div>
	
						<div class="form-group">
							<label class="control-label col-sm-2" for="email">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email" id="email" placeholder="insira um email p/ contato" required />
							</div>
						</div>
	
						<div class="form-group">
							<label class="control-label col-sm-2" for="telefone">Telefone</label>
							<div class="col-sm-9">
								<input type="tel" class="form-control" name="telefone" id="telefone" placeholder="informe um telefone p/ contato" required />
							</div>
						</div>
	
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-9">
								<button type="submit" class="btn btn-primary btn-block" id="botao">Cadastrar</button>
							</div>
						</div>
					</form>
				</div>			
			</section>			
		</div>
	
</body>
</html>