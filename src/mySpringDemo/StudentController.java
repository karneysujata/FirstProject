package mySpringDemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/showform")
	public String showform(Model model) {
		
		Student student = new Student();
		model.addAttribute("student",student);
		return "student-form";
		
	}
	
	@RequestMapping("/processform")
	public String ProcessForm(@ModelAttribute("student") Student stud) {
		
		
		return "student-confirmation";
	}

}
