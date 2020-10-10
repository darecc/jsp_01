<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Pierwsza strona</title>
    <meta charset="utf-8"/>
  </head>
  <body>
  <p>Tekst na stronie 1, do którego doklejana jest zawartość strony 'date.jsp'</p>

  <jsp:include page="date.jsp" flush= "true"/>
  </body>
</html>
