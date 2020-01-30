package models;

import java.sql.*;

public class User {

	// param(s)
	private long id;
	
	private String login;
	private String firstname;
	private String lastName;
	private String email;
	private String password;
	private long phone;
	private long address;
	private long typeOfUser;

	public User verifUser(String username, String password) {
		Connexion cnx = new Connexion();
		Connection con = cnx.getCnx();
		User u = new User();
		try {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM User WHERE login = ? and password = ?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				u.setId(rs.getInt(1));
				u.setAddress(rs.getLong(13));
				u.setEmail(rs.getString(6));
				u.setFirstname(rs.getString(5));
				u.setLastName(rs.getString(4));
				u.setLogin(rs.getString(2));
				u.setPassword(rs.getString(3));
				u.setPhone(rs.getLong(7));
				u.setTypeOfUser(rs.getLong(8));
				System.out.println("User capté :" + u);
				return u;
			}
			else
				return null;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return u;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", login=" + login + ", firstname=" + firstname + ", lastName=" + lastName
				+ ", email=" + email + ", password=" + password + ", phone=" + phone + ", address=" + address
				+ ", typeOfUser=" + typeOfUser + "]";
	}

	public long getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	// Constructor(s)
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String login, String firstname, String lastName, String email, String password, long phone,
			long address, long typeOfUser) {
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

	// getters and setters

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

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public long getAddress() {
		return address;
	}

	public void setAddress(long address) {
		this.address = address;
	}

	public long getTypeOfUser() {
		return typeOfUser;
	}

	public void setTypeOfUser(long typeOfUser) {
		this.typeOfUser = typeOfUser;
	}

}
