package mySpringDemo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import myspringDAO.CourseDAO;

@Controller
@RequestMapping("/course")
public class courseController {
	
	@Autowired
	private CourseDAO courseDAO;
	
	
	@RequestMapping("/list")
	public String listCourses(Model themodel) {
		
		List<Course> thecourse = courseDAO.getCourse();
		
		themodel.addAttribute("courses",thecourse);
			
		return "list-courses";
	}

}
