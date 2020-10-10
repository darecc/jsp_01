<%@ page import="java.util.*" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<%
    Map<String, Integer> mapa = new HashMap<String, Integer>();
    mapa.put("nazwa", 1);
    out.println(mapa.get("nazwa"));
    pageContext.setAttribute("mapa", mapa);
%>
<c:set value="3" target="${mapa}" property="name" />
<%
    out.println("<p>Nazwa:" + mapa.get("nazwa") +"</p>");
    out.println("<p>Name:" + mapa.get("name") +"</p>");
%>
</body>
</html>