package myspringDAO;

import java.util.List;

import javax.validation.Valid;

import mySpringDemo.Student;

public interface StudentDAO {

	public List<Student> getStudent();

	public void SaveStudent(@Valid Student stud);

	public Student getStudent(int id);
}
