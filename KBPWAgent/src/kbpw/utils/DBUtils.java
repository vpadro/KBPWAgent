package kbpw.utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kbpw.utils.ReadSql;
import kbpw.jdbc.ConnectionUtils;
import kbpw.model.Client;
import kbpw.model.StartEndInsurance;
import kbpw.model.StartEndInsuranceStat;



public class DBUtils {
	public static ArrayList<StartEndInsuranceStat> selectEndInsuranceStat() throws ClassNotFoundException, SQLException, IOException {
		Connection con = ConnectionUtils.getDbConnection();
		ArrayList<StartEndInsuranceStat> fList = new ArrayList<StartEndInsuranceStat>();
			String sql = new ReadSql("ListStartEndInsuranceStat.sql").getSql();
			PreparedStatement pstm = con.prepareStatement(sql);
			try {;
				ResultSet rs = pstm.executeQuery();
				try {
					while(rs.next()) {
						StartEndInsuranceStat f = new StartEndInsuranceStat(
										rs.getInt("liczba_polis"), 
										rs.getInt("liczba_klient"), 
										rs.getInt("liczba_pojazd")
									);
						
						fList.add(f);
					}
				}
				finally {try {rs.close();} catch (Exception ignored) {}}
			}
			finally {try {pstm.close();} catch (Exception ignored) {}}
			return fList;
	  }
	public static ArrayList<StartEndInsurance> selectEndInsurance() throws ClassNotFoundException, SQLException, IOException {
		Connection con = ConnectionUtils.getDbConnection();
		ArrayList<StartEndInsurance> fList = new ArrayList<StartEndInsurance>();
			String sql = new ReadSql("ListStartEndInsurance.sql").getSql();
			PreparedStatement pstm = con.prepareStatement(sql);
			try {;
				ResultSet rs = pstm.executeQuery();
				try {
					while(rs.next()) {
						StartEndInsurance f = new StartEndInsurance(
										rs.getInt("id_polisy"), 
										rs.getString("nazwa"), 
										rs.getString("nazwa_firmy"),
										rs.getString("numer_polisy"),
										rs.getDate("data_konca"),
										rs.getString("typ_klienta"),
										rs.getInt("liczba_rat"), 
										rs.getString("nr_telefonu_prywatny"),
										rs.getString("nr_telefonu_firmowy")
									);
						
						fList.add(f);
					}
				}
				finally {try {rs.close();} catch (Exception ignored) {}}
			}
			finally {try {pstm.close();} catch (Exception ignored) {}}
			return fList;
	  }
	public static ArrayList<Client> selectClientSearch(String searchText) throws ClassNotFoundException, SQLException, IOException {
		Connection con = ConnectionUtils.getDbConnection();
		ArrayList<Client> fList = new ArrayList<Client>();
			String sql = "SELECT id_klinta, pesel_regon, imie_nazwisko, nazwa_firmy, adres, typ_klienta, nr_telefonu_prywatny, nr_telefonu_firmowy FROM projekt.w_klient  ";
			PreparedStatement pstm = con.prepareStatement(sql);
			try {;
				ResultSet rs = pstm.executeQuery();
				try {
					while(rs.next()) {
						Client f = new Client(
										rs.getInt("id_klinta"), 
										rs.getString("pesel_regon"), 
										rs.getString("imie_nazwisko"),
										rs.getString("nazwa_firmy"),
										rs.getString("adres"),
										rs.getString("typ_klienta"),
										rs.getString("nr_telefonu_prywatny"),
										rs.getString("nr_telefonu_firmowy")
									);
						
						fList.add(f);
					}
				}
				finally {try {rs.close();} catch (Exception ignored) {}}
			}
			finally {try {pstm.close();} catch (Exception ignored) {}}
			return fList;
	  }

}