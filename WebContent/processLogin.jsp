<%@page import="dao.*" %>
<%@page import="pojo.*" %>
<%
String userName=request.getParameter("userName");
String password=request.getParameter("password");

if(DAOlogin.isUserValid(new POJOlogin(userName,password)))
{
		session.setAttribute("userName",userName);
		session.setMaxInactiveInterval(2000);
		response.sendRedirect("home.jsp");
}
else
{
	
	response.sendRedirect("loginfailed.jsp");
		
}
%>