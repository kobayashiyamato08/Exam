package bean;

public class Teacher implements java.io.Serializable {
	
	private String id;
	private String password;
	private String name;
	private School school;
	
	public String getId() {
		return id;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getName() {
		return name;
	}
	
	public School getSchool() {
		return school;
	}
	
	public void setId() {
		this.id=id;
	}
	
	public void setPassword() {
		this.password = password;
	}
	
	public void setNmae() {
		this.name= name;
	}
	
	public void setSchool() {
		this.school=school;
	}
}
