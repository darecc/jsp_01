<%--
  Przykład generowania elementu XML
--%>
<%@page language = "java" contentType = "text/html"%>
<html>
      xmlns:jsp = "http://java.sun.com/JSP/Page">
<head><title>Tworzenie elementu XML</title></head>
<body>
<jsp:element name = "xmlElement">
         <jsp:attribute name = "xmlElementAttr">
            Wartość atrybutu
         </jsp:attribute>

    <jsp:body>
        Zawartość elementu XML (XML body)
    </jsp:body>
</jsp:element>
</body>
</html>
