<%--
 Testowanie paczki zasobów (resource bunlde) pt. MusicBand
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<html>
<head>
    <title>tagLib::format bundle</title>
</head>
<body>
<h2>Znacznik bundle w JSTL::format</h2>
<fmt:bundle basename = "model.MusicBand" prefix = "band.">
    <fmt:message key = "one"/><br/>
    <fmt:message key = "two"/><br/>
    <fmt:message key = "three"/><br/>
    <fmt:message key = "four"/><br/>
    <fmt:message key = "five"/><br/>
</fmt:bundle>
</body>
</html>
