<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Montserrat+Alternates:wght@600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <title>메인페이지</title>
<head>

    <style> 
      
    html {height: 100%;}  
    
    body {
	    width:100%;
	    height:100%;
	    margin: 0;
  		padding-top: 80px;
  		padding-bottom: 40px;
  		font-family: "Nanum Gothic", arial, helvetica, sans-serif;
  		background-repeat: no-repeat;
  		/* 선형 그래디언트 + 두가지색상 이어줌 */
  		/* background:linear-gradient(to bottom right, #F5F5F5, #DCDCDC); */
	}
	
	table{
		width: 100%;
	    border-collapse: collapse;	
	}
	
	th, td {
    border: 1px solid #444444;
  }
	
	hr {
		width: 80%;
	    border: 0;
	    border-top: 1px solid #eee;
	}
     
    #loginFormLogo{
    	margin-top:18px; 
	    font-family: 'Montserrat Alternates', sans-serif;
	    color: #00CED1;
    }
    
    
    /*로그인 폼(카드) 위치*/
    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	
	.btn-primary {
	    color: #fff;
	    background-color: #00CED1; /* DarkTurquoise #00CED1 */
	    border-color: #00CED1;
	    }
	    
	
	.planListBtn, .boardListBtn{
		text-align : center; 
	}
	
	.form-control {
		
		border-radius: 0;
		font-size : 14px;
		BORDER-BOTTOM: 1px solid lightgrey;
		BORDER-LEFT: medium none;
		BORDER-RIGHT: medium none;
		BORDER-TOP: medium none;
		
	}
	
	.mainNav{
		list-style-type: none;
		margin: 0;
		padding: 0;
	}
	
	.mainNav li { 
		display: inline; 
		color: grey;
		padding-left: 20px; 
		padding-right: 20px;
		font-size: 20px; 
		text-align: center;
		 }
	
	
    .mainNav li a:hover {
			background-color: #CD853F;
			color: white;
		}
    
    </style>



</head>
<body>

<c:if test="${!empty loginInfo}">	
	<%-- <%@ include file="/WEB-INF/views/include/header.jsp"%>	
 --%>
	<div class="card align-middle" style="width:20rem; border-radius:20px;">	
        <div class="card-title" style="margin-top:20px;">
			<h2 id = "loginFormLogo" class="card-title text-center">Plan It!</h2>
		</div>
        

		<div class="card-body">
                <input type="hidden" name="redirectUri" value="${header.referer}"
				style="width: 50%;">
                <!-- <h6 class="form-signin-heading" style = "text-align : center; font-size: 12px; color: grey;">오늘의 픽</h6> -->
                <hr>
                
                <div class="mainPlanList" style = "text-align : center;">
              
              	<h6> 나의 플랜리스트 1</h6> 
              	
              	<table>
              		<tr> 
              			<td>내 플랜 1 </td>
              			<td>내 플랜 제목이야</td>
              			<td>수정</td>
              		</tr>
       				<tr> 
              			<td>내 플랜2</td>
              			<td>내플랜 2 제목</td>
              			<td>수정</td>
              		</tr>
              		<tr> 
              			<td>내 플랜2</td>
              			<td>내플랜 2 제목</td>
              			<td>수정</td>
              		</tr>
              		<tr> 
              			<td colspan = "3">
              			<div class = "planListBtn">
              			<a href = "<c:url value="/member/memberReg"/>"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
              			</div>
              			</td>
              		</tr>
              	</table>
              	
    
              	 
                </div>
       
       			<hr> 
       			
               
       			
                <div class="mainBoardList" style = "text-align : center;">
                
                <h6> 상위 게시글 리스트 1</h6> 
               
                <table>
              		<tr> 
              			<td>top 1 </td>
              			<td>안녕하세요~</td>
              			<td>창일</td>
              		</tr>
       				<tr> 
              			<td>top 2</td>
              			<td>제주도로 오세요</td>
              			<td>현정</td>
              		</tr>
              		<tr> 
              			<td>top3</td>
              			<td>즐거운 목포 여행</td>
              			<td>미선</td>
              		</tr>
              		<tr> 
              			<td colspan = "3">
              			<div class = "boardListBtn">
              			<a href = "<c:url value="/member/memberReg"/>"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
              			</div>
              			</td>
              		</tr>
              	</table>
   
                
                <hr> 
                
                
                <div class = "mainNavDiv">
               	<ul class = "mainNav"> 
               		<li><a href = "<c:url value="/member/memberReg"/>"><i class="fa fa-home" aria-hidden="true"></i></a></li>
               		<li><a href = "<c:url value="/member/memberReg"/>"><i class="fa fa-table" aria-hidden="true"></i></a></li>
               		<li><a href = "<c:url value="/member/memberReg"/>"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
               		<li><a href = "<c:url value="/member/memberReg"/>"><i class ="fa fa-user" aria-hidden="true"></i></a></li>
               	</ul>
                </div>
                </div>
				
				 
      
		</div>
	</div>
	 	
</c:if>


<c:if test="${empty loginInfo}">
	<script>
		location.href = 'login'; 
	</script>
</c:if>
</body>



