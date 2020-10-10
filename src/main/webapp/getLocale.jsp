<%@ page language="java" import = "java.io.*,java.util.Locale" %>
<%
    Locale locale = request.getLocale();
    String language = locale.getLanguage();
    String country = locale.getCountry();
    String countryName = locale.getDisplayCountry();
    String name = locale.getDisplayName();
    String tostring = locale.toString();
    String isoCountry = locale.getISO3Country();
%>
<html> <head> <title>Detecting Locale</title> </head>
<body>
<h2>Detecting Locale</h2>
<%
    out.print("Language : " + language + "<br />");
    out.print("Country : " + country + "<br />");
    out.print("Name : " + name + "<br />");
    out.print("Country name : " + countryName + "<br />");
    out.print("toString : " + tostring + "<br />");
    out.print("iso Country: " + isoCountry + "<br />");
%>
</body> </html>

