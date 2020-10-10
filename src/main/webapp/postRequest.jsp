<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Metoda POST</title>
</head>
<body>
<h2>Przekazanie danych metodą POST</h2>
<form action = "/jsp_01_war/postResponse.jsp" method="post">
    Pytanie:<input type="text"  name="query" value="..."/><br/>
    Kraj:   <input type="'text" name = "country" value="podaj kraj"/><br/>
    Sortuj: <select name="sort">
                <option value="asc">rosnąco</option>
                <option value="'des">malejąco</option>
            </select>
    <input type="submit" value="wyślij"/>
</form>
</body>
</html>
