<%--
 Test funkcji length + substring
--%>
<%@ page language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
<head>
    <title>JSTL::functions:: length</title>
    <meta charset="utf-8"/>
</head>
<body>
<%
    String text = "polskie koty mają na dachy monopol";
%>
<h2>Funkcje: length + substring</h2>
<c:set var = "napis" value = "<%= text %>"/>
<c:out value="@${napis}@"/><br/>
<c:set var="len" value="${fn:length(napis)}"/>
<c:set var = "last" value="${fn:substring(napis, len-3, len)}"/>
<p>Ostatnie 3 znaki napisu: <c:out value="$last}"/></p>
</body>
</html>


