<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dao.*" %>
    <%@ page import="pojo.*" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div align="center" style="padding-top:25px;"> 
<div class="col-md-5 mx-auto text-center">
 	<form action="searchemp.jsp"> 
 		<label>Enter Employee ID: </label> 
 		<input class="form-control my-input" type="text" name="empID" />
 		<br> 
 		<button type="button" class="btn btn-dark" >Search</button> 
 	</form> 
 	</div>
 	<br>
</div> 
<table class="table table-hover"> 
 		<thead class="thead-dark"> 
 			<tr> 
 				<th scope="col">Employee ID</th> 
 				<th scope="col">Employee Name</th> 
 				<th scope="col">Employee Department</th>
 				<th scope="col">Employee Salary</th>  
 				<th scope="col" colspan="2">Actions</th> 
 			</tr>  
 		</thead> 
 		<% 
 			String empid = request.getParameter("empID"); 
 			if(empid != null) 
 			{ 
 				employeePOJO p = employeeDAO.getempid(empid); 
 			 
 				if(p != null) 
 				{ 
 		%> 
 			<tr> 
 				<td><%=p.getEmpid()%></td> 
 				<td><%=p.getEmpname()%></td> 
 				<td><%=p.getEmpdept()%></td>
 				<td><%=p.getEmpsal()%></td> 
 				<td><button type="button" class="btn btn-success" onclick="location.href = 'editemployee.jsp?empID=<%=p.getEmpid()%>';">Edit</button></td>
 				<td><button type="button" class="btn btn-danger" onclick="location.href = 'processDeleteEmployee.jsp?empID=<%=p.getEmpid()%>';">Delete</button></td> 
 			</tr> 
 	    <%		} 
 				else 
 				{ 
 		%> 
 			<tr> 
 				<td colspan="5">No record to display</td> 
 			</tr> 
 		<%  
 				} 
 			} 
 			else  
 			{ 
 		%> 
 			<tr> 
 				<td colspan="5">No record to display</td> 
 			</tr> 
 		<%  
 			} 
 		%> 
</table> 
<%@ include file="footer.jsp" %>
</body>
</html>