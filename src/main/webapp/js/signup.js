/**
 * 
 */
var emailRexp = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
var passRexp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@!%*#?&])[A-Za-z\d@!%*#?&]{8,}$/;
var nameRexp = /^[가-힣]{2,4}$/;
var msg;
var check = [false, false, false, false];
$(function() {
	$("#email").blur(emailBlured);
	$("#pass").blur(passBlured);
	$("#passCheck").blur(pwdCheck);
	$("#name").blur(nameBlured);
});

function emailBlured() {
	var in_email = $("#email").val();//input태그에 입력된 값(value)을 읽어올때
	if (emailRexp.test(in_email.trim())) {
		msg = "이메일 입력 완료!";
		$("#emsg").css("color", "green");
		check[0] = true;
	} else {
		msg = "* 이메일 형식으로 입력하여야합니다.";
		$("#emsg").css("color", "red");
		check[0] = false;
	}
	$("#emsg").html(msg);
	submitCheck();
}

function passBlured() {
	var in_pass = $("#pass").val();
	if (passRexp.test(in_pass)) {
		msg = "사용가능한 비밀번호입니다.";
		$("#pmsg").css("color", "green");
		check[1] = true;
	} else {
		msg = "* 최소 8자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자를 포함해야합니다.";
		$("#pmsg").css("color", "red");
		check[1] = false;
	}
	$("#pmsg").html(msg);
	submitCheck();
}

function pwdCheck() {
	var in_pass = $("#pass").val();
	var in_passCheck = $("#passCheck").val();
	if (passRexp.test(in_passCheck)) {
		if (in_pass != in_passCheck) {
			msg = "* 비밀번호를 확인하세요.";
			$("#pcmsg").css("color", "red");
			check[2] = false;
		} else {
			msg = "비밀번호 확인완료";
			$("#pcmsg").css("color", "green");
			check[2] = true;
		}
	} else {
		msg = "* 비밀번호를 확인하세요.";
		$("#pcmsg").css("color", "red");
	}
	$("#pcmsg").html(msg);
	submitCheck();
}

function nameBlured() {
	var in_name = $("#name").val();
	if (nameRexp.test(in_name)) {
		msg = "입력완료";
		$("#nmsg").css("color", "green");
		check[3] = true;
	} else {
		msg = "* 이름을 확인하세요.";
		$("#nmsg").css("color", "red");
		check[3] = false;
	}
	$("#nmsg").html(msg);
	submitCheck();
}

function submitCheck(){
	for(i=0; i<check.length; i++){
		if(check[i]==false){
			$("#btn-join").attr("disabled", true);
			return;
		}
	}
	$("#btn-join").attr("disabled", false);
}