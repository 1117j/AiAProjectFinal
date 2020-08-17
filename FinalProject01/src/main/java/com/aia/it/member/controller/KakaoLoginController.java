package com.aia.it.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.aia.it.kakao_restApi;

@Controller
@RequestMapping("login/kakao")
public class KakaoLoginController {
	
	private kakao_restApi kakao_restapi=new kakao_restApi();
	 
	 @RequestMapping(value="/oauth",method= RequestMethod.GET)
	 public String kakaoConnect() {

	  StringBuffer url = new StringBuffer();
	  url.append("https://kauth.kakao.com/oauth/authorize?");
	  url.append("client_id=" + "자기의 client id를 넣어줍니다");
	  url.append("&redirect_uri=http://localhost:8080/mytest04/kakao/callback");
	  url.append("&response_type=code");

	  return "redirect:" + url.toString();
	 }
	 
	 @RequestMapping(value="/callback",produces="application/json",method= {RequestMethod.GET, RequestMethod.POST})
	 public String kakaoLogin(@RequestParam("code")String code,RedirectAttributes ra,HttpSession session,HttpServletResponse response )throws IOException {
	  
	  
	  System.out.println("kakao code:"+code); 

	  return "home";
	 }

	}