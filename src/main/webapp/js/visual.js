/**
 * 
 */
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
function imgLoading() {
	var lis=$(".imgs li");
	for(var i=0; i<imgUrls.length;i++){
		lis.eq(i).find("a").css("background-image", imgUrls[i]);
	}
}
var size = 415;
var delay = 3000;
var speed = 1000;
var timeout;
$(function() {
	imgLoading();
	//처음시작은 
	delayStart();
	//브라우져가 visibilityState 가 변경될때 실행되는 이벤트
	document.addEventListener("visibilitychange", function() {
		var state = document.visibilityState;
		console.log(state);
		if (state == "hidden") {
			stop();
		} else if (state == "visible") {
			delayStart();
		}
	});

	//setInterval(next, 2000);

	$(".imgs").hover(function() {
		stop();
	}, function() {
		delayStart();
	});
});
function delayStart() {
	timeout = setTimeout(autoPlay, delay);
}

function autoPlay() {
	console.log("timeout 시작");
	next();
	timeout = setTimeout(autoPlay, delay);
}
function stop() {
	clearTimeout(timeout);
	console.log("timeout 해제");
}

//다음이미지를 왼쪽으로 이동: 호출시 1번만 실행
function next() {
	var imgs = $(".imgs");
	var first = $(".imgs li:first-child");
	var last = $(".imgs li:last-child");
	imgs.animate({ left: -size }, speed, function() {
		//애니메이트가 실행후에 처리하는 구간..
		last.after(first);//첫번째 이미지를 제일뒤로 이동
		imgs.css("left", 0);
	});
}