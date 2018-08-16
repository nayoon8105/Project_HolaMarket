<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">
   <div id="header_row1" class="row">
      <div class="col-xs-2"><img id="logoimg" src="${pageContext.request.contextPath }/resources/images/hola_logo.png" alt="로고" /></div>
      <div class="col-xs-8 users_btn">
          <input id="serch_box" type="text" name="search" placeholder="Search..">
      </div>
      
   
      <div class="col-xs-1 users_btn" ><button class="btn btn-default ">로그인</button></div>
      <div class="col-xs-1 users_btn"><button class="btn btn-default ">회원가입</button></div>
   </div>
</div>
<div class="row2 line_1" ></div>
<div class="container">
   <div id="header_row3" class="row">
      <div class="col-xs-3" style="border-left:1px solid #D3D3D3; border-right:1px solid #D3D3D3;">
         <div id="catBtn" style="padding-top: 5px;"   >
             <strong>카테고리</strong> <span id="catBtn-icon" style="margin-left: 70px;" class="glyphicon glyphicon-menu-down"></span>
              </div>
      </div>
      <div class="col-xs-1"></div>
      <div class="nav_list col-xs-5" >
         <ul class="nav nav-tabs">
            <li><a href="">올라마켓 굿즈</a></li>
            <li><a href="">커뮤니티</a></li>
            <li><a href="">이벤트 / 뉴스</a></li>
            <li><a href="">헬프센터</a></li>
         </ul>
      </div>
      
      <div class="col-xs-3 ">
         <img src="${pageContext.request.contextPath }/resources/images/sale_btn.png" style=" height:50px; width: auto; margin-left:100px;" alt="판매하기" id="sellingBtn"/>
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
   $("#catBtn").click(function(){
      $(".category").slideToggle();
   });
   
   // 판매하기 버튼 클릭
   $("#sellingBtn").click(function(){
	   location.href="product/sellingItems_form.do";
   })
</script>