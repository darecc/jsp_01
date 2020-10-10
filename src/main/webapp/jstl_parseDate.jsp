<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>fmt:parseDate Tag</title>
</head>
<body>
<h2>Witaj u Mickiewicza!</h2>
<p>Litwo! Ojczyzno moja</p>
<c:set var="zmienna" value="${2600*2}"/>
Zmienna:<c:out value="${zmienna}"/>
    <h3>Parsowanie daty:</h3>
    <c:set var="date" value="12-08-2020" />
    <c:out value="Dla daty: ${date}"/>
    <fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy"/>
<p style="color:navy;"><b><c:out value="${parsedDate}" /></b></p>
</body>
</html>