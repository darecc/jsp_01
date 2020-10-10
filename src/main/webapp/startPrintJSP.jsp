<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Wyświetlenie strony JSP</title>
  </head>
  <body>
  <%
    response.sendRedirect("/jsp_01/printJSPPage.jsp?page=parseNumb.jsp");
  %>
  </body>
</html>
