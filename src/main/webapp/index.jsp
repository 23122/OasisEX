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
						<button class="btn prev" type="button">&lt;<!-- &nbsp;&lt; --></button>
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
				<div class="flex wrap"></div>
			</section>
		</div>
	</main>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</body>
</html>