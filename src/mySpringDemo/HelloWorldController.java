package mySpringDemo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login")
public class HelloWorldController {

	@RequestMapping("/showform")
	public String ShowForm() {
		return "hello-form";
	}
	
	@RequestMapping("/processform")
	public String ProcessForm() {
		return "hello";
	}
	
	/*@RequestMapping("/processformv2")
	public String getData(HttpServletRequest request, Model model) {
		String name = request.getParameter("Studentname");
		name = name.toUpperCase();
		String result = "Are u here to learn "+name;
		model.addAttribute("message", result);
		return "hello";
	}
	*/
	@RequestMapping("/processformv2")
	public String getData(@RequestParam("Studentname") String name , Model model) {
		name = name.toUpperCase();
		String result = "Are u here to learn "+name;
		model.addAttribute("message", result);
		return "hello";
	}
}
