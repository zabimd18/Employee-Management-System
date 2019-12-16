<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.a{
text-align: center;
padding-top: 20%;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<%
String userName = (String)session.getAttribute("userName");
%>
<%@ include file="header.jsp" %>
<div class="a">
<h1>Welcome <%=userName %></h1>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>