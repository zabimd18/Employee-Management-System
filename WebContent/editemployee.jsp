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
<%
String empid=request.getParameter("empID");
employeePOJO employee = employeeDAO.getempid(empid);
%>
<div class="container">
<div class="col-md-6 mx-auto text-center">
	<div class="col-md-9 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
               Edit Employee
            </h1>
            <br>
            </div>
      </div>
      <div class="myform form ">
 		<form action="processEditEmployee.jsp" method="post"> 
 					<label>Employee ID</label> 
 					<input class="form-control my-input" type="text" name="empID" size="20" 
 						value="<%=empid%>" readonly/> 
 				<br>
 				<label>Employee Name</label> 
 				<input class="form-control my-input" type="text" name="empName" size="20" 
 						value="<%=employee.getEmpname()%>" />
 						<br>
				<label>Employee Department</label> 
 				<input class="form-control my-input" type="text" name="empDept" size="20"
 						value="<%=employee.getEmpdept()%>" />
 						<br>
 						<label>Employee Salary</label> 
 				<input class="form-control my-input" type="text" name="empSal" size="20"
 						value="<%=employee.getEmpsal()%>" />
 						<br>
 			<button class="btn btn-block btn-success send-button tx-tfm">Save</button> 
 		</form> 
 		</div>
 	</div> 
 </div>
<%@ include file="footer.jsp" %>
</body>
</html>