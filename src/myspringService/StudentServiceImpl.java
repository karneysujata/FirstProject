package myspringService;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mySpringDemo.Course;
import mySpringDemo.Student;
import myspringDAO.CourseDAO;
import myspringDAO.StudentDAO;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;
	
	@Autowired
	private CourseDAO courseDAO;
	

	@Override
	@Transactional
	public List<Student> getStudent() {
	
		
		return studentDAO.getStudent();
	}

	@Override
	@Transactional
	public List<Course> getCourse() {
		
		return courseDAO.getCourse();
	}
	
	@Override
	@Transactional
	public void SaveStudent(@Valid Student stud){
		 studentDAO.SaveStudent(stud);
	}

	@Override
	@Transactional
	public Student getStudent(int id) {
		
		return studentDAO.getStudent(id);

	}

	@Override
	@Transactional
	public void deletestudent(int id) {
		
		studentDAO.deletestudent(id);
		
	}

	
}
