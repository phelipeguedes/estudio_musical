<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Banda Não Encontrada</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%@ include file="cabecalho.jsp"%>

	<br/>
	<br/>
	
	<div class="container">
		<h2 id="bandaNaoEncontrada">Banda Não Encontrada! :(</h2>
	</div>
	
	<br/>
	
	<div id="nomeDaBanda">
		<strong>A banda ${nomeDaBanda} não é cadastrada ou foi excluída.</strong>
	</div>
	
	<br/>
	
	<img class="img-responsive" id="bandaNaoEncontrada" alt="banda não encontrada" src="imagens/baquetas2.jpg"/>
	
</body>
</html>