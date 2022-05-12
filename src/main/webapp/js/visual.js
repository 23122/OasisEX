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
var size = 415;
var delay = 3000;
var speed = 1000;
var timeout;
var flag = 0;
//jsp파일에 배열적용
function imgLoading() {
	var lis = $(".imgs li");//imgs li 태그
	for (var i = 0; i < imgUrls.length; i++) {
		//imgs li 태그에 i번째 자식요소 a태그 = background-image imgUrls[i] 적용
		lis.eq(i).find("a").css("background-image", imgUrls[i]);
	}
	//불릿이미지에 첫번째꺼 디자인
	$(".bullet li").eq(0).addClass("target");
}


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
	$(".imgs, #visual .btn, #visual .bullet li").hover(function() {
		stop();
	}, function() {
		delayStart();
	});

	$("#visual .next").click(nextClicked);
	$("#visual .prev").click(prevClicked);
	$("#visual .bullet li").click(bulletClicked);
});

function bulletClicked() {
	//클릭한 블잇의 인덱스 번호
	var idx = $(this).index();
	//블릿의 인덱스랑 이미지들의 value랑 일치
	var lis = $(".imgs li");
	var pos;
	for (var i = 0; i < lis.length; i++) {
		var v = lis.eq(i).val();
		if (v == idx) {
			//인덱스와 이미지가 일치하는 이미지
			pos = i;//i=img위치
			break;
		}
	}
	//이미지 이동
	if (flag == 0) {
		move(pos);
		var blis = $(".bullet li");
		blis.removeClass("target");
		blis.eq(idx).addClass("target");
	}
}

function move(_pos) {
	var imgs = $(".imgs");
	for (var i = 0; i < _pos; i++) {
		var first = $(".imgs li:first-child");
		var last = $(".imgs li:last-child");
		imgs.css("left", -size);
		last.after(first);
		imgs.css("left", 0);
	}
}
function nextClicked() {
	if (flag == 0) next();
}

function prevClicked() {
	if (flag == 0) prev();
}
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
	flag = 1;
	var imgs = $(".imgs");
	var first = $(".imgs li:first-child");
	var last = $(".imgs li:last-child");
	var blis = $(".bullet li");
	//아이디.animate({방향:픽셀},속도,실행후 처리)
	imgs.animate({ left: -size }, speed, function() {
		//애니메이트가 실행후에 처리하는 구간..
		last.after(first);//첫번째 이미지를 제일뒤로 이동
		//.css(); : .css()로 선택한 요소의 css 속성값을 가져오거나 style 속성을 추가합니다.
		imgs.css("left", 0);//-size 만큼 이동한거리를 0으로 바꿈
		var li_fv = $(".imgs li:first").val();
		//bullet에 적용된 className
		blis.removeClass("target");
		blis.eq(li_fv % blis.length).addClass("target");
		flag = 0;
	});
}

function prev() {
	flag = 1;
	var imgs = $(".imgs");
	var first = $(".imgs li:first-child");
	var last = $(".imgs li:last-child");
	var blis = $(".bullet li");
	var li_fv = $(".imgs li:first").val();
	//last를 first전으로 보냄
	first.before(last);
	////-size 만큼 left값 설정
	imgs.css("left", -size);
	//아이디.animate({방향:픽셀},속도,실행후 처리)
	//-size에서 0픽셀로 이동
	imgs.animate({ left: 0 }, speed, function() {
		//-size 만큼 설정된 left값 0으로 수정
		imgs.css("left", 0);
		blis.removeClass("target");
		blis.eq(li_fv % blis.length - 1).addClass("target");
	});
	flag = 0;
}