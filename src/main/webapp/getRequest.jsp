<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Strona wysyłająca żądanie</title>
</head>
<body>
<h2>Przekierowanie metodą get</h2>
<%
    response.sendRedirect("/jsp_01/getResponse.jsp?query=city&country=Poland");
%>
</body>
</html>
