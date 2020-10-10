<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Odebranie: POST</title>
    <meta charset="UTF-8">
</head>
<body>
<h2>Odebranie danych wysłanych metodą POST</h2>
<%
    String query   = request.getParameter("query");
    String country = request.getParameter("country");
    String sortuj  = request.getParameter("sort");
    out.print("<p>Pytanie: " + query + "</p>");
    out.print("<p>Kraj: " + country + "</p>");
    if (sortuj.compareTo("asc") == 0)
        out.print("<p>Sortowanie rosnąco</p>");
    else
        out.print("<p>Sortowanie malejąco</p>");
%>
</body>
</html>
