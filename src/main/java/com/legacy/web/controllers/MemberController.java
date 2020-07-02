package com.legacy.web.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.legacy.web.domains.Member;
import com.legacy.web.enums.Messenger;
import com.legacy.web.services.MemberService;

@RestController
@RequestMapping("/member")
public class MemberController {
	@Autowired MemberService memberService;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@PostMapping("/users")
	public Messenger join(@RequestBody Member member) {
		System.out.println("넘어온 회원정보"+member.toString());
		return Messenger.SUCCESS;
	}
	
	@PostMapping("/users/{userid}")
	public Messenger login(@PathVariable String userid, @RequestBody Member member) {
//		memberService.findPersonForAccess(person);
		System.out.println("넘어온 회원정보"+member.toString());
		return Messenger.SUCCESS;
	}
}