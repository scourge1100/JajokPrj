<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
/*-------reset-----*/
body{
margin: 0px;
}
h1{
margin: 0px;
}
/*---------custom Styling-------*/
.hidden{
display: none;
}
/*--------component Style------*/
.button{
width: 24px;
height: 24px;
overflow: hidden;
text-indent: -999px;
border: 0px;
padding: 0px;
}
.hamburger-button{
background: url("/Jajok/resources/image/icon_config.png")no-repeat 0px 0px;
}
.photo{
width: 100px;
height: 100px;
border: 1px solid #000;
border-radius: 50px;
display: inline-block;
}

/*-------------style-----------*/

#header{
width: 100%;
height: 50px;
background: gray;
position: relative;
}
#header:after{
opacity: 0;
display: block;
position: fixed;
top: 0px;
left: 0px;
content: "";
background: #000;
width: 100%;
height: 0%;
transition: 500ms opacity ease;
}
#header #login-info{
position: fixed;
top: 0px;
background: #fff;
right: -80%;
width: 80%;
height: 100%;
z-index: 10;
transition: 500ms right ease;
}
#header.menu-show #login-info{
right: 0%;
}
#header.menu-show:after{
opacity: 0.5;
height: 100%;
}
#header>h1{
left: 10px;
top: 10px;
font-size: 20px;
display: inline-block;
position: absolute;
text-decoration: none;
}

#header-buttons{
position: absolute;
right: 0px;
top: 0px;
height: 100%;
line-height: 45px;
padding-right: 10px;
}

#main-menu a{
text-decoration: none;
font-size: 14px;
}
#member-menu{
text-align: center;
}
#profile{
text-align: center;
padding-bottom: 10px;
}


</style>
<header id="header">
	<h1><a href="">자족</a></h1>
	<section id="header-buttons">
	<h1 class="hidden">헤더버튼</h1>
	<input class="button hamburger-button" type="button" value="메뉴보기"/>
	</section>
	<aside id="login-info">
	<h1 class="hidden">로그인 정보</h1>
	<section id="profile">
		<h1 class="hidden">프로필</h1>
		<div>
			<div class="photo" style="background : url('/Jajok/resources/image/logo-xl.jpg'); background-size:cover;">
			</div>
			<div class="uid">
				<span>scourgeK</span>
			</div>
			<div class="auth-status">
				<a href="/Jajok/login">로그인</a>
			</div>
			<div class="auth-status">
				<a href="/Jajok/logout">로그아웃</a>
			</div>
			<div class="notice">
				<span>회원 공지:</span><a href="">3</a>
			</div>
		</div>
	</section>
	<section id="member-menu">
		<h1 class="hidden">메인메뉴</h1>
		<ul>
			<li><a href="">경로 검색</a></li>
			<li><a href="">나의 자전거길</a></li>
			<li><a href="">대회 정보</a></li>
			<li><a href="">모임 정보</a></li>
		</ul>
	</section>
	</aside>
</header>
<script>
window.addEventListener("load", function(){
	var header = document.querySelector("#header");
	var hamburgerBtn = document.querySelector(".hamburger-button");
	var loginInfo = document.querySelector("#login-info");
	var ul = loginInfo.querySelector(".menu-select");

	header.onclick = function(e){
		if(e.target == hamburgerBtn){
			header.classList.add("menu-show");
		}else{
			if(e.target !== loginInfo && e.target.nodeName != 'LI')
			header.classList.remove("menu-show");
		}
	}
})

</script>