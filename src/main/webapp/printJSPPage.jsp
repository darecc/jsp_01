<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
  <head>
    <title>Wyświetlenie strony JSP</title>
  </head>
  <body>
  <%
    String url = request.getParameter("page");
    pageContext.setAttribute("strona", url);
  %>
  <c:import var = "data" url = "${strona}"/>
  <c:out value = "${data}"/>
  </body>
</html>
