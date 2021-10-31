package kbpw.controller;



import java.io.IOException;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.type.TypeReference;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;

import kbpw.service.ListClientSearch;





@RestController
public class AJAXController {

	@PostMapping("/searchClient" )
	public void selectSearchClient(HttpServletResponse response, HttpServletRequest request,HttpSession session,
			@RequestParam("textSearch") int textSearch
			) throws IOException, ServletException {
	System.out.println("test");		ListClientSearch results = new ListClientSearch(session,"");
		
		response.setContentType("text/html");
	    response.setCharacterEncoding("UTF-8");	   
	    response.getWriter().write(results.listaClientToJSON());
	}
	
}
