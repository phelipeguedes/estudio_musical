<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Buscar Banda</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<%-- Página que faz a consulta no banco em busca de uma determinada banda --%>

	<%-- cabeçalho presente em algumas páginas --%>

	<jsp:include page="cabecalho.jsp"></jsp:include>

	<section>
		<div class="formulario2">
			<form class="form-horizontal" action="pesquisaBanda" accept-charset="iso-8859-1, utf-8" role="form" method="get">

				<div class="form-group">
					<label class="control-label col-sm-2" for="nome">Banda</label>

					<div class="col-sm-9">
						<input type="text" class="form-control" name="nomeDaBanda" id="nome" placeholder="informe o nome da banda" required />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-9">
						<button type="submit" class="btn btn-primary btn-block" id="botao">Pesquisar</button>
					</div>
				</div>

			</form>
		</div>
	</section>

</body>
</html>