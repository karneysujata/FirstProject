package myspringService;

import java.util.List;

import javax.validation.Valid;

import mySpringDemo.Course;
import mySpringDemo.Student;

public interface StudentService {

	public List<Student> getStudent();
	
	public List<Course> getCourse();
	
	public void SaveStudent(@Valid Student stud) ;

	public Student getStudent(int id);
}
