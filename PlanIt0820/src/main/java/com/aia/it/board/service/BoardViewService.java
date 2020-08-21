package com.aia.it.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aia.it.board.dao.BoardDaoInterface;
import com.aia.it.board.model.Board;

@Service
public class BoardViewService {

	private BoardDaoInterface dao; 
	
	@Autowired
	private SqlSessionTemplate template; 
	
	public Board getBoardInfo(int bidx) {
		
		dao = template.getMapper(BoardDaoInterface.class);
		
		return dao.selectByBidx(bidx);
	}
}
