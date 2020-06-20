<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello World</title>
</head>
<body>
<p>You have successfully deployed the helloworld-tomcat-war</p>
<p>
<%= request.getRequestURI() %><br/>
<%= request.getHeader("Host") %>
</p>
</body>
</html>