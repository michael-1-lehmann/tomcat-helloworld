<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello World</title>
</head>
<body>
<%
java.text.DateFormat dateFormat =
new java.text.SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
%>
<h1>Docker Tomcat Status page</h1>

<ul>
<li>Hostname : <%= java.net.InetAddress.getLocalHost().getHostName() %></li>
<li>Tomcat Version : <%= application.getServerInfo() %></li>
<li>Servlet Specification Version : <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %></li>
<li>JSP version : <%=JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %></li>
<li>Now : <%= dateFormat.format(new java.util.Date()) %></li>
</ul>
</body>
</body>
</html>