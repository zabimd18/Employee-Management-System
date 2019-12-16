package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBUtillogin;
import pojo.POJOsignup;
import pojo.employeePOJO;
public class employeeDAO {
	public static List<employeePOJO> getAllEmployees() throws Exception
	{
		List<employeePOJO> employeelist =new ArrayList<employeePOJO>();
		Connection con=DBUtillogin.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * from empinfo");
		while(rs.next())
		{
			employeePOJO employee=new employeePOJO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
			employeelist.add(employee);
		}
		DBUtillogin.closeConnection(con);
		return employeelist; 
	}
	public static int addEmployee(employeePOJO employee) throws Exception
	{
		int status=0;
		
		Connection con=DBUtillogin.getConnection();
		PreparedStatement ps=con.prepareStatement("INSERT into empinfo values(?,?,?,?)");
		ps.setString(1, employee.getEmpid());
		ps.setString(2, employee.getEmpname());
		ps.setString(3, employee.getEmpdept());
		ps.setString(4, employee.getEmpsal());
		status=ps.executeUpdate();
		return status;
	}
	public static int deleteEmployee(String employee) throws Exception
	{
		int status=0;
		
		Connection con=DBUtillogin.getConnection();
		PreparedStatement ps=con.prepareStatement("DELETE FROM empinfo WHERE empid=?");
		ps.setString(1, employee);
		status=ps.executeUpdate();
		return status;
	}
	
	public static employeePOJO getempid(String employee) throws Exception 
	{ 
	 		employeePOJO emp = null; 
			 
	 			Connection conn = DBUtillogin.getConnection(); 
	 			PreparedStatement ps= conn.prepareStatement("SELECT * FROM empinfo WHERE empid=?"); 
	 			ps.setString(1, employee); 
	 			ResultSet rs = ps.executeQuery(); 
	 			while(rs.next()) 
	 			{ 
	 				emp = new employeePOJO(rs.getString("empid"),rs.getString("empname"),rs.getString("empdept"),rs.getString("empsal")); 
	 			} 
	 				 
	 		return emp; 
	 	} 

	
	public static int editEmployee(employeePOJO employee) throws Exception
	{
		int status=0;
		
		Connection con=DBUtillogin.getConnection();
		PreparedStatement ps=con.prepareStatement("UPDATE empinfo SET empname=?, empdept=?, empsal=? WHERE empid=?");
		ps.setString(1, employee.getEmpname());
		ps.setString(2, employee.getEmpdept());
		ps.setString(3, employee.getEmpsal());
		ps.setString(4, employee.getEmpid());
		status=ps.executeUpdate();
		return status;
	}
	
public static int addUser(POJOsignup user) throws Exception
{
int status=0;

Connection con=DBUtillogin.getConnection();
PreparedStatement ps=con.prepareStatement("INSERT into login values(?,?)");
ps.setString(1, user.getUsername());
ps.setString(2, user.getPassword());
status=ps.executeUpdate();
return status;
}
	
	
}
