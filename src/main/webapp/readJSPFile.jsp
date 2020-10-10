<%@ page import="java.net.URL" %>
<%@ page import="java.io.*" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Czytanie pliku</title>
    <meta charset="UTF-8"/>
    <style>
      div {
        background-color: aliceblue;
        width: 90%;
        padding: 10px;
        border: 1px solid #ccc;
      }
    </style>
  </head>
  <body>
  <%
    String plik = request.getParameter("file");
    ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
    URL url1 = classLoader.getResource("");
    String fileURL = url1.getPath() + "/../../" + plik;
    File file = new File(fileURL);
    int nr = fileURL.lastIndexOf("/") + 1;
    String nazwaPliku = fileURL.substring(nr);
    out.print("<h3 style=\"color:navy;\">Plik: " + nazwaPliku + "</h3>");
    out.print("<p>&nbsp;</p><div>");
    ClassLoader cl = this.getClass().getClassLoader();
    InputStream ins = cl.getResourceAsStream(plik);
    FileInputStream fis = new FileInputStream(file);
    InputStreamReader isr = new InputStreamReader(fis, StandardCharsets.UTF_8);
    try {
      BufferedReader buf = new BufferedReader(isr);
      String linia = "";
      while((linia = buf.readLine()) != null) {
        String p = linia.trim();
        System.out.println(p);
        if (p.contains("<"))
          p = p.replace("<", "&lt;");
        if (p.contains(">"))
          p = p.replace("<", "&gt;");
        if (p.equals("<p>") || p.equals("</p>"))
          out.print(p);
        else
          out.print("<p>" + p + "</p>");
      }
      buf.close();
    }
    catch(FileNotFoundException fnfe) {
      System.out.println(fnfe.getMessage());
    }
    catch(IOException iex) {
      System.out.println(iex.getMessage());
    }
  %>
  </div>
  </body>
</html>
