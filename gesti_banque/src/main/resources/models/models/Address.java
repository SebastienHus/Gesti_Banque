package models;

public class Address {

	// param(s)
	private String streetNumber;
	private String street;
	private String town;
	private int zipcode;
	private String country;
	private String complement;

	// Constructor(s)
	public Address() {
		super();
	}

	public Address(String streetNumber, String street, String town, int zipcode, String country, String complement) {
		super();
		this.streetNumber = streetNumber;
		this.street = street;
		this.town = town;
		this.zipcode = zipcode;
		this.country = country;
		this.complement = complement;
	}

	// method(s)

	// getters and setters
	public String getStreetNumber() {
		return streetNumber;
	}

	public void setStreetNumber(String streetNumber) {
		this.streetNumber = streetNumber;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getComplement() {
		return complement;
	}

	public void setComplement(String complement) {
		this.complement = complement;
	}

}
