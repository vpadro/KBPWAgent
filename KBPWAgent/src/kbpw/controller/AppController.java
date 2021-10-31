package kbpw.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import kbpw.service.ListClientSearch;
import kbpw.service.ListStartInformation;


@Controller
public class AppController {
	@RequestMapping({"/brakUprawnien","/*"})
	public ModelAndView brakUprawnien() {
		return new ModelAndView("brakUprawnien");
	}
	@GetMapping({"/pulpit"})
	public ModelAndView ggaulpits(HttpServletRequest request, HttpSession session) throws JsonProcessingException {
		Map<String, Object> model = new HashMap<String, Object>();
		ListStartInformation results = new ListStartInformation(session);
		model.put("listEndInsur", results.getListEndInsurance() );
		model.put("listEndInsurStat", results.getListEndInsuranceStat() );
		return new ModelAndView("pulpit", "model", model);
	}
	@GetMapping({"/klient"})
	public ModelAndView gklient(HttpServletRequest request, HttpSession session) throws JsonProcessingException {
		Map<String, Object> model = new HashMap<String, Object>();
		ListClientSearch results = new ListClientSearch(session,"");
		model.put("tekstyJson", results.listaClientToJSON());
		return new ModelAndView("klient", "model", model);
	}
}
