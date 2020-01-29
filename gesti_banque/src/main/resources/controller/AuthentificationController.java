public class AuthentificationController extends ConnexionManger {
    
	
	try {  
	
     class.AuthentificationController("com.mysql.jdbc.Driver");
	 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:8080/gesti_banque", "root", "");
	 Statement s = c.createStatement();
	 ResultSet r = s.executeQuery("select * from authentification");
	 
	 while (r.next()) {
		 
	 String LoginRecup = r.getString("Login");
	 if (login.equals(LoginRecup))
		 
	 
	 String MPRecup = r.getString("Password");
	 if (LoginRecup.equals(log)& MPRecup.equals(pw) ) {
	 verif = true;
	 
	 principale N = new principale();
	 N.setVisible(true);
	 this.dispose();
	 
	 }
	 
	 
	 if (!verif) {
	     c.close();
	 
	 } catch (Exception a) {
	 System.out.println(a);
	 }
	
}


