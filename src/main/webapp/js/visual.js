/**
 * 
 */
//사진파일배열
const imgUrls = [
	"url(./images/visual/img_01.gif)",
	"url(./images/visual/img_02.gif)",
	"url(./images/visual/img_03.jpg)",
	"url(./images/visual/img_04.jpg)",
	"url(./images/visual/img_05.jpg)",
	"url(./images/visual/img_06.jpg)",
	"url(./images/visual/img_07.jpg)",
	"url(./images/visual/img_08.jpg)",
	"url(./images/visual/img_09.gif)",
	"url(./images/visual/img_10.gif)",
	"url(./images/visual/img_11.gif)",
	"url(./images/visual/img_12.gif)",
	"url(./images/visual/img_13.gif)",
	"url(./images/visual/img_14.gif)",
	"url(./images/visual/img_15.jpg)",
	"url(./images/visual/img_16.gif)",
	"url(./images/visual/img_17.jpg)",
	"url(./images/visual/img_18.jpg)"
];
//jsp파일에 배열적용
function imgLoading() {
	var lis=$(".imgs li");//imgs li 태그
	for(var i=0; i<imgUrls.length;i++){
		//imgs li 태그에 i번째 자식요소 a태그 = background-image imgUrls[i] 적용
		lis.eq(i).find("a").css("background-image", imgUrls[i]);
	}
}
var size = 415;
var delay = 3000;
var speed = 1000;
var timeout;
//페이지 실행
$(function() {
	imgLoading();
	//처음시작은 
	delayStart();
	//브라우져가 visibilityState 가 변경될때 실행되는 이벤트
	document.addEventListener("visibilitychange", function() {
		var state = document.visibilityState;
		console.log(state);
		//화면이 숨겨졌을때
		if (state == "hidden") {
			stop();
		} 
		//화면이 보였을때
		else if (state == "visible") {
			delayStart();
		}
	});
	//hover(function(){마우스 올렸을경우},function(){아닌경우});
	$(".imgs").hover(function() {
		stop();
	}, function() {
		delayStart();
	});
});
//다시 슬라이드 시작
function delayStart() {
	timeout = setTimeout(autoPlay, delay);
}
//재귀함수 무한루프
function autoPlay() {
	console.log("timeout 시작");//콘솔에 System.out.print();
	next();
	//setTimeout([함수명], [함수가 실행될 시간]);
	timeout = setTimeout(autoPlay, delay);
}
function stop() {
	// clearTimeout = setTimeout을 취소
	clearTimeout(timeout);
	console.log("timeout 해제");//콘솔에 System.out.print();
}

//다음이미지를 왼쪽으로 이동: 호출시 1번만 실행
function next() {
	var imgs = $(".imgs");
	var first = $(".imgs li:first-child");
	var last = $(".imgs li:last-child");
	//아이디.animate({방향:픽셀},속도,실행후 처리)
	imgs.animate({ left: -size }, speed, function() {
		//애니메이트가 실행후에 처리하는 구간..
		last.after(first);//첫번째 이미지를 제일뒤로 이동
		//.css(); : .css()로 선택한 요소의 css 속성값을 가져오거나 style 속성을 추가합니다.
		imgs.css("left", 0);//-size 만큼 이동한거리를 0으로 바꿈
	});
}