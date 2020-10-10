<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <meta charset="utf-8"/>
    <title>tagLib: core  (znacznik remove)</title>
</head>
<body>
<c:set var = "pensja" scope = "session" value = "${2600*2}"/>
<c:set var = "wiek" scope = "session" value = "33"/>
<c:set var = "nazwisko" scope = "page" value = "Kowalski"/>
<c:set var = "miasto" scope = "request" value = "Poznań"/>
Przed usunięciem: <c:out value = "${pensja}"/><br/>
<c:out value = "${wiek}"/><br/>
<c:out value = "${nazwisko}"/><br/>
<c:out value = "${miasto}"/><br/>
<%
    double x = Math.random();
    out.print("<p>" + x + "</p>");
%>
<c:set var = "losowa" scope = "page" value = "<%= x  %>"/>
<c:out value="${losowa}"/>
<c:if test="${losowa > 0.3}">
    <c:remove var = "pensja" scope="session" />
    <c:out value="Usuwam pensję"/><br/>
</c:if>
<c:remove var = "wiek" />
Po usunięciu: <c:out value = "${pensja}"/><br/>
<c:out value = "${wiek}"/><br/>
<c:out value = "${nazwisko}"/><br/>
<c:out value = "${miasto}"/><br/>
</body> </html>

