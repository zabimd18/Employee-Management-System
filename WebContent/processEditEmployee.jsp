<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="dao.*" %>
        <%@ page import="pojo.*" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String employeeID=request.getParameter("empID");
String employeeName=request.getParameter("empName");
String employeeDepartment=request.getParameter("empDept");
String employeeSalary=request.getParameter("empSal");
employeePOJO employee=new employeePOJO(employeeID,employeeName,employeeDepartment,employeeSalary);
int status=employeeDAO.editEmployee(employee);

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