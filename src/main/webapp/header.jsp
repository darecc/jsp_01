<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%
     String name = "";
     name = request.getParameter("name");
 %>
<div style="vertical-align: top; background-color: antiquewhite;">
    <h2>Witaj: <%= session.getAttribute("name")%> na mojej stronie</h2>
    <p>życzę miłej pracy</p>
</div>
</body>
</html>
