<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- zeby zobaczyc wyrazenia EL trzeba wlaczyc ponizsza dyrektywe -->
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>Lista użytkowników</title>
</head>
<body>
<h2>Aktualna lista użytkowników:</h2>
       Liczba: <c:out value="${requestScope.lista.size()}"/>
    <table style="border: 1px solid;">
        <th>User</th>
        <th>Pass</th>
        <h2>Obliczenia: ${1*10+20}</h2>
        <%
            Iterator<String>  it = session.getAttributeNames().asIterator();
            out.print("<tr><td>Atrybuty:</td></tr>");
            while(it.hasNext()) {
                String atrybut = it.next();
                out.print("<tr>");
                out.print("<td>" + atrybut + "</td>");
                if (atrybut.compareTo("lista") == 0) {
                    List<User> lista = (List<User>)request.getSession().getAttribute(atrybut);
                    out.print("<td>Liczba użytkowników: " + lista.size() + "</td>");
                    for(User user : lista) {
                        out.print("<tr><td>" + user.getName() + "</td><td>" + user.getPassword() + "</td></tr>");
                    }
                }
                out.print("</tr>");
            }
        %>
        <c:forEach items="${requestScope.lista}" var = "User">
            <tr>
                <td>${user.getName()}</td>
                <td>${user.getPassword()}</td>
            </tr>
        </c:forEach>
    </table>
<%
    //var zm = request.getHeader("connection");
   // out.println(zm);
    out.print("<h3>Application:</h3>");
    out.print("Server info:" + application.getServerInfo() + "<br/>");
    out.print("Servlet context name: " + application.getServletContextName() + "<br/>");
    Iterator<String> it1 = application.getAttributeNames().asIterator();
    while (it1.hasNext()) {
        String attr = it1.next();
        out.print(attr + " : ");
        out.print(request.getHeader(attr) + "<br/>");
    }
    out.print("<h3>Config</h3>");
    out.print("Servlet name: " + config.getServletName());
    out.print("<h3>Header:</h3>");
    Iterator<String> it2 = request.getHeaderNames().asIterator();
    while (it2.hasNext()) {
        String head = it2.next();
        out.print(head + " : ");
        out.print(request.getHeader(head) + "<br/>");
    }
%>
</body>
</html>