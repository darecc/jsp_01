<%@ page import="model.User, java.security.MessageDigest" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<html>
<body>
<h2>Hello from SD Academy</h2>
<%
    User user1 = new User();
    user1.setName("Janusz");
    user1.setPassword("abcd");
    User user2 = new User();
    user2.setName("Anna");
    user2.setPassword("bcd");
%>
User name: <%=user1.getName()%><br/>
Password : <%=user1.getPassword()%>
<%
    Cookie cookie1 = new Cookie("user1", user1.getName());
    Cookie cookie2 = new Cookie("user2", user2.getName());
    Cookie cookie3 = new Cookie(user2.getName(), user2.getPassword());
    response.addCookie(cookie1);
    response.addCookie(cookie2);
    response.addCookie(cookie3);
    //region zamiana hasła na MD5
    String password = "strasznie trudne hasło";
    MessageDigest md = MessageDigest.getInstance("MD5");
    byte[] hashInBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));

    StringBuilder sb = new StringBuilder();
    for (byte b : hashInBytes) {
        sb.append(String.format("%02x", b));
    }
    response.addCookie(new Cookie("MD5", sb.toString().toLowerCase()));
    //endregion
    //przekierowanie
    response.sendRedirect("/jsp_01/odbior.jsp");
%>
</body>
</html>
