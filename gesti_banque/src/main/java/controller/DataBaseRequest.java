package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

 

public class RequetteBdd {
 // Requete admin
	
	/**
	 * Permet de v�rifier les identifiant de l'admin
	 * @param conn
	 * @param login_admin
	 * @param mdp_admin
	 * @return
	 */
	 
	 public String[] getAdmin(Connection conn, String login_admin, String mdp_admin) {
		String[] resultat = new String[2];
		Statement stmt = null;
		ResultSet resultSet = null;
		try {
			
			stmt = conn.createStatement();
			resultSet = stmt.executeQuery("select login_admin, mdp_admin from admin where login_admin = '"+login_admin+"'and mdp_admin = '"+mdp_admin+"'");
			while (resultSet.next()) {// return false when there is no more row ! first at -1
				for (int i = 0; i <= 1; i++) {
					
						resultat[i] = resultSet.getObject(i+1).toString();
					
				}
				
			}
			resultSet.close();
			stmt.close();
		} catch (SQLException ex) {
			// handle any errors
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
		} finally {
			
			
			
			return resultat;
		}
		
	}
	 
	 // Requette client
	 /**
	  * sert à Verifie les identifiant de connection du client
	  * @param conn
	  * @param login_pat
	  * @param mdp_pat
	  * @return
	  */
	 public String[] getClient(Connection conn, String login_pat, String mdp_pat) {
			String[] resultat = new String[2];
			Statement stmt = null;
			ResultSet resultSet = null;
			try {
				
				stmt = conn.createStatement();
				resultSet = stmt.executeQuery("select login_client, mdp_client from client where login_client = '"+login_cli+"'and mdp_client = '"+mdp_cli+"'");
				while (resultSet.next()) {// return false when there is no more row ! first at -1
					for (int i = 0; i <= 1; i++) {
						
							resultat[i] = resultSet.getObject(i+1).toString();
						
					}
					
				}
				resultSet.close();
				stmt.close();
			} catch (SQLException ex) {
				// handle any errors
				System.out.println("SQLException: " + ex.getMessage());
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("VendorError: " + ex.getErrorCode());
			} finally {
				
				
				
				return resultat;
			}
			
		}
	 
	 /**
	  * sert à afficher les Advisor
	  * @param conn
	  * @return
	  */
	 public static List<Advisor> getAdvisor(Connection conn) {
		 List<Advisor> listAdvisor = new ArrayList<Advisor>();
		 String[] unAdvisorS = new String[12];
			Statement stmt = null;
			ResultSet resultSet = null;
			try {
				
				stmt = conn.createStatement();
				resultSet = stmt.executeQuery("select id_Advisor,nom_Advisor, prenom_Advisor, tel_Advisor,  email_Advisor");
				while (resultSet.next()) {// return false when there is no more row ! first at -1
					for (int i = 1; i <= 10; i++) {
						
						unPatient[i-1] = resultSet.getObject(i).toString();
//						System.out.println(resultSet.getObject(i).toString());
					}
					listPatient.add(new Patient(unPatient[0],
							unAdvisor[1], 
							unAdvisor[2],
							unAdvisor[3], 
							unAdvisor[4],
							unAdvisor[5], 
							unAdvisor[6],
							unAdvisor[7], 
							unAdvisor[8],
							unAdvisor[9]));
					
				}
				resultSet.close();
				stmt.close();
			} catch (SQLException ex) {
				// handle any errors
				System.out.println("SQLException: " + ex.getMessage());
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("VendorError: " + ex.getErrorCode());
			} finally {
				
				
				
				return listAdvisor;
			}
			
		}
	 
	 /**
	  * Permet d'ajouter un patient
	  * @param conn
	  * @param unMedecin
	  * @throws SQLException
	  */
	 public static void ajouterPatient(Connection conn, Patient unPatient) throws SQLException{
			PreparedStatement prep = null;
			
			
				String sqlAjouter = "insert into patient(secu_patient, nom_patient, prenom_patient, sexe_patient, tel_patient, email_patient, rue_patient, cp_patient, ville_patient) values(?,?,?,?,?,?,?,?,?)";
				prep = conn.prepareStatement(sqlAjouter);
				prep.setString(1, unPatient.getNumSecu());
				prep.setString(2, unPatient.getNom());
				prep.setString(3, unPatient.getPrenom());
				prep.setString(4, unPatient.getSexe());
				prep.setString(5, unPatient.getTel());
				prep.setString(6, unPatient.getEmail());
				prep.setString(7, unPatient.getAdresse());
				prep.setString(8, unPatient.getCp());
				prep.setString(9, unPatient.getVille());
				prep.executeUpdate();
				prep.close();
			
			
		}
	 
	 /**
	  * Permet de modifier un patient
	  * @param conn
	  * @param unMedecin
	  * @throws SQLException
	  */
	 public static void modiferPatient(Connection conn, Patient unPatient) throws SQLException{
			PreparedStatement prep = null;
			
			
				String sqlAjouter = "update patient set secu_patient=?, nom_patient=?, prenom_patient=?, sexe_patient=?, tel_patient=?, email_patient=?, rue_patient=?, cp_patient=?, ville_patient=? where id_patient = ?";
				prep = conn.prepareStatement(sqlAjouter);
				prep.setString(1, unPatient.getNumSecu());
				prep.setString(2, unPatient.getNom());
				prep.setString(3, unPatient.getPrenom());
				prep.setString(4, unPatient.getSexe());
				prep.setString(5, unPatient.getTel());
				prep.setString(6, unPatient.getEmail());
				prep.setString(7, unPatient.getAdresse());
				prep.setString(8, unPatient.getCp());
				prep.setString(9, unPatient.getVille());
				prep.setString(10, unPatient.getId());
				prep.executeUpdate();
				prep.close();
			
			
		}
	 
	 /**
	  * Permet de supprimer un médecin
	  * @param conn
	  * @param unMedecin
	  * @throws SQLException
	  */
	 
	 public static void suppPatient(Connection conn, Patient unPatient) throws SQLException{
			PreparedStatement prep = null;
			
			
				String sqlAjouter = "delete from patient where id_patient =?";
				prep = conn.prepareStatement(sqlAjouter);
				prep.setString(1, unPatient.getId());
				prep.executeUpdate();
				prep.close();
			
			
		}
	 
	 
	 
	 // Requette  qui affiche les médecins
	 /**
	  * sert à afficher les médecins
	  * @param conn
	  * @return
	  */
	 public static List<Medecin> getMedecins(Connection conn) {
		 List<Medecin> listMedecin = new ArrayList<Medecin>();
		 String[] unMedecin = new String[12];
			Statement stmt = null;
			ResultSet resultSet = null;
			try {
				
				stmt = conn.createStatement();
				resultSet = stmt.executeQuery("select  id_medecin, nom_medecin,  prenom_medecin,  spe_medecin, tel_medecin,  email_medecin,  rue_medecin,  ville_medecin,  cp_medecin from medecin");
				while (resultSet.next()) {// return false when there is no more row ! first at -1
					
					for (int i = 1; i <= 9; i++) {
						unMedecin[i-1] = resultSet.getObject(i).toString();
						
					}
					listMedecin.add(new Medecin(unMedecin[0],
							unMedecin[1], 
							unMedecin[2],
							unMedecin[3], 
							unMedecin[4],
							unMedecin[5], 
							unMedecin[6],
							unMedecin[7], 
							unMedecin[8]));
					
				}
				resultSet.close();
				stmt.close();
			} catch (SQLException ex) {
				// handle any errors
				System.out.println("SQLException: " + ex.getMessage());
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("VendorError: " + ex.getErrorCode());
			} finally {
				
				
				
				return listMedecin;
			}
			
		} 
	 
	 /**
	  * sert à vérifier la connection du médecin
	  * @param conn
	  * @param login_med
	  * @param mdp_med
	  * @return
	  */
	 public String[] getMedecin(Connection conn, String login_med, String mdp_med) {
			String[] resultat = new String[2];
			Statement stmt = null;
			ResultSet resultSet = null;
			try {
				
				stmt = conn.createStatement();
				resultSet = stmt.executeQuery("select login_medecin, mdp_medecin from medecin where login_medecin = '"+login_med+"'and mdp_medecin = '"+mdp_med+"'");
				while (resultSet.next()) {// return false when there is no more row ! first at -1
					for (int i = 0; i <= 1; i++) {
						
							resultat[i] = resultSet.getObject(i+1).toString();
						
					}
					
				}
				resultSet.close();
				stmt.close();
			} catch (SQLException ex) {
				// handle any errors
				System.out.println("SQLException: " + ex.getMessage());
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("VendorError: " + ex.getErrorCode());
			} finally {
				
				
				
				return resultat;
			}
			
		}
	 
	 /**
	  * Permet d'ajouter un médecin
	  * @param conn
	  * @param unMedecin
	  * @throws SQLException
	  */
	 public static void ajouterMedecin(Connection conn, Medecin unMedecin) throws SQLException{
			PreparedStatement prep = null;
			
			
				String sqlAjouter = "insert into medecin(nom_medecin, prenom_medecin, spe_medecin, tel_medecin, email_medecin, rue_medecin, cp_medecin, ville_medecin) values(?,?,?,?,?,?,?,?)";
				prep = conn.prepareStatement(sqlAjouter);
				prep.setString(1, unMedecin.getNom());
				prep.setString(2, unMedecin.getPrenom());
				prep.setString(3, unMedecin.getSpecialite());
				prep.setString(4, unMedecin.getTel());
				prep.setString(5, unMedecin.getEmail());
				prep.setString(6, unMedecin.getAdresse());
				prep.setString(7, unMedecin.getCp());
				prep.setString(8, unMedecin.getVille());
				prep.executeUpdate();
				prep.close();
			
			
		}
	 
	 /**
	  * Permet de modifier un médecin
	  * @param conn
	  * @param unMedecin
	  * @throws SQLException
	  */
	 public static void modiferMedecin(Connection conn, Medecin unMedecin) throws SQLException{
			PreparedStatement prep = null;
			
			
				String sqlAjouter = "update medecin set nom_medecin=?, prenom_medecin=?, spe_medecin=?, tel_medecin=?, email_medecin=?, rue_medecin=?, cp_medecin=?, ville_medecin=? where id_medecin = ?";
				prep = conn.prepareStatement(sqlAjouter);
				prep.setString(1, unMedecin.getNom());
				prep.setString(2, unMedecin.getPrenom());
				prep.setString(3, unMedecin.getSpecialite());
				prep.setString(4, unMedecin.getTel());
				prep.setString(5, unMedecin.getEmail());
				prep.setString(6, unMedecin.getAdresse());
				prep.setString(7, unMedecin.getCp());
				prep.setString(8, unMedecin.getVille());
				prep.setString(9, unMedecin.getId());
				prep.executeUpdate();
				prep.close();
			
			
		}
	 
	 /**
	  * Permet de supprimer un médecin
	  * @param conn
	  * @param unMedecin
	  * @throws SQLException
	  */
	 
	 public static void suppMedecin(Connection conn, Medecin unMedecin) throws SQLException{
			PreparedStatement prep = null;
			
			
				String sqlAjouter = "delete from medecin where id_medecin =?";
				prep = conn.prepareStatement(sqlAjouter);
				prep.setString(1, unMedecin.getId());
				prep.executeUpdate();
				prep.close();
			
			
		}
	 
}
