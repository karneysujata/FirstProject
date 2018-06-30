package mySpringDemo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import myspringService.StudentService;

@Controller
@RequestMapping("/course")
public class courseController {
	
	@Autowired
	private StudentService studentService;
	
	
	@RequestMapping("/list")
	public String listCourses(Model themodel) {
		
		List<Course> thecourse = studentService.getCourse();
		
		themodel.addAttribute("courses",thecourse);
			
		return "list-courses";
	}

}
