package kbpw.model;

public class Client {

	private int idClient;
	private String peselRegon;
	private String userName;
	private String companyName;
	private String address;
	private String typeClient;
	private String privatePhoneNumber;
	private String companyPhoneNumber;
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Client(int idClient, String peselRegon, String userName, String companyName, String address,
			String typeClient, String privatePhoneNumber, String companyPhoneNumber) {
		super();
		this.idClient = idClient;
		this.peselRegon = peselRegon;
		this.userName = userName;
		this.companyName = companyName;
		this.address = address;
		this.typeClient = typeClient;
		this.privatePhoneNumber = privatePhoneNumber;
		this.companyPhoneNumber = companyPhoneNumber;
	}
	public int getIdClient() {
		return idClient;
	}
	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	public String getPeselRegon() {
		return peselRegon;
	}
	public void setPeselRegon(String peselRegon) {
		this.peselRegon = peselRegon;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTypeClient() {
		return typeClient;
	}
	public void setTypeClient(String typeClient) {
		this.typeClient = typeClient;
	}
	public String getPrivatePhoneNumber() {
		return privatePhoneNumber;
	}
	public void setPrivatePhoneNumber(String privatePhoneNumber) {
		this.privatePhoneNumber = privatePhoneNumber;
	}
	public String getCompanyPhoneNumber() {
		return companyPhoneNumber;
	}
	public void setCompanyPhoneNumber(String companyPhoneNumber) {
		this.companyPhoneNumber = companyPhoneNumber;
	}
	
	
}
