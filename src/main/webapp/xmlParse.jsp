<%@page language="java" isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>

<html>
<head>
  <title>JSTL x:if Tags</title>
  <meta charset="utf-8"/>
</head>

<body>
<h3>Citizens Info:</h3>
<c:import
        url="citizens.xml"
        var="citizenXML"/>
<ul>
<x:parse var="output" xml="${citizenXML}" />
  <x:forEach var ="item" select="$output/citizens/citizen/firstname">
  <li>>Name: <x:out select = "$item" /></li>
  </x:forEach>
</ul>
</body>
</html>