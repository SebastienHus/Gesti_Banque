package models;



public class Advisor extends User {

	private String matriculeAdvisor;

	public Advisor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Advisor(String login, String firstname, String lastName, String email, String password, String phone,
			Address address, String typeOfUser) {
		super(login, firstname, lastName, email, password, phone, address, typeOfUser);
		// TODO Auto-generated constructor stub
	}

	public Advisor(String matriculeAdvisor) {
		super();
		this.matriculeAdvisor = matriculeAdvisor;
	}

	public String getMatriculeAdvisor() {
		return matriculeAdvisor;
	}

	public void setMatriculeAdvisor(String matriculeAdvisor) {
		this.matriculeAdvisor = matriculeAdvisor;
	}

	// Si le conseiller veux valider l'ouverture du compte apr�s avoir v�rifier
	// l'ensemble des renseignements il lui suffira de cocher la validation de
	// l'ouverture du compte

	public boolean validateOpenCompte(boolean validation) {
		if (validation)
			return true;
		else
			return false;
	}

	// ici le conseiller doit v�rifier que le solde du compte soit � 0 donc pas de
	// d�couvert ni d'avoir pour valider la fermeture du compte en cochant la bonne
	// case
	public boolean validateClosedCompte(float solde, boolean close) {
		if (solde == 0 && close == true)
			return true;
		else
			return false;
	}

	// pour la modification du compte il me faut la classe compte donc elle sera
	// faite plus tard
	//pour afficher la liste des clients du conseiller
	
		public ArrayList<User> showClientList(String matricule)
		{
			 ArrayList <User> liste=new ArrayList<User>();
			 Connexion con = new Connexion();
			try
			{
				st=con.prepareStatement("select * from User Where IDRole = 1 AND Matricule =?");
				st.setString(1, matricule);
				rs=st.executeQuery();
				while(rs.next())
				{
					User u=new User();
					u.setFirstname(rs.getString("prenom"));
					u.setGender(rs.getString("civilite"));
					u.setLastName(rs.getString("nom"));
					u.setPhone(rs.getString("telephone"));
					u.setAddress(rs.get));

					sqld=rs.getDate("DateNaisse");
					dn=String.valueOf(sqld);
					dtn=this.sqlEnChaine(dn);
					u.setDatenaisse(dtn);
					
					u.setAdresse(rs.getString("Adresse"));
					u.setTelephone(rs.getString("Telephone"));

					
					liste.add(u);
					
				}
				
			}
			catch(SQLException ex)
			{
				System.out.println(ex.getMessage());
			}
			return liste;
		}
}
