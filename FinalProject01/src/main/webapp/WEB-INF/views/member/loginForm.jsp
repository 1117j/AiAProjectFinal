<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>LoginForm</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
</style>

</head>

<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<div>
		<h2 class="subtitle">로그인</h2>
		<hr>
		<form method="post">
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
					<td><a id="custom-login-btn"
						href="javascript:loginWithKakao()" style="display: none;"> <img
							src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"
							width="200]" />
					</a>
					</td>
				</tr>


			</table>

		</form>
	</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>

<script type='text/javascript'>
        //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('d196650b4bb68185d7c7d6e42063fdef');

        function loginWithKakao() {
            // 로그인 창을 띄웁니다.
            Kakao.Auth.login({
                success: function(authObj) {
                    alert(JSON.stringify(authObj));

                    //Kakao.Auth.setAccessToken(authObj.access_token);

                    startWithKakao();


                },
                fail: function(err) {
                    alert(JSON.stringify(err));
                }
            });
        };

        function infoWithKakao() {
            // 로그인 성공시, API를 호출합니다.
            Kakao.API.request({
                url: '/v2/user/me',
                success: function(res) {
                    $('#content').html(JSON.stringify(res));
                    alert(JSON.stringify(res));
                    alert(res.propertise.nickname);
                    alert(res.propertise.profile_image);
                    alert(res.propertise.thumbnail_image);
                    alert(res.kakao_account.email);
                },
                fail: function(error) {
                    alert(JSON.stringify(error));
                }
            });
        };

        function statusWithKakao() {
            Kakao.Auth.getStatusInfo(function(statusObj) {
                alert(JSON.stringify(statusObj));
            });
        };



        function startWithKakao() {
            Kakao.Auth.getStatusInfo(function(statusObj) {
                if (statusObj.status == 'connected') {
                    $('#custom-login-btn').css('display', 'none');
                } else {
                    $('#custom-login-btn').css('display', 'inline');
                }
            });
        };

        function logoutWithKakao() {
            Kakao.Auth.logout(function() {
                alert('로그아웃');
                startWithKakao();
            });
        };
        //]]>
    </script>


    <script>
        $(document).ready(function() {
            startWithKakao();
        });
    </script>



</html>

