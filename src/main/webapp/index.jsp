<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css">
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp"></jsp:include>
	<main>
		<h1>메인</h1>
		<div>
			<p>인덱스</p>
		</div>
	</main>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
</body>
</html>