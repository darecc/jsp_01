<%--
 testowanie znacznika x:forEach
--%>
<%@ page contentType="text/html" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>JSTL:xml:forEach + out</title>
</head>
<body>
<h2>Produkty:</h2>
<c:set var="xmltext">
    <products>
        <product>
            <name>mleko</name>
            <price>3.53</price>
            <category>mleczne</category>
        </product>
        <product>
            <name>ser</name>
            <price>4.65</price>
            <category>mleczne</category>
        </product>
        <product>
            <name>chleb</name>
            <price>2.40</price>
            <category>pieczywo</category>
        </product>
        <product>
            <name>masło</name>
            <price>6.45</price>
            <category>mleczne</category>
        </product>
    </products>
</c:set>
<x:parse xml="${xmltext}" var="wyniki"/>
<ul>
    <x:forEach select="$wyniki/products/product/name" var="item">
        <li>
            Nazwa towaru: <x:out select = "$item"/>
        </li>
    </x:forEach>
</ul>
<ul>
    <x:forEach select="$wyniki/products/product" var="item1">
        <li>
            Cena: <x:out select ="$item1/name"/>
            <x:out select="$item1/price"/>
        </li>
    </x:forEach>
</ul>
<h3>Wyświetlanie produktów droższych od 2,50 zł:</h3>
    <table border="1">
<x:forEach select="$wyniki/products/product" var = "item">
    <x:if select = "price > 2.5">
        <tr>
            <td>
                <x:out select="name"/>
            </td>
            <td>
                <x:out select="price"/>
            </td>
        </tr>
    </x:if>
    </x:forEach>
</body>
</html>
</table>