package mySpringDemo;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
