package com.aia.it.board.service;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aia.it.board.dao.BoardDaoInterface;
import com.aia.it.board.model.Board;
import com.aia.it.board.model.BoardList;

@Service
public class BoardListService {
	private BoardDaoInterface dao; 
	
	@Autowired
	private SqlSessionTemplate template;
	
	public BoardList getView(HttpServletRequest request, HttpServletResponse response) {
		
		//view로 전달할 결과 데이터
		BoardList listView = null; 
		
		dao = template.getMapper(BoardDaoInterface.class);
		
		//전체 게시물 수 
		int totalCnt = dao.totalCnt(); 
		//한페이지 노출 게시물 수
		final int BOARD_CNT_PER_PAGE = 5;
		//현재 페이지 번호
		int currentPageNum = 1; 
		String page = request.getParameter("page"); 
		
		if(page != null) {
			try {
				currentPageNum = Integer.parseInt(page);
			} catch (NumberFormatException e) {
				System.out.println("BoardListService : 숫자 타입의 문자열이 전달되지 않아 예외 발생");
			}
		}
			
		//게시물 첫번째 행 index 
		int startRow = 0; 
		//한페이지 노출할 리스트
		List<Board> boardList = null; 
		
		if(totalCnt > 0) {
			startRow = (currentPageNum - 1) * BOARD_CNT_PER_PAGE; 
			
			System.out.println("startRow: "+startRow);
			System.out.println("page : " + page); 
			boardList = dao.selectList(startRow, BOARD_CNT_PER_PAGE);
		}else {
			currentPageNum = 0; 
			boardList = Collections.emptyList(); 
		}
		
		listView = new BoardList(totalCnt, currentPageNum, boardList, BOARD_CNT_PER_PAGE, startRow); 
		
		System.out.println("board의 ListView: " + listView);
		return listView;

		}
		
		
	}
	

