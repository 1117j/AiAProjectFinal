<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
	<h3 id="header">Plan it</h3>
	<ul id="nav">
		<c:if test="${empty loginInfo}">
		<li><a href="${pageContext.request.contextPath}/member/memberReg">회원가입</a></li>
		<li><a href="<c:url value="/login/login"/>">로그인</a></li>
		</c:if>
		<c:if test="${!empty loginInfo}">
		<li><a href="<c:url value="/member/memberList"/>">회원 리스트</a></li>
		<li><a href="<c:url value="/login/logout"/>">로그아웃</a></li>
		<li><a href="<c:url value="/board/boardWrite"/>">로그아웃</a></li>
		<li><a href="<c:url value="/board/boardList"/>">커뮤니티</a></li>
		
		</c:if>

	</ul>
	
	
	
	
	
	
	