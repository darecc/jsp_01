<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.net.http.HttpRequest" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista użytkowników</title>
</head>
<body>
<h2>Lista użytkowników</h2>
<%
    List<User> list = new ArrayList<User>();
    User u1 = new User("Jan", "nowak123");
    User u2 = new User("Anna", "karenina123");
    User u3 = new User("John", "john123");
    User u4 = new User("Jadwiga", "jadwisia");
    User u5 = new User("Karol", "karolek$");
    list.addAll(Arrays.asList(u1,u2,u3, u4, u5));
    // status 301 = permanent page redirect
    response.setStatus(301);
    response.setHeader("Connection", "new");
    System.out.println(list.size());
    session.setAttribute("lista",  list);
    response.sendRedirect("display.jsp");
%>
</body>
</html>
