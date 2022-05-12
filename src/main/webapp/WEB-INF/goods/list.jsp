<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="flex between">
	<c:forEach var="dto" items="${list}">
		<li class="good-list">
			<ol class="oh warp">
				<li class="g-img" style="background-image: url('${dto.gImg}');">
					<!-- 백그라운드 이미지 -->
				</li>
				<li class="title">${dto.title}</li>
				<li class="allPrice"><span class="saleRate">${String.format("%2.0f",dto.saleRate*100)}%</span>
					<span class="price sale">${dto.price}</span> <span
					class="price org">${dto.orginPrice}</span></li>
			</ol>
		</li>
	</c:forEach>
</ul>