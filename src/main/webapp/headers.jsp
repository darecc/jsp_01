<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html/>
<html>
<head>
    <meta charset="UTF-8">
    <title>Headers in JSP</title>
</head>
<body>
<h2>Client Request JSP</h2>
<table border="1">
    <tr>
        <th>header</th><th>header Value(s)</th>
    </tr>
        <%
	HttpSession sess = request.getSession();
	out.print("<tr><td>Session Name is </td><td>" + sess + "</td.></tr>");
	Locale locale = request.getLocale ();
	out.print("<tr><td>Locale Name is</td><td>" + locale + "</td></tr>");
	String path = request.getPathInfo();
	out.print("<tr><td>Path Name is</td><td>" +path+ "</td></tr>");
	String lpath = request.getPathTranslated();
	out.print("<tr><td>Context path is</td><td>" + lpath + "</td></tr>");
	String servername = request.getServerName();
	out.print("<tr><td>Server Name is </td><td>" + servername + "</td></tr>");
	int portname = request.getServerPort();
	out.print("<tr><td>Server Port is </td><td>" + portname + "</td></tr>");
	Enumeration hnames = request.getHeaderNames();
	while(hnames.hasMoreElements()) {
		String paramName = (String)hnames.nextElement();
		out.print ("<tr><td>" + paramName + "</td>" );
		String paramValue = request.getHeader(paramName);
		out.println("<td> " + paramValue + "</td></tr>");
	}
	request.setAttribute("imię", "Dariusz");
	request.setAttribute("kurs", "JSP i servlety");
	out.print("\n===== ATTRIBUTES: =====\n");
	Enumeration atrtribs = request.getAttributeNames();
	while(atrtribs.hasMoreElements()) {
		String paramName = (String)atrtribs.nextElement();
		out.print ("<tr><td>" + paramName + "</td>" );
		Object paramValue = request.getAttribute(paramName);
		out.println("<td> " + paramValue.toString() + "</td></tr>");
	}
%>
