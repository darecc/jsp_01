<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Pola figur</title>
</head>
<body>
<%
    double bok1 = 10 + Math.random() * 5;
    double bok2 = 15 + Math.random() * 5;
    double promien = 32.6 + Math.random() * 10;
    double wysokosc = 10.5;
    double poleWalca = promien * promien * Math.PI * 2 + (promien * Math.PI * 2 * wysokosc);
%>
</body>
<p>Prostokąt : <%= bok1 %>, <%= bok2%></p>
<p>Pole prostokąta :  <%= bok1 * bok2 %></p>
<p>Pole pow. okręgu: <%= promien *promien * Math.PI %></p>
<p>Pole pow. walca : <%= poleWalca %></p>
</html>
