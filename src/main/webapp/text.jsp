<%--
Znacznik akcji : text
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<html>
<head> <title>Znacznik akcji: text</title></head>
<body>
<%
    application.setAttribute("var1", "zdrowie");
    application.setAttribute("var2", 4);
%>
<jsp:text> Litwo! Ojczyzno moja. Ty jesteś jak ${var1} </jsp:text><br/>
<jsp:text>
    1 warunek logiczny: ${var2 > 3}.
    2 warunek logiczny: ${var2 lt 3}
    3 jak sformatować tekst z przejściem do nowej linii
</jsp:text>
</body>
</html>

