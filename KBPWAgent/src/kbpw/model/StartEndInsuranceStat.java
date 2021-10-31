package kbpw.model;

public class StartEndInsuranceStat {
	private int nrPolis;
	private int nrClient;
	private int nrCar;
	public StartEndInsuranceStat() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StartEndInsuranceStat(int nrPolis, int nrClient, int nrCar) {
		super();
		this.nrPolis = nrPolis;
		this.nrClient = nrClient;
		this.nrCar = nrCar;
	}
	public int getNrPolis() {
		return nrPolis;
	}
	public void setNrPolis(int nrPolis) {
		this.nrPolis = nrPolis;
	}
	public int getNrClient() {
		return nrClient;
	}
	public void setNrClient(int nrClient) {
		this.nrClient = nrClient;
	}
	public int getNrCar() {
		return nrCar;
	}
	public void setNrCar(int nrCar) {
		this.nrCar = nrCar;
	}
	
	
	
}
