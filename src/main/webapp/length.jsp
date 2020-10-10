<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
  <title>Przykład użycia funkcji JSTL fn:length()</title>
  <meta charset="utf-8"/>

</head>
<body>
    <c:set var="zmienna" scope="session" value="${20480 * 2}"/>
    <c:out value="${zmienna}"/>
    <c:set var ="napis1" value="Ala ma kota a Ola ma psa"/>
    <c:set var ="napis2" value="Roland Garros 2020"/>
    <p>Napis 1: <c:out value="${napis1}"/></p>
    <p>Napis 2: <c:out value="${napis2}"/></p>
    <p>Długość napisu 1: ${fn:length(napis1)}</p>
    <p>Długość napisu 2: ${fn:length(napis2)}</p>
</body>
</html>
