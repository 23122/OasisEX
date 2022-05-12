<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/signup.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/member/signup.css">
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<section>
		<h1>메인</h1>
		<div class="signup wrap">
			<p>회원가입</p>
			<form action="#" method="post">
				<ul>
					<li>
						<label for="email">이메일</label>
						<input id="email" type="text" name="email" placeholder="이메일">
					</li>
					<li id="emsg" class="msg"></li>
					<li>
						<label for="pass">비밀번호</label>
						<input id="pass" type="password" name="pass" placeholder="비밀번호">
					</li>
					<li id="pmsg" class="msg"></li>
					<li>
						<label for="passCheck">비밀번호확인</label>
						<input id="passCheck" type="password" name="passCheck" placeholder="비밀번호확인">
					</li>
					<li id="pcmsg" class="msg"></li>
					<li>
						<label for="name">이름</label>
						<input id="name" type="text" name="name" placeholder="이름">
					</li>
					<li id="nmsg" class="msg"></li>
					<li>
						<button id="btn-join" type="submit" disabled="disabled">동의하고 가입하기</button>
					</li>
				</ul>
			</form>
		</div>
	</section>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</body>
</html>