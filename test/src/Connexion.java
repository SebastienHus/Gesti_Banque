import java.sql.Connection;
import java.sql.DriverManager;
public class Connexion {

	Connection con;
	public Connection getCon() {
		return con;
	}
	public void setCon(Connection con) {
		this.con = con;
	}
	public Connexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// url de la base de donn�es
			String url = "jdbc:mysql://localhost:3308/gestibankv2";
			String user = "root";
			String password = "";

			// tentative de connexion � la BDD

			con = DriverManager.getConnection(url, user, password);

		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}


}
