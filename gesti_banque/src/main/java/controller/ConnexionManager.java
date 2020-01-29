public class ConnexionManager {

	private static String URL="jdbc:mysql://localhost:8080/gesti_banque";
	private static String DRIVERNAME="com.mysql.jdbc.Driver";
	private static String LOGIN="root";
	private static String PASSWORD="";
	private static Connection conx;
	private static String urlString;
	
	public static Connection getConnection() {
	
		try {
			 Class.forName(DRIVERNAME);
			 try {
			    	conx=DriverManager.getConnection(URL,LOGIN,PASSWORD);
			    	
			      }  catch (SQLException exsql) {
				 
				 System.out.println("");
			}
		} catch (ClassNotFoundException cls) 
		
		     return conx;
	}
}