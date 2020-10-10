<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
<head>
  <title>JSTL::functions:: substring</title>
  <meta charset="utf-8"/>
</head>
<body>
    <%
       String text = "Ala ma kota a kot ma cztery łapki";
    %>
  <h2>Funkcje: substring i substringAfter: przykład</h2>
  <c:set var = "napis" value = "<%= text %>"/>
  <p>Cały napis: <c:out value = "${napis}"/></p>
  <p>Substring: <c:out value = "${fn:substring(napis, 4,10)}"/></p>
  <p>Substring after: <c:out value = "${fn:substringAfter(napis, 'cztery')}"/></p>
</body>
</html>