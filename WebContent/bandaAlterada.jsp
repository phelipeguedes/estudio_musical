<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="utf-8" />
<title>Banda Atualizada</title>
</head>
<body>

	<%@ include file="cabecalho.jsp"%>

	<strong>A banda ${param.nome} foi alterada com sucesso!</strong>

	<br/>
	<br/>

	<table class="table table-bordered table-striped table-hover table-condensed">
		<thead>
			<tr class="info">
				<th>Nome</th>
				<th>Gênero</th>
				<th>Quantidade de Membros</th>
				<th>Telefone</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${param.nome}</td>
				<td>${param.genero}</td>
				<td>${param.qtdMembros}</td>
				<td>${param.telefone}</td>
				<td>${param.email}</td>
			</tr>
		</tbody>
	</table>

</body>
</html>