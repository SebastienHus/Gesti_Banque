package models;

public class User {
	
	//param(s)
	String User;
	String lastName;
	String email;
	String password;
	String phone;
	Address address;
	String typeOfUser;
	
	//Constructor(s)
	 public User() {
		 super();
	 }

	public User(String User, String lastName, String email, String password, String phone, Address address, String typeOfUser) {
		super();
		this.User = User;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.typeOfUser = typeOfUser;
	}

	

			
	//getters and setters

}
