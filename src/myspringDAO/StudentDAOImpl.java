package myspringDAO;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mySpringDemo.Student;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Student> getStudent() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Student> theQuery = currentSession.createQuery("from Student",Student.class);
		
		List<Student> students = theQuery.getResultList();
		
		return students;
	}

	@Override
	public void SaveStudent(@Valid Student stud) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(stud);;
	}

	@Override
	public Student getStudent(int id) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Student student = currentSession.get(Student.class, id);
		
		return student;
	}

	@Override
	public void deletestudent(int id) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Student student = currentSession.get(Student.class, id);
		
		currentSession.delete(student);
	}

}
