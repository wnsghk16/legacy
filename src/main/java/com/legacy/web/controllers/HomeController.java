package com.legacy.web.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Controller HomeController = new Controller()
 * SessionAttributes[] context = new SessionAttributes[4]
 */
@Controller
@SessionAttributes({"context","css","javascript","image"})
public class HomeController {	
	@Autowired HttpSession session;
	@Autowired HttpServletRequest request;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home(HttpSession session, HttpServletRequest request) {
		session.setAttribute("context", request.getContextPath());
		session.setAttribute("javascript", request.getContextPath()+"/resources/js");
		session.setAttribute("css", request.getContextPath()+"/resources/css");
		session.setAttribute("image", request.getContextPath()+"/resources/img");
		
		return "main/home.tiles";
	}	

	@GetMapping("/location/{dir}/{page}")
	public String move(@PathVariable("dir") String dir,
			@PathVariable("page") String page) {	
		return String.format("%s/%s.jsp", dir, page);
	}
	
	@GetMapping("/user/{dir}/{page}")
	public String usermove(@PathVariable("dir") String dir,
			@PathVariable("page") String page) {	
		return String.format("%s/%s.user", dir, page);
	}
	
	@GetMapping("/tiles/{dir}/{page}")
	public String tilesmove(@PathVariable("dir") String dir,
			@PathVariable("page") String page) {	
		return String.format("%s/%s.tiles", dir, page);
	}
	
}
