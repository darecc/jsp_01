<%--
 znaczniki x:choose oraz x:when
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<html>
  <head>
    <title>Znaczniki x:choose oraz x:when</title>
    <meta charset="utf-8"/>
  </head>
  <body>
  <h3>Citizens : zarobki większe od 5000 lub mniejsze</h3>
  <c:import
          url="citizens.xml"
          var="citizenXML"/>
  <table border="1">
    <x:parse var="wyniki" xml="${citizenXML}" />
    <x:forEach select="$wyniki/citizens/citizen" var ="item">
      <tr>
      <x:choose>
        <x:when select = "salary > 9000">
          <td><x:out select = "firstname"/> <x:out select = "lastname"/></td>
          <td><x:out select = "role"/></td>
          <td><b><x:out select="salary"/></b></td>
        </x:when>
        <x:otherwise>
          <td><x:out select="firstname"/> <x:out select="lastname" /></td>
          <x:choose>
            <x:when select="role = 'Employee'">
              <td style="color: darkgreen"><x:out select="role"/></td>
            </x:when>
            <x:otherwise>
              <td style="color: navy;font-style: italic;font-weight: bold"><x:out select="role"/></td>
            </x:otherwise>
          </x:choose>
          <td><x:out select="salary" /></td>
        </x:otherwise>
      </x:choose>
      </tr>
    </x:forEach>
  </table>
  </body>
  </html>
  </body>
</html>