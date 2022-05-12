<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/visual.js"></script>
<script type="text/javascript" src="./js/index.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/member/signin.css">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<section>
		<h1>메인</h1>
		<div class="signin wrap">
			<p>로그인</p>
			<form action="#" method="post">
				<ul class="top">
					<li><input type="text" name="eamil" placeholder="이메일"></li>
					<li><input type="password" name="pass" placeholder="비밀번호"></li>
					<li class="flex between">
						<div class="flex">
							<input class="check" type="checkbox" id="check1"><label
								for="check1"></label><span>아이디저장</span>
						</div>
						<div>
							<a href="#">아이디 찾기</a>ㅣ<a href="#">비밀번호 변경</a>
						</div>
					</li>
					<li>
						<button>로그인</button>
					</li>
				</ul>
				<ul class="social-icon">
					<li class="flex between">
						<div>
							<button class='btn-social-login' style='background: #FFEB00'>
								<i class="xi-2x xi-kakaotalk text-dark"></i>
							</button>
							<p>카카오톡</p>
						</div>
						<div>
							<button class='btn-social-login' style='background: #1FC700'>
								<i class="xi-2x xi-naver"></i>
							</button>
							<p>네이버</p>
						</div>
						<div>
							<button class='btn-social-login' style='background: #D93025'>
								<i class="xi-2x xi-google"></i>
							</button>
							<p>구글</p>
						</div>
						<div>
							<button class='btn-social-login' style='background: #24292E'>
								<i class="xi-2x xi-apple"></i>
							</button>
							<p>애플</p>
						</div>
					</li>
				</ul>
				<ul class="singin-bottom">
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/member/signup">
								가입하시면 첫구매 100원!
							</a>
							<a href="<%=request.getContextPath()%>/member/signup">
								회원가입 >
							</a>
						</p>
					</li>
				</ul>
			</form>
		</div>
	</section>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</body>
</html>
