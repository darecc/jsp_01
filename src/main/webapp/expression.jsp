<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html/>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wyrażenia EL</title>
</head>
<body>
<b>Wynik dodania 1 do 2 = </b>${1 + 2};
<%
    int wiek = 23;
    application.setAttribute("name", "Darek");
    application.setAttribute("age", 23);
%>
<h2>Expression with variable:</h2>
<p>Wiek powiększony o 20: ${wiek+20}</p>
<p>Wiek (age) powiększony o 20: ${applicationScope.age + 20}</p>
<p>Nowa wartość wieku: ${applicationScope.age = 21}</p>
<p>Potwierdzam nowy wiek: ${applicationScope.age}</p>
<strong>Nazwa: ${applicationScope.name}</strong>
</body>
</html>