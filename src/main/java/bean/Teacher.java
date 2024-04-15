package bean;

public class Teacher implements java.io.Serializable {
<<<<<<< HEAD

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
	
	public void setId(String id) {
		this.id=id;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setSchool(School school) {
		this.school=school;
	}
}
=======
	
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
>>>>>>> branch 'master' of https://github.com/kobayashiyamato08/Exam.git
