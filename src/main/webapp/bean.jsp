<%--
  Test setProperty i getProperty
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBean w JSP</title>
</head>
<body>
   <h2>Użycie JavaBeans w JSP</h2>
    <jsp:useBean id = "user" class = "model.User" scope="session"/>
    <jsp:setProperty name = "user"  property = "name"
                     value = "Dariusz" />
   <jsp:setProperty name = "user"  property = "password"
                    value = "abc2020" />
    <p>Odebranie wartości:</p>
    <jsp:getProperty name = "user" property = "name" />
    <jsp:getProperty name = "user" property = "password" />
<jsp:forward page="forwardedBean.jsp"></jsp:forward>
</body>
</html>