package com.aia.it.member.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aia.it.member.service.MemberListService;

@Controller
public class MemberListController {
	
	@Autowired
	MemberListService listService;
	
	//멤버리스트 가져오기
	@RequestMapping("/member/memberList")
	public String getMemberList(
			Model model, 
			HttpServletRequest request, 
			HttpServletResponse response) throws SQLException {
		
		model.addAttribute("listView", listService.getView(request, response));
		return "/member/memberList";
	}
	
	
}
 