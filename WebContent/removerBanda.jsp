<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Deletar Banda</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<jsp:include page="cabecalho.jsp"></jsp:include>
	
	<div class="formulario2">
		<form class="form-horizontal" role="form" action="removeBanda" accept-charset="iso-8859-1, utf-8" method="get">
			<div class="form-group">
				<label class="control-label col-sm-2">Banda</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="nomeDaBanda" id="nome" placeholder="informe o nome da banda" required />
				</div>					
			</div>
				
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-9">
					<button type="submit" class="btn btn-primary btn-block">Deletar</button>
				</div>					
			</div>
			
		</form>
	</div>
	
</body>
</html>