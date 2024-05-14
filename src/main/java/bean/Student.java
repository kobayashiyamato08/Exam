package bean;

public class Student implements java.io.Serializable {

	private String no;
	private String name;
	private int entyear;
	private String classnum;
	private boolean isattend;
	private School school;

	public String getNo() {
		return no;
	}
	public String getName() {
		return name;
	}
	public int getEntYear() {
		return entyear;
	}
	public String getClassNum() {
		return classnum;
	}
	public boolean getIsAttend() {
		return isattend;
	}
	public School getSchool() {
		return school;
	}
	
	public void setNo(String no) {
		this.no=no;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setEntYear(int entyear) {
		this.entyear=entyear;
	}
	public void setClassNum(String classnum) {
		this.classnum=classnum;
	}
	public void setIsAttend(boolean isattend) {
		this.isattend=isattend;
	}
	public void setSchool(School school) {
		this.school=school;
	}
}
