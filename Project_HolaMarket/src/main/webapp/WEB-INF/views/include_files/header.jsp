<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<style>
 .cat_area{
			
			height: 130px;
			/*background-color: pink;*/
		}
		.area{
			height: 50px;
			
		}

		#logo_area .logo #main_img{
			height: 130px;
			width:auto;
		}
		#search_box {
		    width: 500px;
		    box-sizing: border-box;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    font-size: 16px;
		    background-color: white;
		    background-position: 10px 10px; 
		    background-repeat: no-repeat;
		    padding: 12px 20px 12px 40px;
		    -webkit-transition: width 0.4s ease-in-out;
		    transition: width 0.4s ease-in-out;
		}
		#search_box:focus {
		    width: 90%;
	
		}	
		#search_form_wrap {
			margin-top: 40px;
		}
		#users_button_wrap{
			margin-top: 50px;
		}

		#catBtn{
			cursor: pointer;
			 height:50px; 
      		font-size: 21px;
      		color: #058BF4;
		}	
		.category{
	      background-color: white;
	      border: 1px solid #ebebeb; 
	      position: absolute;
	      display: none;
	   }
	   .category ul{
	      list-style: none;
	      padding: 0;
	   }
	   .category ul li{
	      padding: 10px 0;
	   }
	   .category > div{
	      border-right: 1px solid #ebebeb; 
	   }

	   .navbar{
			width: auto;
			height: 100px;
			float: right;
			padding-left: 0px;
			padding-right: 0px;
		}
		.navbar_menu li
		{
			display: inline-block;
		}
		.navbar_menu li a
		{
			display: block;
			color: #1e1e27;
			font-size: 14px;
			font-weight: 500;
			text-transform: uppercase;
			padding: 20px;
			-webkit-transition: color 0.3s ease;
			-moz-transition: color 0.3s ease;
			-ms-transition: color 0.3s ease;
			-o-transition: color 0.3s ease;
			transition: color 0.3s ease;
		}
		.navbar_menu li a:hover
		{
			color: #b5aec4;
		}
</style>
<body>
<div class="container">
  <div class="row">
  	<div id="logo_area" class="cat_area col-xs-3">
  		<a href="#" class="logo">
  			<img id="main_img" src="${pageContext.request.contextPath }/resources/images/logo01.png" alt="메인화면상단로고">
  		</a>
  	</div>
  	<div id="search_area" class="cat_area col-xs-7">
  		<div id="search_form_wrap">
			<form action="post">
				<input  id="search_box" class="src_input" type="text" placeholder="search..">
				<button class="src_btn btn-lg" type="submit">
					<span class="glyphicon glyphicon-search"></span>
				</button>
			</form>
		</div>	
  	</div>
  	<div id="users_area" class="cat_area col-xs-2">
  		<div id="users_button_wrap">
  		<button class="btn btn-default">로그인</button>
  		<button class="btn btn-default" style="margin-left:2px;">회원가입</button>
  		</div>
  	</div>
  	<div class="row">
  		<div class="col-xs-3">
         <div id="catBtn" style="padding-top: 10px;border:1px solid #D3D3D3;" >
             <strong style="margin-left: 12px;"> 카테고리</strong> <span id="catBtn-icon" style="margin-left: 120px;" class="glyphicon glyphicon-menu-down"></span>
              </div>
      	</div>
      	
  		<div id="nav_area" class="col-xs-6 area">
  			<nav class="navbar" style="margin-left: 80px;">
  				<ul class="navbar_menu" id="main-menu">
					<li><a href="#">올라마켓 굿즈</a></li>
					<li><a href="#">커뮤니티</a></li>
					<li><a href="#">이벤트/뉴스</a></li>
					<li><a href="#">헬프센터</a></li>
				</ul>
  			</nav>
  		</div>
  		<div id="sale_btn_area" class="col-xs-2 area">
  			<img src="${pageContext.request.contextPath }/resources/images/sale_btn.png" style=" height:50px; width: auto; margin-left:100px;" alt="판매하기" id="sellingBtn"/>
  		</div>
  	</div>




  </div>
</div>
<div class="container">
   <div class="row category">
         <div class="cat1 col-xs-2">
            <ul>
               <li>자동차</li>
               <li>자동차용품</li>
               <li>모터사이클 용품</li>
               <li>&nbsp;</li>
               <li>&nbsp;</li>
               <li>&nbsp;</li>
            </ul>
         </div>
         <div class="cat2 col-xs-2">
            <ul>
               <li>핸드메이드</li>
               <li>유아동, 완구</li>
               <li>뷰티</li>
               <li>여성의류</li>
               <li>남성의류</li>
               <li>스포츠 레저</li>
            </ul>
         </div>
         <div class="cat3 col-xs-2">
            <ul>
               <li>휴대폰, 태블릿</li>
               <li>컴퓨터, 주변기기</li>
               <li>카메라</li>
               <li>&nbsp;</li>
               <li>&nbsp;</li>
               <li>&nbsp;</li>
            </ul>
         </div>
         <div class="cat4 col-xs-2">
            <ul>
               <li>가구</li>
               <li>생활</li>
               <li>골동품, 희귀품</li>
               <li>여행, 숙박</li>
               <li>티켓</li>
               <li>&nbsp;</li>
            </ul>
         </div>
         <div class="cat5 col-xs-2">
            <ul>
               <li>도서</li>
               <li>문구, 스타굿즈</li>
               <li>피규어, 키덜트</li>
               <li>CD, DVD</li>
               <li>&nbsp;</li>
               <li>&nbsp;</li>
            </ul>
         </div>
         <div class="cat6 col-xs-2" style="border-right: none;">
            <ul>
               <li>반려동물</li>
               <li>부동산</li>
               <li>포장식품</li>
               <li>기타</li>
               <li>&nbsp;</li>
               <li>&nbsp;</li>
            </ul>
         </div>
   </div>  
</div>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script>
	// 카테고리 창 열린 여부
	var isOpen=true; 
	
	// 카테고리 창 클릭 시
   $("#catBtn").click(function(){
	   if(isOpen){ // show 상태이면 hide
		   $(".category").show();
		   $("#catBtn-icon").removeClass("glyphicon-menu-up").addClass("glyphicon-menu-down");
		   isOpen=false;
	   } else{ // hide 상태면 show
		   $(".category").hide();
	   		$("#catBtn-icon").removeClass("glyphicon-menu-down").addClass("glyphicon-menu-up");
		   isOpen=true;
	   }
   });
   
   // 판매하기 버튼 클릭
   $("#sellingBtn").click(function(){
	   location.href="item/sellingItems_form.do";
   })
</script>

