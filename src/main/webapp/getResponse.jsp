<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Odebranie danych przekazanych metodą GET</title>
</head>
<body>
<h2>Odebrane dane:</h2>
<%
     String query   = request.getParameter("query");
     String country = request.getParameter("country");
     out.print("<p> query = "   + query   + "</p>");
     out.print("<p> country = " + country + "</p>");
%>
</body>
</html>
