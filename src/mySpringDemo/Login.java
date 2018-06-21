package mySpringDemo;

import javax.validation.constraints.Size;

import mySpringDemo.validation.CourseCode;

public class Login {
	

	@CourseCode
	private String search;

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
}
