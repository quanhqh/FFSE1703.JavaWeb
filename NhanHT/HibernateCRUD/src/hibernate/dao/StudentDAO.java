package hibernate.dao;

import java.util.List;

import hibernate.model.Student;

public interface StudentDAO {
	public void addStudent(Student p);
	public void updateStudent(Student p);
	public List<Student> listStudent(int start, int maxRows);
	public Student getStudentById(int id);
	public void removeStudent(int id);
	public int total();
}
