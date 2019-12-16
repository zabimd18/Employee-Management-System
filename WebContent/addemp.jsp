<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
<div class="col-md-6 mx-auto text-center">
	<div class="col-md-9 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
               Employee Details
            </h1>
            </div>
      </div>
<div class="myform form ">
<form action="processAddEmployee.jsp" method="post">
<input placeholder="Employee ID" class="form-control my-input" type="text" name="empID" size="20">
<br>
<input placeholder="Employee Name" class="form-control my-input" type="text" name="empName" size="20">
<br>
<input placeholder="Employee Department" class="form-control my-input" type="text" name="empDept" size="20">
<br>
<input placeholder="Employee Salary" class="form-control my-input" type="text" name="empSal" size="20">
<br>
<input class="btn btn-block btn-success send-button tx-tfm" type="submit" value="Save">
</form>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>