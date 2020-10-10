<%--
Przykład strony z dołączaną treścią
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Strona </title>
</head>
<body>
<%
    session.setAttribute("name", "Dariusz");
%>
<%@include file="/header.jsp"%>
<h2>Tekst po części włączonej</h2>

</body>
</html>
