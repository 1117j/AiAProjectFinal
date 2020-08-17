package com.aia.it.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.aia.it.board.service.BoardListService;

@Controller
public class BoardListController {
	
	@Autowired
	private BoardListService listService; 
	
	public String getBoardList(Model model, HttpServletRequest request, HttpServletResponse response) {
		model.addAttribute("listView", listService.getView(request, response));
		
		return "board/boardList";
	
	}
}
