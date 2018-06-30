package myspringDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mySpringDemo.Course;

@Repository
public class CourseDAOImpl implements CourseDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Course> getCourse() {
			
		Session curentsession = sessionFactory.getCurrentSession();
		
		Query<Course> thequery = curentsession.createQuery("from Course", Course.class);
		
		List<Course> Course = thequery.getResultList();
		return Course;
	}

}
