<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
* {
    margin: 0;
    padding: 0;
    font-family:Verdana;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("userName")== null)
{
	response.sendRedirect("Login.jsp");	
}
%>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="home.jsp"><img alt="logo" src="logo.jpg" width="" height=""></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		    <span class="navbar-toggler-icon"></span>
	</button>
 	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav text-center">
		<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
		<li class="nav-item"><a class="nav-link" href="addemp.jsp">Add Employee</a></li>
		<li class="nav-item"><a class="nav-link" href="viewemp.jsp">View Employee</a></li>
		<li class="nav-item"><a class="nav-link" href="searchemp.jsp">Search Employee</a></li>
		<li class="nav-item"><a class="nav-link" href="Logout.jsp" >Logout</a></li>
		</ul>
	</div>
</nav>
<br>
</body>
</html>