<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 추가입력</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<div>
		<form id="regForm" method="post">
			<table class="table">
				<tr>
					<td>카카오 이메일</td>
					<td> <input type="email" name="uid" id="uid value="${uid}" readonly>
					 </td>
				</tr>
				<tr>
					<td>닉네임 (기본값 : 설정되어있는 카카오 이름)</td>
					<td> <input type="text" name="uname" id="uname" value="${uname}" required> </td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td> <input type="text" name="uphonenum" id="phonenum" required> </td>
				</tr>
				<tr>
					<td></td>
					<td> 
						<input type="submit" value="회원가입">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
