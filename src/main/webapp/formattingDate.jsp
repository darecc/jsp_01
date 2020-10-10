<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.LocalDate" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>tagLib: Formatowanie daty i czasu</title>
</head>
<body>
<h3>Date format:</h3>
<%
    LocalDateTime dt = LocalDateTime.now();
    Date date = new Date();
    LocalDate data = LocalDate.of(2020,1,12);
    response.setIntHeader("Refresh", 3);
%>
<c:set var = "myDate" value = "<%=date %>" />
<c:out value = "Dzisiejsza data" default="n"/>
<%-- <fmt:parseDate value = "${myDate}" var = "md" pattern = "dd-MM-yyyy" /> --%>
<p>Sam czas: <fmt:formatDate type = "time" value = "${myDate}" /></p>

<p>Sama data: <fmt:formatDate type = "date" value = "${myDate}" /></p>

<p>Data i czas: <fmt:formatDate type = "both" value = "${myDate}" /></p>


<p>Data (short) i czas (short): <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${myDate}" /></p>

<p>Data (medium) i czas (medium): <fmt:formatDate type = "both" dateStyle = "medium" timeStyle = "medium" value = "${myDate}" /></p>

<p>Data o wzorcu DD-MM-YYYY: <fmt:formatDate pattern = "dd-MM-yyyy" value = "${myDate}" /></p>
</body>
</html>
