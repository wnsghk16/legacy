package com.legacy.web.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home() {
		logger.info("홈컨트롤러진입.");
		
		return "common/content.tiles";
	}

	@GetMapping("/join/joinForm")
	public String join() {
		logger.info("----------------------join--------------");		
		return "account/join.tiles";
	}

	@GetMapping("/overwatch/owplayer")
	public String owplayer() {
		logger.info("----------------------owplayer--------------");		
		return "overwatch/owplayer.tiles";
	}

	@GetMapping("/overwatch/owteam")
	public String owteam() {
		logger.info("----------------------owteam--------------");		
		return "overwatch/owteam.tiles";
	}
}
