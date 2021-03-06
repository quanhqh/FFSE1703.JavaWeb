package student.bean;

public class Student {
	private String fullname,code,classStudent,image;
	private float lp1,lp2;
	public Student() {
		
	}
	public Student(String code,String fullname,String image,String classStudent, float lp1, float lp2) {		
		this.code = code;
		this.fullname = fullname;
		this.image = image;
		this.classStudent = classStudent;
		this.lp1 = lp1;
		this.lp2 = lp2;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getClassStudent() {
		return classStudent;
	}
	public void setClassStudent(String classStudent) {
		this.classStudent = classStudent;
	}	
	public float getLp1() {
		return lp1;
	}
	public void setLp1(float lp1) {
		this.lp1 = lp1;
	}
	public float getLp2() {
		return lp2;
	}
	public void setLp2(float lp2) {
		this.lp2 = lp2;
	}
	public float getDiemTb() {
		return (lp1+lp2)/2;		
	}
	public String getXepLoai() {		 
    	if(getDiemTb()<=4.9) {
    		return "Yếu";}
    	else if(getDiemTb()>=5.0 && getDiemTb()<=6.9) {
    		return "Trung Bình";}
    	else if(getDiemTb()>=7 && getDiemTb()<=8.4) {
    		return "Khá";    	
    	}
    	else {
    		return "Giỏi";
    	}
	}
}
