package com.aia.it.member.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.aia.it.member.dao.MemberDaoInterface;
import com.aia.it.member.model.Member;
import com.aia.it.member.model.MemberRegRequest;

@Service
public class MemberRegService {
	
	private MemberDaoInterface dao; 
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
		public String memberReg(MemberRegRequest regRequest, HttpServletRequest request) { 
			
			dao = sessionTemplate.getMapper(MemberDaoInterface.class); 
			
			int result = 0; 
			
			String regResult = ""; 
			
			//DAO 메서드 전달할 객체 -> 입력 데이터 설정하는 절차 
			
			Member member = regRequest.toMember(); 
			System.out.println("입력 전 idx ->" + member.getUidx());

			try {
			MultipartFile file = regRequest.getPhoto(); 
			System.out.println(regRequest);
			
			//사진 있을 때 물리적으로 저장, 없을 경우 기본이미지 파일의 경로를 저장
			if(file != null && !file.isEmpty() && file.getSize() > 0) {
				
				String uri = request.getSession().getServletContext().getInitParameter("memberUploadPath");
				String realPath = request.getSession().getServletContext().getRealPath(uri); 
				String newFileName = System.nanoTime() +  "_" + file.getOriginalFilename(); 
				
				File saveFile = new File(realPath, newFileName); 	
				file.transferTo(saveFile);
				System.out.println("저장완료: " + newFileName);
			
				member.setUphoto(newFileName); 
			}else {
				member.setUphoto("default.png");
			}
			
//			if(member.ukakao == "Y") {
//				result = dao.insertKakaoMember(member); }
//				else {
				result = dao.insertMember(member); //}
				

				}
		 catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
			}
			
			if(result != 0) {
				
				// 회원가입 성공 시
				regResult = "<script>" + "alert('가입이 완료되었습니다.');" + "location.href=\"/login/member/kakaiLoginForm\"</script>";
			} else {
				
				// 회원가입 실패 시
				regResult = "<script>" + "alert('가입에 실패했습니다.');" + "history.go(-1);" + "</script>";
			}
			
			return regResult; 
		}
	

}
