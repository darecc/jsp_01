<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Przykład c:import</title>
</head>
<body>
    <c:set value="Dariusz" var="name"/>
    <c:set value="Poland" var="country"/>
    <c:import var = "data" url = "/headers.jsp"/>
    <c:out value = "${data}"/>
    <c:import var = "strona" url="https://darkowewymysly.blogspot.com/2019/09/zmiany-klimatyczne-i-realnosc-ich.html"/>
    <c:out value = "${strona}"/>
</body>
</html>