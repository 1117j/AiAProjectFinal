package com.aia.it.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aia.it.board.model.BoardEditRequest;
import com.aia.it.board.service.BoardEditService;
import com.aia.it.board.service.BoardListService;

@Controller
public class BoardEditController {
	
	@Autowired
	private BoardEditService editService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getBoardEditForm(@RequestParam("bidx") int bidx, Model model) { 
		model.addAttribute("board", editService.getBoard(bidx));
		return "board/boardEditForm"; 
	}
	
	public String getBoardEdit(BoardEditRequest editReq, 
								HttpServletRequest request, 
								Model model) { 
		System.out.println("게시판 수정 controller: " + editReq);
		
		model.addAttribute("result", editService.boardEdit(editReq, request));
		 return "board/boardEdit"; 
	}
	
}
