package mySpringDemo;

public class Student {
	private String firstname;
	private String lastname;
	private String country;
	private String favlanguage;
	private String os;
	

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public Student() {
		
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getFavlanguage() {
		return favlanguage;
	}

	public void setFavlanguage(String favlanguage) {
		this.favlanguage = favlanguage;
	}

}
