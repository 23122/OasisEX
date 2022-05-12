<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/visual.js"></script>
<script type="text/javascript" src="./js/index.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/index.css">
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<main>
		<h1>메인</h1>
		<div class="wrap">
			<section id="visual">
				<h1>비쥬얼영역</h1>
				<div class="wrap area">
					<ol class="imgs flex">
						<c:forEach varStatus="i" begin="0" end="17">
							<li value="${i.index}"><a href="#"></a></li>
						</c:forEach>
					</ol>
					<!--//////////////////////////////-->
					<div>
						<button class="btn prev" type="button">
							&lt;
							<!-- &nbsp;&lt; -->
						</button>
						<button class="btn next" type="button">&gt;</button>
					</div>
					<ul class="bullet flex between">
						<c:forEach varStatus="i" begin="1" end="18">
							<li></li>
						</c:forEach>
					</ul>
				</div>
			</section>
			<section id="main-con">
				<h1>메인컨텐츠</h1>
				<div class="wrap">
					<!-- 타임특가 -->
					<section id="time">
						<h1>타임특가</h1>
						<div class="wrap">
							<!-- time-list.jsp -->
						</div>
						<div>
							<button class="btn prev" type="button">&lt;</button>
							<button class="btn next" type="button">&gt;</button>
						</div>
						<ol class="bullet flex center">
							<li></li>
							<li></li>
						</ol>
					</section>
					<!-- ////////////////////////////// -->
					<!-- 오! 감동 -->
					<section id="prod">
						<h1>오감동 영역</h1>
						<div class="wrap">
							<div class="info">
								<p class="tit">오!감동</p>
								<p class="sub">매일매일 오아시스에 가고 싶은 이유, 오아시스가 드리는 감동</p>
							</div>
							<div class="disp">
								<!-- list.jsp -->
							</div>
							<div class="flex between">
								<div>
									<a href="#">#바다의선물</a>
									<a href="#">#땅의황제</a>
									<a href="#">#제주의청정함</a>
								</div>
								<div>
									<a href="#">오!감동 상품 더보기</a>>
								</div>
							</div>
						</div>
					</section>
					<!-- ////////////////////////////// -->
				</div>
			</section>
		</div>
	</main>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</body>
</html>