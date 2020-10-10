<%@ page language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
<head>
  <title>JSTL functions: split + join</title>
  <meta charset="utf-8"/>
</head>
<body>
<c:set var = "string1" value = "Ala ma kota ale nie ma psa"/>
<c:set var = "string2" value = "${fn:split(string1, ' ')}" />
<c:set var = "string3" value = "${fn:join(string2, '-')}" />
<p>Pierwotny napis: <c:out value="${string1}"/></p>
<p>Połączony napis : ${string3}</p>
<h3>Przejście przez tzw. tokeny w pętli</h3>
<c:forTokens items="${string3}" delims="-" var="name">
     <c:out value="${name}"/><p>
  </c:forTokens>
</body>
</html>

