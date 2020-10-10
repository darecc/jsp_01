<%@ page language="java" pageEncoding="utf-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8"/>
  <title>Strona obsługująca błąd</title>
</head>
<body>
<h1>Wystąpił błąd na stronie:</h1>
<div style="color: #ff0000;"> Komunikat:
  <%= exception.toString() %>
</div>
</body>
</html>

