<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<style>
	#main_A{
		width: 100%;
	}
</style>
<jsp:include page="include_files/loading.jsp"/>
</head>
<body>
<jsp:include page="include_files/header.jsp"/>
<img id="main_A" src="${pageContext.request.contextPath }/resources/images/main_A.png" />
<jsp:include page="include_files/footer.jsp"/>
</body>
</html>