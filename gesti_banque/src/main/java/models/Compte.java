package models;

import java.util.Date;

public class Compte {

	// param(s)

	private String compteNumber;
	private float solde;
	private User titular;
	private Date dateCreation;
	private String rib;
	private float agio;
	private boolean overdraftFacility;
	private float overdraftLimit;
	private float interest;
	private float threshold;

	// Constructor(s)
	public Compte() {
		super();
		
	}
	
	public Compte(String compteNumber, float solde, User titular, Date dateCreation, String rib, float agio,
			boolean overdraftFacility, float overdraftLimit, float interest, float threshold) {
		super();
		this.compteNumber = compteNumber;
		this.solde = solde;
		this.titular = titular;
		this.dateCreation = dateCreation;
		this.rib = rib;
		this.agio = agio;
		this.overdraftFacility = overdraftFacility;
		this.overdraftLimit = overdraftLimit;
		this.interest = interest;
		this.threshold = threshold;
	}
	
	//getters and setters
	
	public String getCompteNumber() {
		return compteNumber;
	}

	public void setCompteNumber(String compteNumber) {
		this.compteNumber = compteNumber;
	}

	public float getSolde() {
		return solde;
	}

	public void setSolde(float solde) {
		this.solde = solde;
	}

	public User getTitular() {
		return titular;
	}

	public void setTitular(User titular) {
		this.titular = titular;
	}

	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	public String getRib() {
		return rib;
	}

	public void setRib(String rib) {
		this.rib = rib;
	}

	public float getAgio() {
		return agio;
	}

	public void setAgio(float agio) {
		this.agio = agio;
	}

	public boolean isOverdraftFacility() {
		return overdraftFacility;
	}

	public void setOverdraftFacility(boolean overdraftFacility) {
		this.overdraftFacility = overdraftFacility;
	}

	public float getOverdraftLimit() {
		return overdraftLimit;
	}

	public void setOverdraftLimit(float overdraftLimit) {
		this.overdraftLimit = overdraftLimit;
	}

	public float getInterest() {
		return interest;
	}

	public void setInterest(float interest) {
		this.interest = interest;
	}

	public float getThreshold() {
		return threshold;
	}

	public void setThreshold(float threshold) {
		this.threshold = threshold;
	}

	// method(s)
	/*public Notification() {
		
	}

	public activateAccount() {
		
	}

	public accountRefuse() {
		
	}

	public accountClosure() {
		
	}

	public accountSetting() {
		
	}

	public accountClosureRequest() {
		
	}

	public accountOpeningRequest() {
		
	}

	public transfert() {
		
	}*/

	public float calculateSolde( float solde, float transaction) {
		
		if (transaction <0) {
			solde-=transaction;
		}
		else {
			solde+=transaction;
		}
		return solde;
	}

}