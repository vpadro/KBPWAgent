package kbpw.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class StartEndInsurance {
	private int idPolisy;
	private String userName;
	private String companyInsName;
	private String nrPolisy;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd", locale="pl", timezone="Europe/Warsaw")
	private Date endDate;
	private String typeClient;
	private int numberInstalments;
	private String privatePhoneNumber;
	private String companyPhoneNumber;
	public StartEndInsurance() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StartEndInsurance(int idPolisy, String userName, String companyInsName, String nrPolisy, Date endDate,
			String typeClient, int numberInstalments, String privatePhoneNumber, String companyPhoneNumber) {
		super();
		this.idPolisy = idPolisy;
		this.userName = userName;
		this.companyInsName = companyInsName;
		this.nrPolisy = nrPolisy;
		this.endDate = endDate;
		this.typeClient = typeClient;
		this.numberInstalments = numberInstalments;
		this.privatePhoneNumber = privatePhoneNumber;
		this.companyPhoneNumber = companyPhoneNumber;
	}
	public int getIdPolisy() {
		return idPolisy;
	}
	public void setIdPolisy(int idPolisy) {
		this.idPolisy = idPolisy;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCompanyInsName() {
		return companyInsName;
	}
	public void setCompanyInsName(String companyInsName) {
		this.companyInsName = companyInsName;
	}
	public String getNrPolisy() {
		return nrPolisy;
	}
	public void setNrPolisy(String nrPolisy) {
		this.nrPolisy = nrPolisy;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getTypeClient() {
		return typeClient;
	}
	public void setTypeClient(String typeClient) {
		this.typeClient = typeClient;
	}
	public int getNumberInstalments() {
		return numberInstalments;
	}
	public void setNumberInstalments(int numberInstalments) {
		this.numberInstalments = numberInstalments;
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
