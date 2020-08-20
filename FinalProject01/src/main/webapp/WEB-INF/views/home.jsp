<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/default.css"> --%>
</head>
<body>

<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<div>
		<h2 class="subtitle">로그인</h2>
		<hr>
		<form action="<c:url value='/login/login'/>" method="post" >
			<input type="hidden" name="redirectUri" value="${header.referer}"
				style="width: 50%;">

			<table class="table">
				<tr>
					<td></td>
					<td><input type="email" name="uid" value="${cookie.uid.value}"
						placeholder="이메일을 입력하세요."></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="password" name="upw"
						placeholder="비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="checkbox" name="remember" value="r"
						${cookie.uid != null ? 'checked' : '' }> 아이디 기억하기</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"></td>
				</tr>
				<hr>

				<tr>
				<td></td>
					<td><%-- <c:if test="${empty loginInfo}"> --%>
							<a id="custom-login-btn" href="${kakao_url}"> <img
								src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
								width="222" /></a></td> 
	<%-- 					</c:if> <c:if test="${!empty loginInfo}">
						</c:if></td> --%>
					<%-- <td id="kakao_id_login" style="text-align: center">
						<!-- <img
						width="223"
						src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" /> -->
						<!-- <a href ="https://kauth.kakao.com/oauth/authorize?client_id=36d2bcd100f7b96e12d7e3b37ca39aa9&redirect_uri=http://localhost:8080/it/login&response_type=code">
						<img
						width="223"
						src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" /></a></td> -->
						<a id="custom-login-btn" href="${kakao_url}"> <img
							src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
							width="222" /> --%>

<!-- 						<p id="token-result"></p>
 -->				</tr>



			</table>
	
	
	
	
<%-- 	<a id="custom-login-btn" href="${kakao_url}"> <img
								src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
								width="222" /></a>
	 --%>


</body>
</html>
