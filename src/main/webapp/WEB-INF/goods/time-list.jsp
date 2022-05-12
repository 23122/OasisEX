<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul class="flex">
	<!-- for(TimeDTO dto : list) -->
	<c:forEach var="dto" items="${list}">
		<li class="goods">
			<ol class="wrap">
				<li class="timg"><img alt=""
					src="${dto.src }" width="280px">
					<div class="rate">
						${dto.rate}<span>%</span>
					</div></li>
				<li class="flex between sold-out">
					<p>${dto.soldTime}</p>
					<div>
						<span>${dto.goodsCount}</span>개 구매가능
					</div>
				</li>
				<li class="sale-goods">${dto.goods}</li>
				<li class="price"><span>${dto.price}</span>원 <span>오아시스배송</span></li>
			</ol>
		</li>
	</c:forEach>
</ul>