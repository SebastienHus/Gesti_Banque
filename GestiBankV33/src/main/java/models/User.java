package models;


public class User {
	
	//param(s)
	private String login;
	private String firstname;
	private String lastName;
	private String email;
	private String password;
	private String phone;
	private Address address;
	private String typeOfUser;
	
	//Constructor(s)
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String login, String firstname, String lastName, String email, String password, String phone,
			Address address, String typeOfUser) {
		super();
		this.login = login;
		this.firstname = firstname;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.typeOfUser = typeOfUser;
	}
	
	//getters and setters
	
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getTypeOfUser() {
		return typeOfUser;
	}

	public void setTypeOfUser(String typeOfUser) {
		this.typeOfUser = typeOfUser;
	}
	
	

}
