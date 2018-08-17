<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product/sellingItems_form.jsp</title>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<jsp:include page="../include_files/loading.jsp"/>
</head>
<body>
<!-- header -->
<jsp:include page="../include_files/header.jsp"/>
<div class="container">
	<div class="selling_box">
		<div class="row">
			<div class="selling_upper">
				<img src="${pageContext.request.contextPath}/resources/images/img_itemsubmit_title.png"/>
			</div>
		</div>
	<div class="row selling_info_div">
		<div class="row">
			<div class="col-xs-8 col-xs-offset-2 selling_upload">
				<c:forEach begin="1" end="8">
					<div class="col-xs-3 up_img_box">
						<img src="${pageContext.request.contextPath}/resources/images/ico_itemsubmit_photo.png"/>
					</div>
				</c:forEach>	
				<div class="up_img_label"></div>	
			</div>
		</div>
		<div class="row">
			
			<!-- 판매 정보입력 Form. Action name은 product/selling.do -->
				<form action="product/selling.do" id="sellingInfo" method="get" class="form-horizontal">
				<div class="col-xs-8 col-xs-offset-2 selling_form">
					<!-- 제목 -->
					<div class="row" id="title_box">		
						<div class="col-xs-3">
							<label for=""><img src="${pageContext.request.contextPath}/resources/images/img_itemsubmit_itemtitle.png"/></label>
						</div>
						<div class="col-xs-9">
							<input type="text" name="title" id="title" class="form-control"/>
						</div>
					</div>
					<!-- 내용 -->
					<div class="row" id="contents_box">
						<div class="col-xs-3">
							<label for="contents"><img src="${pageContext.request.contextPath}/resources/images/img_itemsubmit_contents.png"/></label>
						</div>
						<div class="col-xs-9">
							<textarea name="contents" id="contents" cols="78" rows="10"></textarea>
						</div>
					</div>
					<!-- 카테고리 -->
					<div class="row" id="category_box">
						<div class="col-xs-3">
							<img src="${pageContext.request.contextPath}/resources/images/img_itemsubmit_category.png"/>
						</div>
						<div class="col-xs-2">
							<select name="cat" id="cat" class="catInfo">
								<!-- sellingItems_for.do 에서 카테고리리스트(catList)를 받아와 option 출력 -->
								<c:forEach var="tmp" items="catList">
									<option value=${tmp }>${tmp }</option>
								</c:forEach>
							</select>	
						</div>
							<div class="col-xs-2">
								<select name="lowcat" id="lowcat" class="catInfo">
									<!-- sellingItems_for.do 에서 하위카테고리리스트(lowcatList)를 받아와 option 출력 -->
									<c:forEach var="tmp" items="lowcatList">
										<option value=${tmp }>${tmp }</option>
									</c:forEach>
								</select>
							</div>
					</div>
					<!-- 판매주소 -->
					<div class="row" id="address_box">
						<div class="col-xs-3">
							<img src="${pageContext.request.contextPath}/resources/images/img_itemsubmit_location.png"/>
						</div>
						<div class="col-xs-3">
							<input type="text" name="address" id="address" class="form-control"/>
						</div>
					</div>
				</div>
				<div class="col-xs-8 col-xs-offset-2 selling_button">
					<div class="notice_box">
						<b>아이템 등록전에 꼭 확인하세요.</b>
						<p> 
							비정상적인 아이템을 등록하거나, 헬로포인트 사용금지 거래(상품권)에 속하는 아이템을 해당 카테고리가 아닌 
							잘못된 카테고리에 등록할 경우 그 정도에 따라 경고, 출금요청 취소, 지급된 헬로포인트 전액 소멸, 계정제재 등의 
							책임을 물을 수 있음을 알려드립니다.
						</p>
					</div>
					<div class="row">
						<div class="col-xs-6 col-xs-offset-3">
							<div class="button_box">
								<button class="btn" type="submit" id="register">등록</button>
								<button class="btn" type="reset" id="cancel">취소</button>
							</div>
						</div>
						
					</div>
				</div>	
				</form>
		</div>	
	</div>
	</div>
	
</div>
<!-- footer -->
<jsp:include page="../include_files/footer.jsp"/>
</body>
</html>