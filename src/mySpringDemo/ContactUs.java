package mySpringDemo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/contactus")
public class ContactUs {

	@RequestMapping("/showform")
	public String ShowForm() {
		return "hello-form";
	}
	
	@RequestMapping("/processform")
	public String ProcessForm() {
		return "hello";
	}

}
