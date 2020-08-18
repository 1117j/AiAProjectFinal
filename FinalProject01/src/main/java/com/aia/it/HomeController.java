package com.aia.it;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aia.it.member.controller.KakaoApiController;

@Controller
public class HomeController {

	@RequestMapping(value = "/home")
	    public String kakaoLogin() {
	        
	        return "home";
	        
	}
	
}


//	@RequestMapping("/home")
//	public String home() {
//
////		String str = null;
////		str.toString();
//
//		return "home";
//	}
//
//	@ExceptionHandler(NullPointerException.class)
//	public String handleNullPointerException(NullPointerException e) {
//
//		e.printStackTrace();
//
//		return "error/nullPointer";
//
//	}
//}
