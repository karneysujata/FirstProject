package mySpringDemo;

import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping("/showform")
	public String ShowForm(Model model) {
		Login login = new Login();
		model.addAttribute("login",login);
		return "login-form";
	}
	
	@RequestMapping("/processform")
	public String ProcessForm(@Valid @ModelAttribute("login") Login lgn, BindingResult bindingresult) {
		if(bindingresult.hasErrors()) {
			return "Student-Home-Page";
		}
		else {
			return "Student-Home-Page";
		}
	}
}
