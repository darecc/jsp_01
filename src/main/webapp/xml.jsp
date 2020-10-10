<%--
 znacznik xml x:forEach
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml"%>
<html>
<head>
    <title>JSTL x:foreach</title>
    <meta charset="utf-8"/>
</head>
    <body>
        <h3>Books Info:</h3>
        <c:set var="xmltext">
        <?xml version="1.0"?>
        <books>
            <book>
                <name>Dziady 3</name>
                <author>Adam Mickiewicz</author>
                <price>64</price>
            </book>
            <book>
                <name>Balladyna</name>
                <author>Julian Słowacki</author>
                <price>46</price>
            </book>
            <book>
                <name>Opowiadania</name>
                <author>Sławomir Mrożek</author>
                <price>44</price>
            </book>
        </books>
        </c:set>
        <ul>
        <x:parse xml="${xmltext}" var="output"/>
        <x:forEach select="$output/books/book/name" var="item">
           <li>
              Book Name: <x:out select="$item"/>
           </li>
        </x:forEach>
        </ul>
    </body>
</html>