<%--
  Created by IntelliJ IDEA.
  User: Dagi
  Date: 03.10.2020
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>JavaBeans</title>
</head>
<body>
<jsp:useBean id="user" class="model.SuperUser" scope="session"/>
<jsp:setProperty name="user" property="name" value="Michał"/>
<jsp:setProperty name="user" property="age" value="44"/>
<jsp:forward page="forwardedJavaBeans.jsp"></jsp:forward>
</body>
</html>
