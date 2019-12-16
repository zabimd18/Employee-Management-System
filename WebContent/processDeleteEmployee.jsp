<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="dao.*" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String employee=request.getParameter("empID");
int status=employeeDAO.deleteEmployee(employee);

if(status==1)
{
	response.sendRedirect("viewemp.jsp");
}
else
{
	response.sendRedirect("error.jsp");
}
%>

</body>
</html>