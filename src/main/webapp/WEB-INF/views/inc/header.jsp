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

/*-------------style-----------*/

#header{
width: 100%;
height: 50px;
background: gray;
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
#header #main-menu{
position: fixed;
top: 0px;
background: #fff;
right: -50%;
width: 50%;
height: 100%;
z-index: 10;
transition: 500ms right ease;
}
#header.menu-show #main-menu{
right: 0%;
}
#header.menu-show:after{
opacity: 0.5;
height: 100%;
}
#header h1{
padding-left: 20px;
padding-top: 10px;
font-size: 20px;}

#main-menu a{
text-decoration: none;
font-size: 14px;
}
#header-buttons{
position: absolute;
right: 0px;
top: 10px;
}



</style>
<header id="header">
	<h1>자족</h1>
	<section id="header-buttons">
	<h1 class="hidden">헤더버튼</h1>
	<input class="button hamburger-button" type="button" value="메뉴보기"/>
	</section>
	<section id="main-menu">
		<h1 class="hidden">메인메뉴</h1>
		<ul>
			<li><a href="">경로검색</a>
			<li><a href="">나의 자전거길</a>
			<li><a href="">대회 정보</a>
			<li><a href="">모임 정보</a>
		</ul>
	</section>
</header>
<script>
window.addEventListener("load", function(){
	var sectionMenu = document.querySelector("#main-menu");
	var sectionBtn = document.querySelector("#header-buttons");
	var menuBtn = sectionBtn.querySelector(".button.hamburger-button");

	menuBtn.onclick = function(e){
	
	 	sectionMenu.classList.add('menu-show');
	}
})

</script>