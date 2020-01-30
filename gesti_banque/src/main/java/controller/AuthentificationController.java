package controller;

import models.User;

public class AuthentificationController {
	public boolean authentif(String username, String pwd) {
		User usr = new User();
		return usr.verifUser(username, pwd) !=null;
	}
}
