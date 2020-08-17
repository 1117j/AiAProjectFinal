<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<style>
</style>
</head>
<body>
	<h1>글쓰기</h1>
	<h1>회원 리스트</h1>
	
	<c:if test = "${not empty memberListView}">
		${memberListView.memberTotalCnt}명
	</c:if>
	
	<div>
		<h1 class="subtitle">방명록 작성</h1>
	
		<form method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td><label for="uidx">이름</label></td>
					<td><input type="text" id="uidx" name="uidx" required></td>
				</tr>
				<tr>
					<td><label for="btitle">제목</label></td>
					<td><input type="text" id="btitle" name="btitle" required></td>
				</tr>
				
					<tr>
					<td><label for="uidx">일정</label></td>
					<td><a id="myBtn">내일정 추가하기</a>
					 
            		</td>
					
				</tr>
				<tr>
					<td><label for="bmsg">메시지</label></td>
					<td><textarea name="bmsg" id="bmsg" rows="10" cols="20"
							required></textarea></td>
				</tr>
				
			
				
				<tr>
					<td><label for="bphoto">사진</label></td>
					<td><input type="file" name="bphoto1" id="bphoto1"></td>
					
				</tr>
				<tr>
					<td><label for="bphoto">사진</label></td>
					<td><input type="file" name="bphoto2" id="bphoto2"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="글쓰기"> <input
						type="reset"></td>
				</tr>
			</table>
		</form>
		
		<div id="myModal" class="modal">
      <span class="close">확인</span> 
            <!-- Modal content -->
            <div class="modal-content" id="modal-content">
                
                    
            </div>
            </div>
	</div>
</body>
</html>
<script>
 
// modal변수 선언 #myModal
var modal = document.getElementById('myModal');
// btn변수 >> #mybtn누르면 실행
var btn = document.getElementById("myBtn");
//span변수 >> 창 닫기
//버튼을 클릭하면 모달창이 실행
btn.onclick = function() {
 modal.style.display = "block";
	
		
 var html = '';

 html += '<c:if test = "${not empty memberListView}">';

 html += '${memberListView.memberTotalCnt}명';
 html += '</c:if>';

 $('#modal-content').html(html);
}
var close = document.getElementsByClassName("close")[0];                                
close.onclick = function() {
    modal.style.display = "none";
   }
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}
</script>