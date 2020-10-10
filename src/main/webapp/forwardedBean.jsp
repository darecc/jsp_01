<%--
  Created by IntelliJ IDEA.
  User: 48605
  Date: 03.10.2020
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <p>Odebranie informacji ze strony bean.jsp:</p>
  <jsp:useBean id="user" class="model.User" scope="session"/>
  <jsp:getProperty name="user" property="name"/>
  <jsp:getProperty name="user" property="password"/>
  </body>
</html>
