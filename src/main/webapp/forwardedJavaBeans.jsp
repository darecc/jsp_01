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
<jsp:useBean id="superuser" class="model.SuperUser" scope="session"/>
<jsp:getProperty name="superuser" property="name"/>
<jsp:getProperty name="superuser" property="age"/>
</body>
</html>