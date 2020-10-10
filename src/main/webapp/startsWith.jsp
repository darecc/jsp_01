<%--
 Test funkcji startsWith i endsWith
--%>
<%@ page language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
<head>
    <title>JSTL::functions:: startsWith, endsWith</title>
    <meta charset="utf-8"/>
</head>
<body>
<%
    String text = "polskie koty mają na dachy monopol";
%>
<h2>Funkcje: startsWith + endsWith</h2>
<c:set var = "napis1" value = "<%= text %>"/>
<c:set var = "napis2" value = "napis który kończy się na 123"/>
<c:out value="@${napis1}@"/><br/>
<c:out value="@${napis2}@"/><br/>
<c:if test = "${fn:startsWith(napis1,'po')}">
    <p>Zaczyna się na 'po'</p>
</c:if>
<c:choose>
<c:when test = "${fn:endsWith(napis2,'123')}">
    <p>Kończy się na '123'</p>
</c:when>
    <c:otherwise>
        <p>Drugi nie kończy się na '123'?</p>
        <c:out value="@${fn:substringAfter(napis2, 'się')}@"/>
    </c:otherwise>
</c:choose>
<c:if test = "${fn:startsWith(napis1,'po') or fn:endsWith(napis2, '123')}">
    <p>Zaczyna się na 'po' i kończy się na '123'</p>
</c:if>
</body>
</html>

