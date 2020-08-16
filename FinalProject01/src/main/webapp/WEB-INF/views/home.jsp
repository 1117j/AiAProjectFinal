<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/default.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	메인페이지 입니다.

</body>
</html>

<script>	
<c:if test="${empty loginInfo}">
alert('로그인 페이지로 이동합니다.');
location.href='login/login';
</c:if>
<c:if test="${!empty loginInfo}">
</c:if>
</script>