package models;



public class Admin extends User {

	private String matriculeAdmin;
	
	//constructeurs

	public Admin() {
		super();
		
	}

/*	public Admin(String login, String firstname, String lastName, String email, String password, String phone,
			Address address, String typeOfUser) {
		super(login, firstname, lastName, email, password, phone, address, typeOfUser);
		
	}*/

	public Admin(String matriculeAdmin) {
		super();
		this.matriculeAdmin = matriculeAdmin;
	}

	// getters et setters
	public String getMatriculeAdmin() {
		return matriculeAdmin;
	}

	public void setMatriculeAdmin(String matriculeAdmin) {
		this.matriculeAdmin = matriculeAdmin;
	}

	// g�n�ration de mot de passe

	public String generate(int lentgh) {

		String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		String pass = "";

		for (int x = 0; x < lentgh; x++) {
			int i = (int) Math.floor(Math.random() * 62);
			pass += chars.charAt(i);
		}
		return pass;
	}

/*	public Advisor createAdvisor(User user, String matricule) {

		Advisor advisor = new Advisor();

		advisor.setLogin(user.getLogin());
		advisor.setPassword(generate(8));
		advisor.setLastName(user.getLastName());
		advisor.setFirstname(user.getFirstname());
		advisor.setEmail(user.getEmail());
		advisor.setPhone(user.getPhone());
		advisor.setMatriculeAdvisor(generate(5));
		advisor.setTypeOfUser("Advisor");

		return advisor;

	}*/

	public boolean supprimerAgent(Advisor advisor, boolean deleteAdvisor) {
		if (advisor != null && deleteAdvisor == true)
			return true;
		else
			return false;
	}
}
