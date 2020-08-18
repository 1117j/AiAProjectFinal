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

	메인페이지 입니다.
	
	<c:if test="${empty loginInfo}"> 
	<a id="custom-login-btn" href="${kakao_url}"> <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222" /></a>
	</c:if>
	<c:if test="${!empty loginInfo}">
	</c:if>
	

</body>
</html>
