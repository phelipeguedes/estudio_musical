<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="banda" class="br.com.empresa.modelo.Banda" scope="session"></jsp:useBean>
	
	<jsp:setProperty property="*" name="banda"/>
	
	<jsp:forward page="pesquisaBanda"></jsp:forward>
</body>
</html>