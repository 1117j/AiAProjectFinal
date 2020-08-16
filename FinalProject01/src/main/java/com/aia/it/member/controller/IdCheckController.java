package com.aia.it.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aia.it.member.service.IdCheckService;

@Controller
public class IdCheckController {
	
	@Autowired
	IdCheckService idchk;
	
	@RequestMapping("/member/idCheck")
	@ResponseBody // -> 메서드의 반환데이트를 뷰의 데이터로 사용
	public String idCheck( @RequestParam("uid") String uid) {
		System.out.println(uid);
		return idchk.checkId(uid); 
	}
	
}
