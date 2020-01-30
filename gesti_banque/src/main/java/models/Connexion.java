package models;
import java.sql.Connection;
import java.sql.DriverManager;

public class Connexion {
	private Connection cnx = null;
	public Connection getCnx() {
		return cnx;
	}
	public void setCnx(Connection cnx) {
		this.cnx = cnx;
	}
	public  Connexion() {

		try {
			Class.forName("com.mysql.jdbc.Driver");

			// url de la base de donn�es
			String url = "jdbc:mysql://localhost:3308/gestibankv2";
			String user = "root";
			String password = "";

			// tentative de connexion � la BDD

			this.cnx = DriverManager.getConnection(url, user, password);
			
		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
