<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- zeby zobaczyc wyrazenia EL trzeba wlaczyc ponizsza dyrektywe -->
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>tagLib: Formatowanie</title>
</head>
<body>
<h3>Number Format:</h3>
<c:set var ="liczba" value = "2350.7186" />

<p>Liczba jako waluta: <fmt:formatNumber value = "${liczba}"
                                           type = "currency"/></p>

<p>Liczba z 6 cyframi: <fmt:formatNumber type = "number"
                                           maxIntegerDigits = "6" value = "${liczba}" /></p>
<p>Liczba z 3 cyframi ułamka: <fmt:formatNumber type = "number"
                                           maxFractionDigits = "3" value = "${liczba}" /></p>

<p>Liczba (bez grupowania): <fmt:formatNumber type = "number"
                                           groupingUsed = "false" value = "${liczba}" /></p>

<p>Liczba procentowo: <fmt:formatNumber type = "percent"
                                           maxIntegerDigits="6" value = "${liczba}" /></p>

<p>Liczba procentowo (minFraction): <fmt:formatNumber type = "percent"
                                           minFractionDigits = "10" value = "${liczba}" /></p>

<p>Liczba procentowo (maxIntDig=5): <fmt:formatNumber type = "percent"
                                           maxIntegerDigits = "5" value = "${liczba}" /></p>

<p>Liczba z określonym wzorcem: <fmt:formatNumber type = "number"
                                           pattern = "######.## ABC" value = "${liczba}" /></p>

<p>Walutowo w formacie USA :
    <fmt:setLocale value = "en_US"/>
    <fmt:formatNumber value = "${liczba}" type = "currency"/>
</p>
<p>Walutowo w formacie Polska :
    <fmt:setLocale value = "pl_PL"/>
    <fmt:formatNumber value = "${liczba}" type = "currency"/></p>
<p>Walutowo w formacie Niemcy :
    <fmt:setLocale value = "de_DE"/>
    <fmt:formatNumber value = "${liczba}" type = "currency"/>
</body>
</html>
