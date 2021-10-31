package kbpw.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kbpw.model.Client;
import kbpw.utils.DBUtils;

public class ListClientSearch {
	private ArrayList<Client> listClient;
	
	public  ListClientSearch(HttpSession session,String searchText) {
		
		try {
			listClient = DBUtils.selectClientSearch(searchText);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	public String listaClientToJSON() {
		ObjectMapper mapper = new ObjectMapper();
		String json = "{}";
		try {
			json = mapper.writeValueAsString(this.listClient);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}		
		
	
	
	
	
	
}
