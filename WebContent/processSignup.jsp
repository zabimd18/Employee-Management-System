<%@page import="dao.*" %>
<%@page import="pojo.*" %>
<%
String userName=request.getParameter("userName");
String password=request.getParameter("password");
String password1=request.getParameter("password1");
if(password.equals(password1)){
POJOsignup user=new POJOsignup(userName,password);
int status=employeeDAO.addUser(user);

if(status==1)
{
	response.sendRedirect("Login.jsp");
}
else
{
	response.sendRedirect("error.jsp");
}
}
else
{
	response.sendRedirect("error.jsp");
}
%>