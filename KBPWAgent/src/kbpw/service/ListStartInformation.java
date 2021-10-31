package kbpw.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import kbpw.model.StartEndInsurance;
import kbpw.model.StartEndInsuranceStat;
import kbpw.utils.DBUtils;

public class ListStartInformation {
	private ArrayList<StartEndInsurance> listEndInsurance;
	private ArrayList<StartEndInsuranceStat> listEndInsuranceStat;
	public  ListStartInformation(HttpSession session) {
		try {
			listEndInsurance = DBUtils.selectEndInsurance();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			listEndInsuranceStat = DBUtils.selectEndInsuranceStat();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

	public ArrayList<StartEndInsurance> getListEndInsurance() {
		return listEndInsurance;
	}

	public void setListEndInsurance(ArrayList<StartEndInsurance> listEndInsurance) {
		this.listEndInsurance = listEndInsurance;
	}

	public ArrayList<StartEndInsuranceStat> getListEndInsuranceStat() {
		return listEndInsuranceStat;
	}

	public void setListEndInsuranceStat(ArrayList<StartEndInsuranceStat> listEndInsuranceStat) {
		this.listEndInsuranceStat = listEndInsuranceStat;
	}
	
	
	
	
	
}
