package pojo;

public class employeePOJO {
	String empid;
	String empname;
	String empdept;
	String empsal;
	public employeePOJO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public employeePOJO(String empid, String empname, String empdept, String empsal) {
		super();
		this.empid = empid;
		this.empname = empname;
		this.empdept = empdept;
		this.empsal = empsal;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getEmpdept() {
		return empdept;
	}
	public void setEmpdept(String empdept) {
		this.empdept = empdept;
	}
	public String getEmpsal() {
		return empsal;
	}
	public void setEmpsal(String empsal) {
		this.empsal = empsal;
	}
	@Override
	public String toString() {
		return "employeePOJO [empid=" + empid + ", empname=" + empname + ", empdept=" + empdept + ", empsal=" + empsal
				+ "]";
	}
	
}
