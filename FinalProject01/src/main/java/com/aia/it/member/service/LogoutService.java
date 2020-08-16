package com.aia.it.member.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public class LogoutService {

	public String logout(HttpSession session) {
		
		session.invalidate();
	
		return "Y"; 
	}
	
}
