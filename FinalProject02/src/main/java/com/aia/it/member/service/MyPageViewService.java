package com.aia.it.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.aia.it.member.dao.MemberDaoInterface;
import com.aia.it.member.model.LoginInfo;
import com.aia.it.member.model.Member;
import com.aia.it.member.model.MemberListView;

public class MyPageViewService {
	
	MemberDaoInterface dao;
	
	@Autowired
	SqlSessionTemplate template; 
	
	
	
	public Member getMyPageView(
	         HttpSession session, 
	         HttpServletRequest request) {
	      
	      dao=template.getMapper(MemberDaoInterface.class);
	      
	      // 세션을 가져온다.
	      session = request.getSession(true);
	       
	      //Member member = (Member) HttpSession.getAttribute("loginInfo");
	      LoginInfo loginInfo=(LoginInfo) session.getAttribute("loginInfo");
	      
	      if(loginInfo != null) {
	       
	          // 세션이 있으면 세션에 있는 loginInfo의 uidx를 데려온다.
	         loginInfo.getUidx(); 
	         //데려온 uidx를 이용하여 플래너의 리스트를 출력해준다.
	         Member member = dao.selectMyPage(loginInfo.getUidx());
	      }
	   

	      //리스트에 uidx로 데려온 결과를 담아준다.
	      myPageView = new Memb(dailyList);
	      System.out.println("나는 데일리의 리스트뷰!"+listView);
	      return listView;
	   }

}
