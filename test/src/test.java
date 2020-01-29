import java.sql.Connection;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connexion cnx = new Connexion();
		Connection cntx = cnx.getCon();
		if(cntx==null) {
			System.out.println("Catastrophe!!!!!");
		}
		else {
			System.out.println("Objet cnx créé");
		}
		
		
	
	}

}
