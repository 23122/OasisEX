<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<h1>header.jsp헤더</h1>
	<div class="wrap">
		<!--//////////////////////////////////////-->
		<section id="ht">
			<h1>해더상단</h1>
			<div class="wrap flex between">
				<!--//////////////////////////////////////-->
				<section id="htl">
					<h1>해더상단왼쪽</h1>
					<h2 class="logo">
						<a href="<%=request.getContextPath()%>"> <img alt="OASiS" src="/web0502/images/common/h1_logo.png">
						</a>
					</h2>
					<div class="wrap">
						<ul class="line flex">
							<li><a href="#">마이페이지</a></li>
							<li><a href="#">고객센터</a></li>
							<li><a href="#">이벤트/기획전</a></li>
						</ul>
					</div>
				</section>
				<!--//////////////////////////////////////-->
				<section id="htr">
					<h1>해더상단오른쪽</h1>
					<div class="wrap">
						<ul class="line flex">
							<li><a href="<%=request.getContextPath()%>/member/signin">로그인</a></li>
							<li><a href="<%=request.getContextPath()%>/member/signup">회원가입</a></li>
							<li><a href="#">베스트 후기</a></li>
							<li><a href="#">주문/배송조회</a></li>
							<li><a href="#">장바구니</a></li>
						</ul>
					</div>
				</section>
				<!--//////////////////////////////////////-->
			</div>
		</section>
		<!--//////////////////////////////////////-->
		<section id="hc">
			<h1>해더중간</h1>
			<div class="wrap">
				<ul class="seach flex right">
					<li><input onfocus="openKeyword()" type="text"
						placeholder="바른먹거리를 찾으세요?" id="keyword" class="keywordSearch"
						value="" autocomplete="off"
						style="outline: none; - -darkreader-inline-outline: initial;"
						data-darkreader-inline-outline=""></li>
				</ul>
			</div>
		</section>
		<!--//////////////////////////////////////-->
		<section id="hb">
			<h1>헤더하단</h1>
			<div class="wrap">
				<ul class="flex around">
					<li id="gnb-menu">
						<a href="#" class="flex">
							<span id="gnb" class="flex column center">
								<span>
									<i></i>
									<i></i>
									<i></i>
								</span>
							</span>
						<span>전체상품 보기</span>
						</a>
						<ol class="sub">
							<li>
								<p>서브메뉴1</p>
								<ol class="sub02">
									<li>서서브1_1</li>
									<li>서서브1_2</li>
									<li>서서브1_3</li>
								</ol>
							</li>
							<li>
								<p>서브메뉴2</p>
								<ol class="sub02">
									<li>서서브2_1</li>
									<li>서서브2_2</li>
									<li>서서브2_3</li>
								</ol>
							</li>
							<li>
								<p>서브메뉴3</p>
								<ol class="sub02">
									<li>서서브3_1</li>
									<li>서서브3_2</li>
									<li>서서브3_3</li>
								</ol>
							</li>
						</ol>
					</li>
					
					<li><a href="#">오!감동</a></li>
					<li><a href="#">인기추천</a></li>
					<li><a href="#">오픈마켓</a></li>
					<li><a href="#">브랜드몰</a></li>
					<li><a href="#">소상공인</a></li>
					<li><a href="#">성남장터</a></li>
					<li><a href="#">찬들마루</a></li>
					<li><a href="#">구독RUN</a></li>
				</ul>
			</div>
		</section>
		<!--//////////////////////////////////////-->
	</div>
</header>