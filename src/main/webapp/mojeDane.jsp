<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.Period" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wyświetlenie moich danych</title>
    <meta charset="UTF-8"/>
</head>
<body>
<%
    LocalDate data = LocalDate.now();
    LocalDate poczatekRoku = LocalDate.of(LocalDate.now().getYear(),1,1);
    Period period = Period.between(poczatekRoku, data);
    String moje = "Dariusz Ceglarek";
    out.print("<p>Moje dane: " + moje + "</p>");
    int dni = period.getDays() + period.getMonths()*30 + period.getYears()*365;
    out.print("<p>Liczba dni od początku roku: " + dni);
%>
<p>Dane: <%= period.getDays() %></p>
</body>
</html>
