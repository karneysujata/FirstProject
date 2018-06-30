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
import org.springframework.web.bind.annotation.RequestParam;

import myspringService.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/liststudent")
	public String listStudents(Model model) {
		
		List<Student> theStudents = studentService.getStudent();
		
		model.addAttribute("students", theStudents);
		
		return "list-students";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("studentid") int id ) {
		
		studentService.deletestudent(id);
		
		return "redirect:/student/liststudent";
	}
	
	@RequestMapping("/UpdateForm")
	public String Update(@RequestParam("studentid") int id , Model model) {
		
		Student theStudent = studentService.getStudent(id);
		
		model.addAttribute("student",theStudent);
		
		return "StudentUpdate-form";
		
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
			studentService.SaveStudent(stud);
			
			return "student-confirmation";
		}
	}

}
