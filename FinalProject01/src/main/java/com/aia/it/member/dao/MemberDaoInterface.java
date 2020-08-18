package com.aia.it.member.dao;

import java.util.List;
import java.util.Map;

import com.aia.it.member.model.Member;

public interface MemberDaoInterface {

	
	//회원가입
	int insertMember(Member member);
	
	int insertKakaoMember(Member member); 
	
	//전체 회원리스트 반환
	public List<Member> selectTotalList(); 
	
	//전체 멤버의 List<Member>로 반환
//	public List<Member> selectList(Map Search); 
	public List<Member> selectList(int starRow, int count);

	
	//idx 기반 검색한 회원 정보 반환 
	public Member SelectByUidx(int uidx); 
	
	// 전체 게시물의 개수 : 검색 포함
	public int totalCnt(); 
	
	public Member selectByIdpw(String uid, String upw);
	
	int selectById(String uid); 
	
	int selectByUname(String uname); 

}
