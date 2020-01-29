import java.sql.Connection;
import java.sql.DriverManager;

public class Connexion {

	public  Connexion() {

		try {
			Class.forName("com.mysql.jdbc.Driver");

			// url de la base de donn�es
			String url = "jdbc:mysql://localhost:3308/gestibankv2";
			String user = "root";
			String password = "";

			// tentative de connexion � la BDD

			Connection con = DriverManager.getConnection(url, user, password);
			return con;
		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
