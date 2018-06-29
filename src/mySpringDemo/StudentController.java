package mySpringDemo;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import myspringDAO.StudentDAO;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	private StudentDAO studentDAO;
	
	@RequestMapping("/liststudent")
	public String listStudents(Model model) {
		
		List<Student> theStudents = studentDAO.getStudent();
		
		model.addAttribute("students", theStudents);
		
		return "list-students";
	}
	
	@RequestMapping("/showform")
	public String showform(Model model) {
		
		Student student = new Student();
		model.addAttribute("student",student);
		return "student-form";
		
	}
	
	@InitBinder
	public void initBinder(WebDataBinder databinder) {
		StringTrimmerEditor trimmereditor = new StringTrimmerEditor(true);
		databinder.registerCustomEditor(String.class, trimmereditor);
		
	}
	
	
	@RequestMapping("/processform")
	public String ProcessForm(@Valid @ModelAttribute("student") Student stud, BindingResult bindingresult) {
		
		if(bindingresult.hasErrors()) {
			return "student-form";
		}
		else {
			return "student-confirmation";
		}
	}

}
