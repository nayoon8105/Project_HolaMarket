<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product/sellingItems_form.jsp</title>
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
		
			
			<!-- 판매 정보입력 Form. Action name은 product/selling.do -->
			<form action="product/selling.do" id="sellingInfo" method="post" class="form-horizontal" enctype="multipart/form-data">
				<div class="col-xs-8 col-xs-offset-2 selling_form">
					<!-- 다중 이미지 파일 -->
					<div class="row">
						<div class="selling_upload">
							<input type="file" name="file" id="file" multiple/>
							<c:forEach begin="1" end="8">
								<div class="col-xs-3 up_img_box">
									<img src="${pageContext.request.contextPath}/resources/images/ico_itemsubmit_photo.png"/>
								</div>
							</c:forEach>	
							<div class="up_img_label"></div>
							<!-- 칸 띄우기 위한 p 요소 -> visiblity:none -->	
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>	
						</div>
					</div>
					
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
	<div class="testarea">
		<img src=""/>
	</div>
</div>

<!-- footer -->
<jsp:include page="../include_files/footer.jsp"/>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script>
	
	$(document).ready(
	    function() {
	        // 태그에 onchange를 부여한다.
	        $('#file').change(function() {
	            addPreview($(this)); // preview form 추가하기
		});
	});
	 
	// 사진을 보여줄 div 리스트
	var prevList=$(".selling_upload img");
	// 사진 List 인덱스
	var prevIdx=0;
	
    // image preview 기능 구현
    function addPreview(input) {  // input = file object[]
        if (input[0].files) {
            //파일 선택이 여러개 였을시 대응
            console.log("file의 length : "+input[0].files.length);
            for (var fileIndex = 0 ; fileIndex < input[0].files.length ; fileIndex++) {
                var file = input[0].files[fileIndex];
                var reader = new FileReader();
 
                reader.onload = function (img) {
                    //div id="preview" 내에 동적코드추가.
                    //이 부분을 수정해서 이미지 링크 외 파일명, 사이즈 등의 부가설명을 할 수 있을 것이다.
                    console.log(img.target.result);
                    console.log("index : "+fileIndex);
                    $(".testarea>img").src="${pageContext.request.contextPath}/resources/images/img_itemsubmit_title.png";
                   // $(prevList[prevIdx]).src=img.target.result;
                };   
                reader.readAsDataURL(file);
                prevIdx++;
            }
        } else alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
    }
		 
</script>
</body>
</html>