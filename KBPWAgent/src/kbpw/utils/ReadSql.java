package kbpw.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;

public class ReadSql {
	private String sql;
	
	public ReadSql(String fileName) throws IOException {      
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream inputStream = classLoader.getResourceAsStream("resources/" + fileName);
		
		this.sql = IOUtils.toString(inputStream, "UTF-8"); 
		inputStream.close();
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}
}
