<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>JSTL fmt:parseNumber Tag</title>
</head>
<body>
<h3>JSTL: Parsowanie liczb</h3>
<c:set var = "kwota" value = "1203.653" />
<fmt:formatNumber var = "liczba" value = "${kwota}" type = "currency" currencySymbol="$"/>
<c:out value="${liczba}"/>
<fmt:parseNumber var = "doub" type = "number" value = "${kwota}" integerOnly="false"/>
<p>Parsed Number (1) : <c:out value = "${doub}" /></p>
<fmt:parseNumber var = "k" integerOnly = "true" type = "number" value = "${kwota}" />
<p>Parsed Number (2) : <c:out value = "${k}" /></p>
</body>
</html>