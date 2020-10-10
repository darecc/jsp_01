<%@ page import="java.util.Locale" %><%--
 testowanie znacznika jstl::format::parseNumber
 <fmt:parseNumber var = "j" integerOnly = "false" type = "currency" parseLocale="${locale}" value = "${kwota}" />
<p>Kwota sparsowana (2) : <c:out value = "${j}" /></p>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head> <title>JSTL fmt:parseNumber</title> </head>
<body>
<h2>Parsowanie liczb:</h2>
<c:set var = "liczba" value = "1234.08" />
<%
    Locale locale = new Locale("us_US");
%>
<fmt:parseNumber var = "i" type = "number" value = "${liczba}"/>
<p>Kwota sparsowana (1) : <c:out value = "${i}" /></p>
<fmt:parseNumber var = "j" type = "number"  integerOnly="false" value = "${liczba} "/>
<p>Kwota sparsowana (2) : <c:out value = "${j}" /></p>
<fmt:parseNumber var = "k" integerOnly = "false" type = "number" value = "${liczba}" parseLocale="${locale}"/>
<p>Liczba sparsowana (3) : <c:out value = "${k}" /></p>
</body>
</html>