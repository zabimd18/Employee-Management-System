package dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import dbutil.DBUtillogin;
import pojo.POJOlogin;
public class DAOlogin {
	public static boolean isUserValid(POJOlogin userDetails)
	{
		boolean validStatus = false;
		try 
		{
			Connection con=DBUtillogin.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT * from login WHERE username='"+userDetails.getUsername()+"' AND password='"+userDetails.getPassword()+"'");
		while(rs.next())
		{
			validStatus = true;
		}
		DBUtillogin.closeConnection(con);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return validStatus; 
	}
}
