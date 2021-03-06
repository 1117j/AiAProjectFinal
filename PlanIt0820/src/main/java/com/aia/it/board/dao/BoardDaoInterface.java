package com.aia.it.board.dao;

import java.util.List;

import com.aia.it.board.model.Board;
import com.aia.it.member.model.Member;

public interface BoardDaoInterface {

	// 게시판 리스트 출력
	List<Board> selectTotalList();

	int totalCnt();

	List<Board> selectList(int startRow, int count);

	// 게시판 글쓰기 입력
	int insertBoard(Board board);

	// 게시판 수정
	int editBoard(Board board);

	// 게시글 한개보여주기
	Board selectByBidx(int bidx);

	// 게시글 지우기
	int boardDelete(Board board);

	// 회원 이메일 인증 처리
	public int verify(String id, String code);
	
	public Member selectMemberById(String email);


}
