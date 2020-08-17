<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/default.css">

<style>
	.check_ok{color : blue; } 
	.check_not{color : red; }
	#idchk{display : none; }
</style>
</head>
<body>
	<%@ include file = "/WEB-INF/views/include/header.jsp" %>
	<div> 
		<h2 class = "subtitie"> 회원가입 </h2>
		<hr>
		<form id = "regForm" method = "post" enctype="multipart/form-data">
			<table class = "table" >
				<tr>
					<td>이메일</td>
					<td><input type = "email" name ="uid" id = "uid"> </td>
						<span  id="checkmsg"></span>
						<input type="checkbox" name="idchk" id="idchk"> 
				<tr>
					<td>닉네임</td>
					<td><input type = "text" name = "uname" required></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type = "text" name = "uphonenum" required></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type = "submit" name = "회원가입"> 
						<input type = "reset"> 
					</td>
				</tr>	
			</table>
		</form>
	</div>
	<%@ include file = "/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

<script> 
	
	$(document).ready(function(){
		
		$('#regForm').submit(function() {
			if(!$('#idchk').prop('checked')){
				alert('아이디 중복 체크를 해주세요'); 
				$('#uid').focus(); 
				return false; 
			}
		});
		
		$('#uid').focusin(function(){
			$(this).val(''); 
			$('#idchk').prop('checked', false); 
			$('#checkmsg').text(''); 
			$('#checkmsg').removeClass('check_not'); 
			$('#checkmsg').removeClass('check_ok'); 
		});
		
		$('#uid').focusout(function() {
			if($(this).val().length<1){
				$('#checkmsg').text("아이디 입력은 필수 입력항목입니다."); 
				$('#checkmsg').addClass('check_not'); 
				return false; 
			}
			
			//ajax 비동기 통신
			$.ajax({
				url : 'idCheck',
				data : { uid : $(this).val()},
				success : function(data){
					if(data == 'Y'){
						$('#checkmsg').text("사용가능한 아이디 입니다.");
						$('#checkmsg').addClass('check_ok');
						$('#idchk').prop('checked', true);
					} else {
						$('#checkmsg').text("사용이 불가능한 아이디 입니다.");
						$('#checkmsg').addClass('check_not');
						$('#idchk').prop('checked', false);
					}
				}
			});
		});

	});
	
</script>

<!-- <script>

	$(document).ready(function(){
		
		$('#regForm').submit(function(){
			if(!$('#idchk').prop('checked')){
				alert('아이디 중복 체크를 하세요.'); 
				$('#uid').focus(); 
				return false; 
			}
		}); 

		$('#uid').focusin(function(){
			$(this).val(''); 
			$('#idchk').prop('checked', false); 
			$('#checkmsg').text(''); 
			$('#checkmsg').removeClass('check_not'); 
			$('#checkmsg').removeClass('check_ok'); 
		}); 
		
		$('#uid').focusout(function(){
			if($(this).val().length<1){
				$('#checkmsg').text("이메일을 입력해주세요."); 
				$('#check,sg').addClass('check_not');
				return false; 
			}	
			
			//ajax 비동기 통신
			
			$.ajax({
				url : 'idCheck', 
				data : {uid : $(this).val()}, 
				success : function(data){
					if(data == 'Y'){
						$('#checkmsg').text("사용가능한 이메일입니다.");
						$('#checkmsg').addClass('check_ok');
						$('#idchk').prop('checked', true); 
					} else {
						$('#checkmsg').text("사용중인 이메일입니다."); 
						$('#checkmsg').addClass('check_not'); 
						$$('#idchk').prop('checked', false); 
					}	
				}
			}); 
		});
	}); 
	

</script> -->